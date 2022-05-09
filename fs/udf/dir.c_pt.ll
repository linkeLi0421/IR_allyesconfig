; ModuleID = '/llk/IR_all_yes/fs/udf/dir.c_pt.bc'
source_filename = "../fs/udf/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udf_fileident_bh = type { ptr, ptr, i32, i32 }
%struct.fileIdentDesc = type <{ %struct.tag, i16, i8, i8, %struct.long_ad, i16, [0 x i8] }>
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.long_ad = type { i32, %struct.lb_addr, [6 x i8] }
%struct.lb_addr = type <{ i32, i16 }>
%struct.kernel_lb_addr = type { i32, i16 }
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.dir_context = type { ptr, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.58, %struct.list_head, %struct.list_head, %union.anon.59 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.16, ptr }
%union.anon.16 = type { i64 }
%struct.lockref = type { %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %struct.spinlock, i32 }
%union.anon.58 = type { %struct.list_head }
%union.anon.59 = type { %struct.hlist_node }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }

@udf_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udf_readdir, ptr null, ptr @udf_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @generic_file_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"udf_dir_operations\00", align 1
@___asan_gen_.3 = private constant [16 x i8] c"../fs/udf/dir.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 230, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 3566, i32 25 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 3571, i32 25 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @udf_dir_operations, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_readdir(ptr nocapture noundef %file, ptr noundef %ctx) #1 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %nf_pos = alloca i64, align 8
  %bha = alloca [16 x ptr], align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #5
  %2 = call ptr @memset(ptr %fibh, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #5
  %3 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nf_pos) #5
  %i_alloc_type.i = getelementptr i8, ptr %1, i32 -192
  %4 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i, label %if.then.i, label %entry.udf_ext0_offset.exit_crit_edge

entry.udf_ext0_offset.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_ext0_offset.exit

if.then.i:                                        ; preds = %entry
  %5 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.udf_ext0_offset.exit_crit_edge

if.then.i.udf_ext0_offset.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_ext0_offset.exit

if.else.i.i:                                      ; preds = %if.then.i
  %6 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i.i = icmp eq i32 %6, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %1, i32 -224
  %7 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i = add i32 %8, 216
  br label %udf_ext0_offset.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add8.i.i = add i32 %8, 176
  br label %udf_ext0_offset.exit

udf_ext0_offset.exit:                             ; preds = %if.else6.i.i, %if.then5.i.i, %if.then.i.udf_ext0_offset.exit_crit_edge, %entry.udf_ext0_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.udf_ext0_offset.exit_crit_edge ], [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %if.then.i.udf_ext0_offset.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %i_size, align 8
  %add = add i64 %10, %conv
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bha) #5
  %11 = call ptr @memset(ptr %bha, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #5
  %12 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %eloc, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #5
  %13 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %elen, align 4, !annotation !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #5
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %offset, align 8, !annotation !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #5
  %15 = call ptr @memset(ptr %epos, i32 0, i32 16)
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp = icmp eq i64 %19, 0
  br i1 %cmp, label %if.then, label %udf_ext0_offset.exit.if.end7_crit_edge

udf_ext0_offset.exit.if.end7_crit_edge:           ; preds = %udf_ext0_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then:                                          ; preds = %udf_ext0_offset.exit
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 8
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry.i, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_inode.i, align 8
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %i_ino.i, align 8
  %conv.i = zext i32 %27 to i64
  %call.i = tail call i32 %21(ptr noundef %ctx, ptr noundef nonnull @.str, i32 noundef 1, i64 noundef 0, i64 noundef %conv.i, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i362 = icmp eq i32 %call.i, 0
  br i1 %cmp.i362, label %if.end, label %if.then.cleanup250_crit_edge

if.then.cleanup250_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup250

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 1, ptr %pos, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %udf_ext0_offset.exit.if.end7_crit_edge
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos, align 8
  %sub = shl i64 %30, 2
  %shl = add i64 %sub, -4
  %31 = ptrtoint ptr %nf_pos to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %shl, ptr %nf_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %add)
  %cmp9.not = icmp slt i64 %shl, %add
  br i1 %cmp9.not, label %if.end12, label %if.end7.if.end241_crit_edge

if.end7.if.end241_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

if.end12:                                         ; preds = %if.end7
  %f_version = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 14
  %32 = ptrtoint ptr %f_version to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %f_version, align 8
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #5
  %call.i.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #5
  %shr.i.i363 = lshr i64 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i.i363, i64 %33)
  %cmp.i364 = icmp eq i64 %shr.i.i363, %33
  br i1 %cmp.i364, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %nf_pos, align 8
  store i64 0, ptr %nf_pos, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %emit_pos.0 = phi i64 [ %35, %if.then14 ], [ 0, %if.end12.if.end15_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3136, i32 noundef 254) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end15.out_crit_edge, label %if.end18

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end18:                                         ; preds = %if.end15
  %37 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %nf_pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %cmp19 = icmp eq i64 %38, 0
  br i1 %cmp19, label %if.then21, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  %39 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load.i366 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i367 = and i32 %bf.load.i366, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i367)
  %cmp.i368 = icmp eq i32 %bf.lshr.mask.i367, 1610612736
  br i1 %cmp.i368, label %if.then.i371, label %if.then21.udf_ext0_offset.exit380_crit_edge

