; ModuleID = '/llk/IR_all_yes/fs/udf/ialloc.c_pt.bc'
source_filename = "../fs/udf/ialloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type opaque
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.udf_sb_info = type { ptr, [32 x i8], i16, i16, i32, i32, i32, ptr, i16, %struct.kgid_t, %struct.kuid_t, i16, i16, %struct.rwlock_t, %struct.timespec64, i16, i16, i32, ptr, ptr, %struct.mutex, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.logicalVolIntegrityDescImpUse = type <{ %struct.regid, i32, i32, i16, i16, i16, [0 x i8] }>
%struct.regid = type { i8, [23 x i8], [8 x i8] }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.logicalVolIntegrityDesc = type { %struct.tag, %struct.timestamp, i32, %struct.extent_ad, [32 x i8], i32, i32, [0 x i32] }
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.timestamp = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.extent_ad = type { i32, i32 }

@init_user_ns = external dso_local global %struct.user_namespace, align 1
@udf_updated_lvid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fs/udf/udfdecl.h\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [19 x i8] c"../fs/udf/ialloc.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"../fs/udf/udfdecl.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 114, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udf_free_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %call1 = tail call ptr @udf_sb_lvidiu(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 20
  tail call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #5
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %6)
  %cmp = icmp eq i16 %6, 16384
  %numFiles = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %call1, i32 0, i32 1
  %numDirs = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %call1, i32 0, i32 2
  %numFiles.sink17 = select i1 %cmp, ptr %numDirs, ptr %numFiles
  %7 = ptrtoint ptr %numFiles.sink17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %numFiles.sink17, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %add.i15 = add i32 %9, -1
  %10 = tail call i32 @llvm.bswap.i32(i32 %add.i15) #5
  %11 = ptrtoint ptr %numFiles.sink17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %numFiles.sink17, align 4
  %12 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !12

do.body4.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

do.end9.i:                                        ; preds = %if.then
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %integrityType.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %integrityType.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %integrityType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %do.end9.i.udf_updated_lvid.exit_crit_edge, label %land.rhs.i

do.end9.i.udf_updated_lvid.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_updated_lvid.exit

land.rhs.i:                                       ; preds = %do.end9.i
  %.b62.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.udf_updated_lvid.exit_crit_edge, label %if.then24.i, !prof !14

land.rhs.i.udf_updated_lvid.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_updated_lvid.exit

if.then24.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #5
  br label %udf_updated_lvid.exit

udf_updated_lvid.exit:                            ; preds = %if.then24.i, %land.rhs.i.udf_updated_lvid.exit_crit_edge, %do.end9.i.udf_updated_lvid.exit_crit_edge
  %20 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i = getelementptr inbounds %struct.udf_sb_info, ptr %21, i32 0, i32 21
  %22 = ptrtoint ptr %s_lvid_dirty.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %s_lvid_dirty.i, align 4
  tail call void @mutex_unlock(ptr noundef %s_alloc_mutex) #5
  br label %if.end5

if.end5:                                          ; preds = %udf_updated_lvid.exit, %entry.if.end5_crit_edge
  %i_location = getelementptr i8, ptr %inode, i32 -240
  tail call void @udf_free_blocks(ptr noundef %1, ptr noundef null, ptr noundef %i_location, i32 noundef 0, i32 noundef 1) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_sb_lvidiu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_free_blocks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %i_location = getelementptr i8, ptr %dir, i32 -240
  %4 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i_location, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #5
  %call3 = tail call ptr @new_inode(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i178 = getelementptr i8, ptr %call3, i32 -256
  %i_sb6 = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 8
  %6 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_sb6, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %s_flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not = icmp eq i32 %and1.i.i, 0
  %i_efe16 = getelementptr i8, ptr %call3, i32 -192
  %12 = ptrtoint ptr %i_efe16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load17 = load i32, ptr %i_efe16, align 8
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  %bf.set = or i32 %bf.load17, 268435456
  %13 = ptrtoint ptr %i_efe16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %bf.set, ptr %i_efe16, align 8
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %15)
  %cmp = icmp ult i16 %15, 512
  br i1 %cmp, label %if.then11, label %if.then9.if.end8.i.i_crit_edge

if.then9.if.end8.i.i_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i.i

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 512, ptr %s_udfrev, align 2
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then11, %if.then9.if.end8.i.i_crit_edge
  %17 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb6, align 4
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear18 = and i32 %bf.load17, -268435457
  %19 = ptrtoint ptr %i_efe16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.clear18, ptr %i_efe16, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end8.i.i
  %.sink = phi ptr [ %7, %if.else ], [ %18, %if.end8.i.i ]
  %.sink227 = phi i32 [ -176, %if.else ], [ -216, %if.end8.i.i ]
  %s_blocksize21 = getelementptr inbounds %struct.super_block, ptr %.sink, i32 0, i32 3
  %20 = ptrtoint ptr %s_blocksize21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s_blocksize21, align 16
  %sub22 = add i32 %21, %.sink227
  %call9.i.i204 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub22, i32 noundef 3520) #8
  %i_data24 = getelementptr i8, ptr %call3, i32 -188
  %22 = ptrtoint ptr %i_data24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i.i204, ptr %i_data24, align 4
  %tobool27.not = icmp eq ptr %call9.i.i204, null
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @make_bad_inode(ptr noundef nonnull %call3) #5
  tail call void @iput(ptr noundef nonnull %call3) #5
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -28, ptr %err, align 4
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %partitionReferenceNum = getelementptr i8, ptr %dir, i32 -236
  %26 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %partitionReferenceNum, align 4
  %call33 = call i32 @udf_new_block(ptr noundef %25, ptr noundef null, i16 noundef zeroext %27, i32 noundef %5, ptr noundef nonnull %err) #5
  %28 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool34.not = icmp eq i32 %29, 0
  br i1 %tobool34.not, label %if.end37, label %if.then35

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @make_bad_inode(ptr noundef nonnull %call3) #5
  call void @iput(ptr noundef nonnull %call3) #5
  %30 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %err, align 4
  %32 = inttoptr i32 %31 to ptr
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call38 = call ptr @udf_sb_lvidiu(ptr noundef %1) #5
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.if.end51_crit_edge, label %if.then40