if.then21.udf_ext0_offset.exit380_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_ext0_offset.exit380

if.then.i371:                                     ; preds = %if.then21
  %40 = and i32 %bf.load.i366, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i370 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i370, label %if.else.i.i374, label %if.then.i371.udf_ext0_offset.exit380_crit_edge

if.then.i371.udf_ext0_offset.exit380_crit_edge:   ; preds = %if.then.i371
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_ext0_offset.exit380

if.else.i.i374:                                   ; preds = %if.then.i371
  %41 = and i32 %bf.load.i366, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool4.not.i.i372 = icmp eq i32 %41, 0
  %i_lenEAttr7.i.i373 = getelementptr i8, ptr %1, i32 -224
  %42 = ptrtoint ptr %i_lenEAttr7.i.i373 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %i_lenEAttr7.i.i373, align 8
  br i1 %tobool4.not.i.i372, label %if.else6.i.i378, label %if.then5.i.i376

if.then5.i.i376:                                  ; preds = %if.else.i.i374
  call void @__sanitizer_cov_trace_pc() #7
  %add.i.i375 = add i32 %43, 216
  br label %udf_ext0_offset.exit380

if.else6.i.i378:                                  ; preds = %if.else.i.i374
  call void @__sanitizer_cov_trace_pc() #7
  %add8.i.i377 = add i32 %43, 176
  br label %udf_ext0_offset.exit380

udf_ext0_offset.exit380:                          ; preds = %if.else6.i.i378, %if.then5.i.i376, %if.then.i371.udf_ext0_offset.exit380_crit_edge, %if.then21.udf_ext0_offset.exit380_crit_edge
  %retval.0.i379 = phi i32 [ 0, %if.then21.udf_ext0_offset.exit380_crit_edge ], [ %add.i.i375, %if.then5.i.i376 ], [ %add8.i.i377, %if.else6.i.i378 ], [ 40, %if.then.i371.udf_ext0_offset.exit380_crit_edge ]
  %conv23 = zext i32 %retval.0.i379 to i64
  %44 = ptrtoint ptr %nf_pos to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv23, ptr %nf_pos, align 8
  br label %if.end24

if.end24:                                         ; preds = %udf_ext0_offset.exit380, %if.end18.if.end24_crit_edge
  %45 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %nf_pos, align 8
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 3
  %47 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_blocksize, align 16
  %sub25 = add i32 %48, -1
  %49 = trunc i64 %46 to i32
  %conv27 = and i32 %sub25, %49
  %eoffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %50 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv27, ptr %eoffset, align 4
  %soffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %51 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv27, ptr %soffset, align 4
  %52 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp28.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp28.not, label %if.end24.if.end131_crit_edge, label %if.then30

if.end24.if.end131_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then30:                                        ; preds = %if.end24
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 2
  %53 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %54 to i64
  %shr = ashr i64 %46, %sh_prom
  %call32 = call signext i8 @inode_bmap(ptr noundef %1, i64 noundef %shr, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call32)
  %cmp34.not = icmp eq i8 %call32, 0
  br i1 %cmp34.not, label %if.end37, label %if.then30.out_crit_edge

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end37:                                         ; preds = %if.then30
  %55 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %offset, align 8
  %conv38 = trunc i64 %56 to i32
  %57 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %eloc, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %59 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i381 = call i32 @udf_get_pblock(ptr noundef %17, i32 noundef %58, i16 noundef zeroext %60, i32 noundef %conv38) #5
  %61 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %offset, align 8
  %inc = add i64 %62, 1
  store i64 %inc, ptr %offset, align 8
  %63 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom42 = zext i8 %64 to i64
  %shl43 = shl i64 %inc, %sh_prom42
  %65 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %elen, align 4
  %conv44 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl43, i64 %conv44)
  %cmp45 = icmp ult i64 %shl43, %conv44
  br i1 %cmp45, label %if.then47, label %if.else67