if.end37.if.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then40:                                        ; preds = %if.end37
  %call41 = call i64 @lvid_get_unique_id(ptr noundef %1) #5
  %i_unique = getelementptr i8, ptr %call3, i32 -232
  %33 = ptrtoint ptr %i_unique to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call41, ptr %i_unique, align 8
  %conv43 = trunc i64 %call41 to i32
  %i_generation = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 49
  %34 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv43, ptr %i_generation, align 8
  %s_alloc_mutex = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 20
  call void @mutex_lock_nested(ptr noundef %s_alloc_mutex, i32 noundef 0) #5
  %35 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %35)
  %cmp45 = icmp eq i16 %35, 16384
  %numFiles = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %call38, i32 0, i32 1
  %numDirs = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, ptr %call38, i32 0, i32 2
  %numFiles.sink226 = select i1 %cmp45, ptr %numDirs, ptr %numFiles
  %36 = ptrtoint ptr %numFiles.sink226 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %numFiles.sink226, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #5
  %add.i208 = add i32 %38, 1
  %39 = call i32 @llvm.bswap.i32(i32 %add.i208) #5
  %40 = ptrtoint ptr %numFiles.sink226 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %numFiles.sink226, align 4
  %41 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh.i = getelementptr inbounds %struct.udf_sb_info, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %s_lvid_bh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %s_lvid_bh.i, align 4
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !12

do.body4.i:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/udf/udfdecl.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 113, 0\0A.popsection", ""() #5, !srcloc !13
  unreachable

do.end9.i:                                        ; preds = %if.then40
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %b_data.i, align 4
  %integrityType.i = getelementptr inbounds %struct.logicalVolIntegrityDesc, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %integrityType.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %integrityType.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i = icmp eq i32 %48, 0
  br i1 %cmp.not.i, label %do.end9.i.udf_updated_lvid.exit_crit_edge, label %land.rhs.i

do.end9.i.udf_updated_lvid.exit_crit_edge:        ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_updated_lvid.exit

land.rhs.i:                                       ; preds = %do.end9.i
  %.b62.i = load i1, ptr @udf_updated_lvid.__already_done, align 1
  br i1 %.b62.i, label %land.rhs.i.udf_updated_lvid.exit_crit_edge, label %if.then24.i, !prof !14

land.rhs.i.udf_updated_lvid.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udf_updated_lvid.exit

if.then24.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @udf_updated_lvid.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 9, ptr noundef null) #5
  br label %udf_updated_lvid.exit

udf_updated_lvid.exit:                            ; preds = %if.then24.i, %land.rhs.i.udf_updated_lvid.exit_crit_edge, %do.end9.i.udf_updated_lvid.exit_crit_edge
  %49 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_dirty.i = getelementptr inbounds %struct.udf_sb_info, ptr %50, i32 0, i32 21
  %51 = ptrtoint ptr %s_lvid_dirty.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %s_lvid_dirty.i, align 4
  call void @mutex_unlock(ptr noundef %s_alloc_mutex) #5
  br label %if.end51

if.end51:                                         ; preds = %udf_updated_lvid.exit, %if.end37.if.end51_crit_edge
  call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call3, ptr noundef %dir, i16 noundef zeroext %mode) #5
  %52 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i211 = getelementptr inbounds %struct.udf_sb_info, ptr %53, i32 0, i32 17
  %54 = ptrtoint ptr %s_flags.i211 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %s_flags.i211, align 4
  %56 = and i32 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool53.not = icmp eq i32 %56, 0
  br i1 %tobool53.not, label %if.end51.if.end55_crit_edge, label %if.then54

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %i_uid = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 2
  %s_uid = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 10
  %57 = ptrtoint ptr %s_uid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %s_uid, align 8
  %59 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %i_uid, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  %60 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_fs_info.i, align 16
  %s_flags.i214 = getelementptr inbounds %struct.udf_sb_info, ptr %61, i32 0, i32 17
  %62 = ptrtoint ptr %s_flags.i214 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %s_flags.i214, align 4
  %64 = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool57.not = icmp eq i32 %64, 0
  br i1 %tobool57.not, label %if.end55.if.end59_crit_edge, label %if.then58

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %i_gid = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 3
  %s_gid = getelementptr inbounds %struct.udf_sb_info, ptr %3, i32 0, i32 9
  %65 = ptrtoint ptr %s_gid to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_gid, align 4
  %67 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %i_gid, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end55.if.end59_crit_edge
  %i_location60 = getelementptr i8, ptr %call3, i32 -240
  %68 = ptrtoint ptr %i_location60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call33, ptr %i_location60, align 8
  %69 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %partitionReferenceNum, align 4
  %partitionReferenceNum65 = getelementptr i8, ptr %call3, i32 -236
  %71 = ptrtoint ptr %partitionReferenceNum65 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %partitionReferenceNum65, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %1, i32 noundef %call33, i16 noundef zeroext %70, i32 noundef 0) #5
  %i_ino = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 11
  %72 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call.i, ptr %i_ino, align 8
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 22
  %73 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 0, ptr %i_blocks, align 8
  %i_lenEAttr = getelementptr i8, ptr %call3, i32 -224
  %74 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %i_lenEAttr, align 8
  %i_lenAlloc = getelementptr i8, ptr %call3, i32 -220
  %75 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %i_lenAlloc, align 4
  %i_use = getelementptr i8, ptr %call3, i32 -192
  %76 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load68 = load i32, ptr %i_use, align 8
  %bf.clear69 = and i32 %bf.load68, -134217729
  store i32 %bf.clear69, ptr %i_use, align 8
  %i_checkpoint = getelementptr i8, ptr %call3, i32 -200
  %77 = ptrtoint ptr %i_checkpoint to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %i_checkpoint, align 8
  %i_extraPerms = getelementptr i8, ptr %call3, i32 -196
  %78 = ptrtoint ptr %i_extraPerms to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8192, ptr %i_extraPerms, align 4
  call void @udf_update_extra_perms(ptr noundef nonnull %call3, i16 noundef zeroext %mode) #5
  %79 = ptrtoint ptr %i_sb6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i_sb6, align 4
  %s_fs_info.i.i217 = getelementptr inbounds %struct.super_block, ptr %80, i32 0, i32 33
  %81 = ptrtoint ptr %s_fs_info.i.i217 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_fs_info.i.i217, align 16
  %s_flags.i218 = getelementptr inbounds %struct.udf_sb_info, ptr %82, i32 0, i32 17
  %83 = ptrtoint ptr %s_flags.i218 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %s_flags.i218, align 4
  %85 = and i32 %84, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool73.not = icmp eq i32 %85, 0
  br i1 %tobool73.not, label %if.else78, label %if.then74

if.then74:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %86)
  %bf.load75 = load i32, ptr %i_use, align 8
  %bf.clear76 = and i32 %bf.load75, 536870911
  %bf.set77 = or i32 %bf.clear76, 1610612736
  br label %if.end93

if.else78:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %s_flags.i218 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %s_flags.i218, align 4
  %89 = ptrtoint ptr %i_use to i32
  call void @__asan_load4_noabort(i32 %89)
  %bf.load89 = load i32, ptr %i_use, align 8
  %bf.clear90 = and i32 %bf.load89, 536870911
  %90 = shl i32 %88, 27
  %91 = and i32 %90, 536870912
  %92 = or i32 %91, %bf.clear90
  %93 = xor i32 %92, 536870912
  br label %if.end93

if.end93:                                         ; preds = %if.else78, %if.then74
  %bf.clear90.sink = phi i32 [ %bf.set77, %if.then74 ], [ %93, %if.else78 ]
  %94 = ptrtoint ptr %i_use to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %bf.clear90.sink, ptr %i_use, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call3) #5
  %95 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  %96 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %97 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %98 = call ptr @memcpy(ptr %add.ptr.i178, ptr %i_ctime, i32 16)
  %call95 = call i32 @insert_inode_locked(ptr noundef nonnull %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then100, label %if.end102, !prof !12

if.then100:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  call void @make_bad_inode(ptr noundef nonnull %call3) #5
  call void @iput(ptr noundef nonnull %call3) #5
  br label %cleanup

if.end102:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  call void @__mark_inode_dirty(ptr noundef nonnull %call3, i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %if.then100, %if.then35, %if.then28, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %if.then35 ], [ inttoptr (i32 -5 to ptr), %if.then100 ], [ %call3, %if.end102 ], [ inttoptr (i32 -12 to ptr), %if.then28 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_new_block(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @lvid_get_unique_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_update_extra_perms(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../fs/udf/udfdecl.h", i32 114, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2153883517, i64 2153883998, i64 2153883554, i64 2153883610, i64 2153883644, i64 2153883668, i64 2153883709, i64 2153883730, i64 2153883758, i64 2153883792}
!14 = !{!"branch_weights", i32 2000, i32 1}