if.then47:                                        ; preds = %if.end37
  %67 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load49 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load49)
  %cmp51 = icmp ult i32 %bf.load49, 536870912
  br i1 %cmp51, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %offset54 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %68 = ptrtoint ptr %offset54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset54, align 4
  %sub55 = add i32 %69, -8
  store i32 %sub55, ptr %offset54, align 4
  br label %if.end68

if.else56:                                        ; preds = %if.then47
  %bf.lshr50.mask = and i32 %bf.load49, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr50.mask)
  %cmp60 = icmp eq i32 %bf.lshr50.mask, 536870912
  br i1 %cmp60, label %if.then62, label %if.else56.if.end68_crit_edge

if.else56.if.end68_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then62:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %offset63 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %70 = ptrtoint ptr %offset63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset63, align 4
  %sub64 = add i32 %71, -16
  store i32 %sub64, ptr %offset63, align 4
  br label %if.end68

if.else67:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %offset, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.else67, %if.then62, %if.else56.if.end68_crit_edge, %if.then53
  %call69 = call ptr @udf_tread(ptr noundef %17, i32 noundef %call.i381) #5
  %ebh = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %73 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call69, ptr %ebh, align 4
  %74 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call69, ptr %fibh, align 4
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.out_crit_edge, label %if.end72

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end72:                                         ; preds = %if.end68
  %75 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %offset, align 8
  %77 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %s_blocksize_bits, align 4
  %conv74 = zext i8 %78 to i32
  %sub75 = add nsw i32 %conv74, -9
  %shr76 = lshr i32 16, %sub75
  %sub77 = add nsw i32 %shr76, -1
  %conv78 = sext i32 %sub77 to i64
  %and79 = and i64 %76, %conv78
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79)
  %tobool80.not = icmp eq i64 %and79, 0
  br i1 %tobool80.not, label %if.then81, label %if.end72.if.end131_crit_edge

if.end72.if.end131_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then81:                                        ; preds = %if.end72
  %79 = zext i32 %shr76 to i64
  %add87 = add i64 %76, %79
  %80 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %elen, align 4
  %shr90 = lshr i32 %81, %conv74
  %conv91 = zext i32 %shr90 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add87, i64 %conv91)
  %cmp92 = icmp ugt i64 %add87, %conv91
  %82 = trunc i64 %76 to i32
  %conv100 = sub i32 %shr90, %82
  %i.0 = select i1 %cmp92, i32 %conv100, i32 %shr76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp102475 = icmp sgt i32 %i.0, 0
  br i1 %cmp102475, label %if.then81.for.body_crit_edge, label %if.then81.if.end131_crit_edge

if.then81.if.end131_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then81.for.body_crit_edge:                     ; preds = %if.then81
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then81.for.body_crit_edge
  %num.0477 = phi i32 [ %num.1, %for.inc.for.body_crit_edge ], [ 0, %if.then81.for.body_crit_edge ]
  %i.1476 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %i.0, %if.then81.for.body_crit_edge ]
  %83 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %offset, align 8
  %85 = trunc i64 %84 to i32
  %conv106 = add i32 %i.1476, %85
  %86 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %eloc, align 8
  %88 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i383 = call i32 @udf_get_pblock(ptr noundef %17, i32 noundef %87, i16 noundef zeroext %89, i32 noundef %conv106) #5
  %call108 = call ptr @udf_tgetblk(ptr noundef %17, i32 noundef %call.i383) #5
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %90 = ptrtoint ptr %call108 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %call108, align 4
  %and1.i.i = and i32 %91, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool111.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %land.lhs.true.if.then.i384_crit_edge

land.lhs.true.if.then.i384_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i384

land.lhs.true112:                                 ; preds = %land.lhs.true
  %92 = ptrtoint ptr %call108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %call108, align 4
  %94 = and i32 %93, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool114.not = icmp eq i32 %94, 0
  br i1 %tobool114.not, label %if.then115, label %land.lhs.true112.if.then.i384_crit_edge

land.lhs.true112.if.then.i384_crit_edge:          ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i384

if.then115:                                       ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #7
  %inc116 = add i32 %num.0477, 1
  %arrayidx = getelementptr [16 x ptr], ptr %bha, i32 0, i32 %num.0477
  %95 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call108, ptr %arrayidx, align 4
  br label %for.inc

if.then.i384:                                     ; preds = %land.lhs.true112.if.then.i384_crit_edge, %land.lhs.true.if.then.i384_crit_edge
  call void @__brelse(ptr noundef nonnull %call108) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then.i384, %if.then115, %for.body.for.inc_crit_edge
  %num.1 = phi i32 [ %inc116, %if.then115 ], [ %num.0477, %for.body.for.inc_crit_edge ], [ %num.0477, %if.then.i384 ]
  %dec = add nsw i32 %i.1476, -1
  %cmp102 = icmp sgt i32 %i.1476, 1
  br i1 %cmp102, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %tobool119.not = icmp eq i32 %num.1, 0
  br i1 %tobool119.not, label %for.end.if.end131_crit_edge, label %if.then120

for.end.if.end131_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then120:                                       ; preds = %for.end
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef %num.1, ptr noundef nonnull %bha) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.1)
  %cmp122478 = icmp sgt i32 %num.1, 0
  br i1 %cmp122478, label %if.then120.for.body124_crit_edge, label %if.then120.if.end131_crit_edge

if.then120.if.end131_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.then120.for.body124_crit_edge:                 ; preds = %if.then120
  br label %for.body124

for.body124:                                      ; preds = %brelse.exit387.for.body124_crit_edge, %if.then120.for.body124_crit_edge
  %i.2479 = phi i32 [ %inc127, %brelse.exit387.for.body124_crit_edge ], [ 0, %if.then120.for.body124_crit_edge ]
  %arrayidx125 = getelementptr [16 x ptr], ptr %bha, i32 0, i32 %i.2479
  %96 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx125, align 4
  %tobool.not.i385 = icmp eq ptr %97, null
  br i1 %tobool.not.i385, label %for.body124.brelse.exit387_crit_edge, label %if.then.i386

for.body124.brelse.exit387_crit_edge:             ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit387

if.then.i386:                                     ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %97) #5
  br label %brelse.exit387

brelse.exit387:                                   ; preds = %if.then.i386, %for.body124.brelse.exit387_crit_edge
  %inc127 = add nuw nsw i32 %i.2479, 1
  %exitcond.not = icmp eq i32 %inc127, %num.1
  br i1 %exitcond.not, label %brelse.exit387.if.end131_crit_edge, label %brelse.exit387.for.body124_crit_edge

brelse.exit387.for.body124_crit_edge:             ; preds = %brelse.exit387
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body124

brelse.exit387.if.end131_crit_edge:               ; preds = %brelse.exit387
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

if.end131:                                        ; preds = %brelse.exit387.if.end131_crit_edge, %if.then120.if.end131_crit_edge, %for.end.if.end131_crit_edge, %if.then81.if.end131_crit_edge, %if.end72.if.end131_crit_edge, %if.end24.if.end131_crit_edge
  %98 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %nf_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %99, i64 %add)
  %cmp132480 = icmp slt i64 %99, %add
  br i1 %cmp132480, label %while.body.lr.ph, label %if.end131.out.thread_crit_edge

if.end131.out.thread_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

while.body.lr.ph:                                 ; preds = %if.end131
  %lengthFileIdent = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %ebh150 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %lengthOfImpUse = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 33
  %dentry.i401 = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup230.while.body_crit_edge, %while.body.lr.ph
  %100 = phi i64 [ %99, %while.body.lr.ph ], [ %164, %cleanup230.while.body_crit_edge ]
  %pos_valid.1.off0482 = phi i1 [ %cmp.i364, %while.body.lr.ph ], [ %pos_valid.2.off0428, %cleanup230.while.body_crit_edge ]
  %copy_name.0481 = phi ptr [ null, %while.body.lr.ph ], [ %copy_name.5, %cleanup230.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %100, i64 %emit_pos.0)
  %cmp134.not = icmp slt i64 %100, %emit_pos.0
  br i1 %cmp134.not, label %if.end140, label %if.end140.thread

if.end140:                                        ; preds = %while.body
  %call141 = call ptr @udf_fileident_read(ptr noundef %1, ptr noundef nonnull %nf_pos, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #5
  %tobool142.not = icmp eq ptr %call141, null
  br i1 %tobool142.not, label %cleanup230.thread, label %if.end140.cleanup230_crit_edge

if.end140.cleanup230_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

if.end140.thread:                                 ; preds = %while.body
  %shr137 = ashr i64 %100, 2
  %add138 = add nsw i64 %shr137, 1
  %101 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %add138, ptr %pos, align 8
  %call141425 = call ptr @udf_fileident_read(ptr noundef %1, ptr noundef nonnull %nf_pos, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #5
  %tobool142.not426 = icmp eq ptr %call141425, null
  br i1 %tobool142.not426, label %if.end140.thread.if.then238_crit_edge, label %if.end148

if.end140.thread.if.then238_crit_edge:            ; preds = %if.end140.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

if.end148:                                        ; preds = %if.end140.thread
  %102 = ptrtoint ptr %lengthFileIdent to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %lengthFileIdent, align 1
  %104 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fibh, align 4
  %106 = ptrtoint ptr %ebh150 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ebh150, align 4
  %cmp151 = icmp eq ptr %105, %107
  br i1 %cmp151, label %if.then153, label %if.else155

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i388 = getelementptr %struct.fileIdentDesc, ptr %call141425, i32 1
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %call141425, i32 0, i32 5
  %108 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %108, i32 2)
  %109 = load i16, ptr %lengthOfImpUse.i, align 1
  %110 = call i16 @llvm.bswap.i16(i16 %109) #5
  %conv.i389 = zext i16 %110 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i388, i32 %conv.i389
  br label %if.end187

if.else155:                                       ; preds = %if.end148
  %111 = ptrtoint ptr %lengthOfImpUse to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %lengthOfImpUse, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112)
  %114 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %soffset, align 4
  %add157 = add i32 %115, 38
  %conv158 = zext i16 %113 to i32
  %add159 = add i32 %add157, %conv158
  %conv160 = zext i8 %103 to i32
  %add161 = add i32 %add159, %conv160
  call void @__sanitizer_cov_trace_cmp4(i32 %add161, i32 %conv160)
  %cmp163.not = icmp slt i32 %add161, %conv160
  br i1 %cmp163.not, label %if.else169, label %if.then165

if.then165:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #7
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %107, i32 0, i32 5
  %116 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %b_data, align 4
  %add.ptr168 = getelementptr i8, ptr %117, i32 %add159
  br label %if.end187

if.else169:                                       ; preds = %if.else155
  %tobool170.not = icmp eq ptr %copy_name.0481, null
  br i1 %tobool170.not, label %if.then171, label %if.else169.if.end176_crit_edge

if.else169.if.end176_crit_edge:                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

if.then171:                                       ; preds = %if.else169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %118 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i361 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %118, i32 noundef 3136, i32 noundef 254) #8
  %tobool173.not = icmp eq ptr %call7.i361, null
  br i1 %tobool173.not, label %if.then171.if.then238_crit_edge, label %if.then171.if.end176_crit_edge

if.then171.if.end176_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

if.then171.if.then238_crit_edge:                  ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

if.end176:                                        ; preds = %if.then171.if.end176_crit_edge, %if.else169.if.end176_crit_edge
  %copy_name.1 = phi ptr [ %copy_name.0481, %if.else169.if.end176_crit_edge ], [ %call7.i361, %if.then171.if.end176_crit_edge ]
  %add.ptr.i390 = getelementptr %struct.fileIdentDesc, ptr %call141425, i32 1
  %lengthOfImpUse.i391 = getelementptr inbounds %struct.fileIdentDesc, ptr %call141425, i32 0, i32 5
  %119 = ptrtoint ptr %lengthOfImpUse.i391 to i32
  call void @__asan_loadN_noabort(i32 %119, i32 2)
  %120 = load i16, ptr %lengthOfImpUse.i391, align 1
  %121 = call i16 @llvm.bswap.i16(i16 %120) #5
  %conv.i392 = zext i16 %121 to i32
  %add.ptr1.i393 = getelementptr i8, ptr %add.ptr.i390, i32 %conv.i392
  %sub179 = sub i32 0, %add159
  %122 = call ptr @memcpy(ptr %copy_name.1, ptr %add.ptr1.i393, i32 %sub179)
  %add.ptr181 = getelementptr i8, ptr %copy_name.1, i32 %conv160
  %idx.neg182 = sub i32 0, %add161
  %add.ptr183 = getelementptr i8, ptr %add.ptr181, i32 %idx.neg182
  %123 = ptrtoint ptr %ebh150 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ebh150, align 4
  %b_data185 = getelementptr inbounds %struct.buffer_head, ptr %124, i32 0, i32 5
  %125 = ptrtoint ptr %b_data185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %b_data185, align 4
  %127 = call ptr @memcpy(ptr %add.ptr183, ptr %126, i32 %add161)
  br label %if.end187

if.end187:                                        ; preds = %if.end176, %if.then165, %if.then153
  %copy_name.4 = phi ptr [ %copy_name.0481, %if.then153 ], [ %copy_name.1, %if.end176 ], [ %copy_name.0481, %if.then165 ]
  %nameptr.3 = phi ptr [ %add.ptr1.i, %if.then153 ], [ %copy_name.1, %if.end176 ], [ %add.ptr168, %if.then165 ]
  %128 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %fileCharacteristics, align 1
  %130 = and i8 %129, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp190.not = icmp eq i8 %130, 0
  br i1 %cmp190.not, label %if.end187.if.end197_crit_edge, label %if.then192

if.end187.if.end197_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then192:                                       ; preds = %if.end187
  %131 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %132, i32 0, i32 17
  %133 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %s_flags.i, align 4
  %135 = and i32 %134, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool194.not = icmp eq i32 %135, 0
  br i1 %tobool194.not, label %if.then192.cleanup230_crit_edge, label %if.then192.if.end197_crit_edge

if.then192.if.end197_crit_edge:                   ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end197

if.then192.cleanup230_crit_edge:                  ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

if.end197:                                        ; preds = %if.then192.if.end197_crit_edge, %if.end187.if.end197_crit_edge
  %136 = and i8 %129, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %cmp201.not = icmp eq i8 %136, 0
  br i1 %cmp201.not, label %if.end197.if.end208_crit_edge, label %if.then203

if.end197.if.end208_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then203:                                       ; preds = %if.end197
  %137 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i397 = getelementptr inbounds %struct.udf_sb_info, ptr %138, i32 0, i32 17
  %139 = ptrtoint ptr %s_flags.i397 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %s_flags.i397, align 4
  %141 = and i32 %140, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool205.not = icmp eq i32 %141, 0
  br i1 %tobool205.not, label %if.then203.cleanup230_crit_edge, label %if.then203.if.end208_crit_edge

if.then203.if.end208_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end208

if.then203.cleanup230_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

if.end208:                                        ; preds = %if.then203.if.end208_crit_edge, %if.end197.if.end208_crit_edge
  %142 = and i8 %129, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool212.not = icmp eq i8 %142, 0
  br i1 %tobool212.not, label %if.end217, label %if.then213

if.then213:                                       ; preds = %if.end208
  %143 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ctx, align 8
  %145 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %pos, align 8
  %147 = ptrtoint ptr %dentry.i401 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dentry.i401, align 4
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %148, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #5
  %d_parent.i.i = getelementptr inbounds %struct.dentry, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %d_parent.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %d_parent.i.i, align 8
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %i_ino.i.i, align 8
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #5
  %conv.i402 = zext i32 %154 to i64
  %call1.i = call i32 %144(ptr noundef %ctx, ptr noundef nonnull @.str.1, i32 noundef 2, i64 noundef %146, i64 noundef %conv.i402, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i403 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i403, label %if.then213.cleanup230_crit_edge, label %if.then213.if.then238_crit_edge

if.then213.if.then238_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

if.then213.cleanup230_crit_edge:                  ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

if.end217:                                        ; preds = %if.end208
  %conv218 = zext i8 %103 to i32
  %call219 = call i32 @udf_get_filename(ptr noundef %17, ptr noundef %nameptr.3, i32 noundef %conv218, ptr noundef nonnull %call7.i, i32 noundef 254) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %if.end217.cleanup230_crit_edge, label %if.end223

if.end217.cleanup230_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

if.end223:                                        ; preds = %if.end217
  %155 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %155, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %156 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %156, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %157 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #5
  %158 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #5
  %call.i405 = call i32 @udf_get_pblock(ptr noundef %17, i32 noundef %157, i16 noundef zeroext %158, i32 noundef 0) #5
  %conv226 = zext i32 %call.i405 to i64
  %159 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ctx, align 8
  %161 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %pos, align 8
  %call.i407 = call i32 %160(ptr noundef %ctx, ptr noundef nonnull %call7.i, i32 noundef %call219, i64 noundef %162, i64 noundef %conv226, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i407)
  %cmp.i408 = icmp eq i32 %call.i407, 0
  br i1 %cmp.i408, label %if.end223.cleanup230_crit_edge, label %if.end223.if.then238_crit_edge

if.end223.if.then238_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

if.end223.cleanup230_crit_edge:                   ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup230

cleanup230.thread:                                ; preds = %if.end140
  br i1 %pos_valid.1.off0482, label %cleanup230.thread.if.then238_crit_edge, label %cleanup230.thread.if.end241_crit_edge

cleanup230.thread.if.end241_crit_edge:            ; preds = %cleanup230.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

cleanup230.thread.if.then238_crit_edge:           ; preds = %cleanup230.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

cleanup230:                                       ; preds = %if.end223.cleanup230_crit_edge, %if.end217.cleanup230_crit_edge, %if.then213.cleanup230_crit_edge, %if.then203.cleanup230_crit_edge, %if.then192.cleanup230_crit_edge, %if.end140.cleanup230_crit_edge
  %pos_valid.2.off0428 = phi i1 [ true, %if.then192.cleanup230_crit_edge ], [ true, %if.then203.cleanup230_crit_edge ], [ true, %if.end217.cleanup230_crit_edge ], [ %pos_valid.1.off0482, %if.end140.cleanup230_crit_edge ], [ true, %if.then213.cleanup230_crit_edge ], [ true, %if.end223.cleanup230_crit_edge ]
  %copy_name.5 = phi ptr [ %copy_name.4, %if.then192.cleanup230_crit_edge ], [ %copy_name.4, %if.then203.cleanup230_crit_edge ], [ %copy_name.4, %if.end217.cleanup230_crit_edge ], [ %copy_name.0481, %if.end140.cleanup230_crit_edge ], [ %copy_name.4, %if.then213.cleanup230_crit_edge ], [ %copy_name.4, %if.end223.cleanup230_crit_edge ]
  %163 = ptrtoint ptr %nf_pos to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %nf_pos, align 8
  %cmp132 = icmp slt i64 %164, %add
  br i1 %cmp132, label %cleanup230.while.body_crit_edge, label %cleanup230.out.thread_crit_edge

cleanup230.out.thread_crit_edge:                  ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

cleanup230.while.body_crit_edge:                  ; preds = %cleanup230
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

out.thread:                                       ; preds = %cleanup230.out.thread_crit_edge, %if.end131.out.thread_crit_edge
  %copy_name.0.lcssa = phi ptr [ null, %if.end131.out.thread_crit_edge ], [ %copy_name.5, %cleanup230.out.thread_crit_edge ]
  %.lcssa = phi i64 [ %99, %if.end131.out.thread_crit_edge ], [ %164, %cleanup230.out.thread_crit_edge ]
  %shr234 = ashr i64 %.lcssa, 2
  %add235 = add nsw i64 %shr234, 1
  %165 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %add235, ptr %pos, align 8
  br label %if.then238

out:                                              ; preds = %if.end68.out_crit_edge, %if.then30.out_crit_edge, %if.end15.out_crit_edge
  %ret.4 = phi i32 [ -12, %if.end15.out_crit_edge ], [ -2, %if.then30.out_crit_edge ], [ -5, %if.end68.out_crit_edge ]
  br i1 %cmp.i364, label %out.if.then238_crit_edge, label %out.if.end241_crit_edge

out.if.end241_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

out.if.then238_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then238

if.then238:                                       ; preds = %out.if.then238_crit_edge, %out.thread, %cleanup230.thread.if.then238_crit_edge, %if.end223.if.then238_crit_edge, %if.then213.if.then238_crit_edge, %if.then171.if.then238_crit_edge, %if.end140.thread.if.then238_crit_edge
  %ret.4458 = phi i32 [ 0, %out.thread ], [ %ret.4, %out.if.then238_crit_edge ], [ 0, %cleanup230.thread.if.then238_crit_edge ], [ -12, %if.then171.if.then238_crit_edge ], [ 0, %if.end140.thread.if.then238_crit_edge ], [ 0, %if.end223.if.then238_crit_edge ], [ 0, %if.then213.if.then238_crit_edge ]
  %copy_name.6456 = phi ptr [ %copy_name.0.lcssa, %out.thread ], [ null, %out.if.then238_crit_edge ], [ %copy_name.0481, %cleanup230.thread.if.then238_crit_edge ], [ null, %if.then171.if.then238_crit_edge ], [ %copy_name.0481, %if.end140.thread.if.then238_crit_edge ], [ %copy_name.4, %if.end223.if.then238_crit_edge ], [ %copy_name.4, %if.then213.if.then238_crit_edge ]
  %call.i.i.i.i409 = call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #5
  %call.i.i15.i = call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.then238
  %cur.0.i = phi i64 [ %call.i.i15.i, %if.then238 ], [ %call.i.i, %if.end.i.for.cond.i_crit_edge ]
  %and.i = and i64 %cur.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i410 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i410, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !16
  br label %inode_query_iversion.exit

if.end.i:                                         ; preds = %for.cond.i
  %or.i = or i64 %cur.0.i, 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #5
  %call.i.i = call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i, i64 noundef %or.i) #5
  %cmp.i411 = icmp eq i64 %call.i.i, %cur.0.i
  br i1 %cmp.i411, label %if.end.i.inode_query_iversion.exit_crit_edge, label %if.end.i.for.cond.i_crit_edge, !prof !17

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end.i.inode_query_iversion.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %inode_query_iversion.exit

inode_query_iversion.exit:                        ; preds = %if.end.i.inode_query_iversion.exit_crit_edge, %do.end.i
  %shr.i = lshr i64 %cur.0.i, 1
  %166 = ptrtoint ptr %f_version to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %shr.i, ptr %f_version, align 8
  br label %if.end241

if.end241:                                        ; preds = %inode_query_iversion.exit, %out.if.end241_crit_edge, %cleanup230.thread.if.end241_crit_edge, %if.end7.if.end241_crit_edge
  %ret.4457 = phi i32 [ %ret.4458, %inode_query_iversion.exit ], [ %ret.4, %out.if.end241_crit_edge ], [ 0, %cleanup230.thread.if.end241_crit_edge ], [ 0, %if.end7.if.end241_crit_edge ]
  %copy_name.6455 = phi ptr [ %copy_name.6456, %inode_query_iversion.exit ], [ null, %out.if.end241_crit_edge ], [ %copy_name.0481, %cleanup230.thread.if.end241_crit_edge ], [ null, %if.end7.if.end241_crit_edge ]
  %fname.0453 = phi ptr [ %call7.i, %inode_query_iversion.exit ], [ %call7.i, %out.if.end241_crit_edge ], [ %call7.i, %cleanup230.thread.if.end241_crit_edge ], [ null, %if.end7.if.end241_crit_edge ]
  %167 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %fibh, align 4
  %ebh243 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %169 = ptrtoint ptr %ebh243 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ebh243, align 4
  %cmp244.not = icmp eq ptr %168, %170
  br i1 %cmp244.not, label %if.end241.if.end248_crit_edge, label %if.then246

if.end241.if.end248_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248

if.then246:                                       ; preds = %if.end241
  %tobool.not.i412 = icmp eq ptr %170, null
  br i1 %tobool.not.i412, label %if.then246.if.end248thread-pre-split_crit_edge, label %if.then.i413

if.then246.if.end248thread-pre-split_crit_edge:   ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end248thread-pre-split

if.then.i413:                                     ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %170) #5
  br label %if.end248thread-pre-split

if.end248thread-pre-split:                        ; preds = %if.then.i413, %if.then246.if.end248thread-pre-split_crit_edge
  %171 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end248

if.end248:                                        ; preds = %if.end248thread-pre-split, %if.end241.if.end248_crit_edge
  %172 = phi ptr [ %.pr, %if.end248thread-pre-split ], [ %168, %if.end241.if.end248_crit_edge ]
  %tobool.not.i416 = icmp eq ptr %172, null
  br i1 %tobool.not.i416, label %if.end248.brelse.exit419_crit_edge, label %if.then.i417

if.end248.brelse.exit419_crit_edge:               ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit419

if.then.i417:                                     ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %172) #5
  br label %brelse.exit419

brelse.exit419:                                   ; preds = %if.then.i417, %if.end248.brelse.exit419_crit_edge
  %173 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %epos, align 4
  %tobool.not.i420 = icmp eq ptr %174, null
  br i1 %tobool.not.i420, label %brelse.exit419.brelse.exit423_crit_edge, label %if.then.i421

brelse.exit419.brelse.exit423_crit_edge:          ; preds = %brelse.exit419
  call void @__sanitizer_cov_trace_pc() #7
  br label %brelse.exit423

if.then.i421:                                     ; preds = %brelse.exit419
  call void @__sanitizer_cov_trace_pc() #7
  call void @__brelse(ptr noundef nonnull %174) #5
  br label %brelse.exit423

brelse.exit423:                                   ; preds = %if.then.i421, %brelse.exit419.brelse.exit423_crit_edge
  call void @kfree(ptr noundef %fname.0453) #5
  call void @kfree(ptr noundef %copy_name.6455) #5
  br label %cleanup250

cleanup250:                                       ; preds = %brelse.exit423, %if.then.cleanup250_crit_edge
  %retval.0 = phi i32 [ %ret.4457, %brelse.exit423 ], [ 0, %if.then.cleanup250_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bha) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nf_pos) #5
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_ioctl(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @inode_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tgetblk(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ll_rw_block(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_fileident_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @udf_dir_operations, !1, !"udf_dir_operations", i1 false, i1 false}
!1 = !{!"../fs/udf/dir.c", i32 230, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"auto-init"}
!16 = !{i64 2154352752}
!17 = !{!"branch_weights", i32 2000, i32 1}
