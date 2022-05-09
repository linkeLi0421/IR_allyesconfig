; ModuleID = '/llk/IR_all_yes/fs/udf/namei.c_pt.bc'
source_filename = "../fs/udf/namei.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.udf_fileident_bh = type { ptr, ptr, i32, i32 }
%struct.fileIdentDesc = type <{ %struct.tag, i16, i8, i8, %struct.long_ad, i16, [0 x i8] }>
%struct.tag = type { i16, i16, i8, i8, i16, i16, i16, i32 }
%struct.long_ad = type { i32, %struct.lb_addr, [6 x i8] }
%struct.lb_addr = type <{ i32, i16 }>
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
%struct.anon.9 = type { i32, i16, i16, i32, i32, i32 }
%struct.kernel_lb_addr = type { i32, i16 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
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
%struct.extent_position = type { ptr, i32, %struct.kernel_lb_addr }
%struct.pathComponent = type { i8, i8, i16, [0 x i8] }

@udf_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @udf_encode_fh, ptr @udf_fh_to_dentry, ptr @udf_fh_to_parent, ptr null, ptr @udf_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@udf_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @udf_lookup, ptr null, ptr null, ptr null, ptr null, ptr @udf_create, ptr @udf_link, ptr @udf_unlink, ptr @udf_symlink, ptr @udf_mkdir, ptr @udf_rmdir, ptr @udf_mknod, ptr @udf_rename, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @udf_tmpfile, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@dotdot_name = external dso_local constant %struct.qstr, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@udf_adinicb_aops = external dso_local constant %struct.address_space_operations, align 4
@udf_aops = external dso_local constant %struct.address_space_operations, align 4
@udf_file_inode_operations = external dso_local constant %struct.inode_operations, align 128
@udf_file_operations = external dso_local constant %struct.file_operations, align 4
@udf_unlink.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udf\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"udf_unlink\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/udf/namei.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s:%d:%s: Deleting nonexistent file (%lu), %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"UDF-fs: %s:%d:%s: Deleting nonexistent file (%lu), %u\0A\00", [41 x i8] zeroinitializer }, align 32
@udf_symlink_aops = external dso_local constant %struct.address_space_operations, align 4
@udf_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 128
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/buffer_head.h\00", [36 x i8] zeroinitializer }, align 32
@udf_dir_operations = external dso_local constant %struct.file_operations, align 4
@__func__.udf_rmdir = private unnamed_addr constant [10 x i8] c"udf_rmdir\00", align 1
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"empty directory has nlink != 2 (%u)\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"udf_export_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1322, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 862, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"../include/linux/buffer_head.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 366, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [18 x i8] c"../fs/udf/namei.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 820, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @udf_export_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udf_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udf_write_fi(ptr noundef %inode, ptr noundef %cfi, ptr noundef %sfi, ptr nocapture noundef readonly %fibh, ptr noundef readonly %impuse, ptr noundef readonly %fileident) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %eoffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %0 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eoffset, align 4
  %soffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %2 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soffset, align 4
  %sub = sub i32 %1, %3
  %4 = trunc i32 %sub to i16
  %conv = add i16 %4, -16
  %lengthOfImpUse = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %5 = ptrtoint ptr %lengthOfImpUse to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %lengthOfImpUse, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %lengthFileIdent = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %8 = ptrtoint ptr %lengthFileIdent to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lengthFileIdent, align 1
  %conv5 = zext i16 %7 to i32
  %conv7 = zext i8 %9 to i32
  %.neg = add i32 %sub, -38
  %10 = add nuw nsw i32 %conv7, %conv5
  %sub9 = sub i32 %.neg, %10
  %i_alloc_type = getelementptr i8, ptr %inode, i32 -192
  %11 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  %add = add i32 %3, 38
  %tobool.not = icmp eq ptr %impuse, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then12

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %entry
  br i1 %cmp, label %if.then12.if.then18_crit_edge, label %lor.lhs.false

if.then12.if.then18_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.then12
  %add15 = add i32 %add, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add15)
  %cmp16 = icmp slt i32 %add15, 0
  br i1 %cmp16, label %lor.lhs.false.if.then18_crit_edge, label %if.else

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %if.then12.if.then18_crit_edge
  %impUse = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 6
  %12 = call ptr @memcpy(ptr %impUse, ptr %impuse, i32 %conv5)
  br label %if.end35

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp20 = icmp sgt i32 %add, -1
  br i1 %cmp20, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ebh = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %13 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ebh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %add
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %impuse, i32 %conv5)
  br label %if.end35

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %impUse25 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 6
  %sub27 = sub nuw i32 -38, %3
  %18 = call ptr @memcpy(ptr %impUse25, ptr %impuse, i32 %sub27)
  %ebh28 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %19 = ptrtoint ptr %ebh28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ebh28, align 4
  %b_data29 = getelementptr inbounds %struct.buffer_head, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %b_data29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %b_data29, align 4
  %add.ptr30 = getelementptr i8, ptr %impuse, i32 %sub27
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr30, i32 %add15)
  br label %if.end35

if.end35:                                         ; preds = %if.else24, %if.then22, %if.then18, %entry.if.end35_crit_edge
  %add37 = add i32 %add, %conv5
  %tobool38.not = icmp eq ptr %fileident, null
  br i1 %tobool38.not, label %if.end35.if.end68_crit_edge, label %if.then39

if.end35.if.end68_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then39:                                        ; preds = %if.end35
  br i1 %cmp, label %if.then39.if.then46_crit_edge, label %lor.lhs.false41

if.then39.if.then46_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false41:                                  ; preds = %if.then39
  %add43 = add i32 %add37, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add43)
  %cmp44 = icmp slt i32 %add43, 0
  br i1 %cmp44, label %lor.lhs.false41.if.then46_crit_edge, label %if.else49

lor.lhs.false41.if.then46_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false41.if.then46_crit_edge, %if.then39.if.then46_crit_edge
  %add.ptr.i272 = getelementptr %struct.fileIdentDesc, ptr %sfi, i32 1
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 5
  %24 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %lengthOfImpUse.i, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #8
  %conv.i = zext i16 %26 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i272, i32 %conv.i
  %27 = call ptr @memcpy(ptr %add.ptr1.i, ptr %fileident, i32 %conv7)
  br label %if.end68

if.else49:                                        ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add37)
  %cmp50 = icmp sgt i32 %add37, -1
  br i1 %cmp50, label %if.then52, label %if.else57

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  %ebh53 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %28 = ptrtoint ptr %ebh53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ebh53, align 4
  %b_data54 = getelementptr inbounds %struct.buffer_head, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %b_data54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %b_data54, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 %add37
  %32 = call ptr @memcpy(ptr %add.ptr55, ptr %fileident, i32 %conv7)
  br label %lor.lhs.false72

if.else57:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i273 = getelementptr %struct.fileIdentDesc, ptr %sfi, i32 1
  %lengthOfImpUse.i274 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 5
  %33 = ptrtoint ptr %lengthOfImpUse.i274 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %lengthOfImpUse.i274, align 1
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #8
  %conv.i275 = zext i16 %35 to i32
  %add.ptr1.i276 = getelementptr i8, ptr %add.ptr.i273, i32 %conv.i275
  %sub59 = sub i32 0, %add37
  %36 = call ptr @memcpy(ptr %add.ptr1.i276, ptr %fileident, i32 %sub59)
  %ebh60 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %37 = ptrtoint ptr %ebh60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ebh60, align 4
  %b_data61 = getelementptr inbounds %struct.buffer_head, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %b_data61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b_data61, align 4
  %add.ptr63 = getelementptr i8, ptr %fileident, i32 %sub59
  %41 = call ptr @memcpy(ptr %40, ptr %add.ptr63, i32 %add43)
  br label %lor.lhs.false72

if.end68:                                         ; preds = %if.then46, %if.end35.if.end68_crit_edge
  br i1 %cmp, label %if.end68.if.then76_crit_edge, label %if.end68.lor.lhs.false72_crit_edge

if.end68.if.then76_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.end68.lor.lhs.false72_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add i32 %add37, %conv7
  br label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end68.lor.lhs.false72_crit_edge, %if.else57, %if.then52
  %add70286.pre-phi = phi i32 [ %.pre, %if.end68.lor.lhs.false72_crit_edge ], [ %add43, %if.then52 ], [ %add43, %if.else57 ]
  %add73 = add i32 %add70286.pre-phi, %sub9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add73)
  %cmp74 = icmp slt i32 %add73, 0
  br i1 %cmp74, label %lor.lhs.false72.if.then76_crit_edge, label %if.else80

lor.lhs.false72.if.then76_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false72.if.then76_crit_edge, %if.end68.if.then76_crit_edge
  %add.ptr.i277 = getelementptr %struct.fileIdentDesc, ptr %sfi, i32 1
  %lengthOfImpUse.i278 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 5
  %42 = ptrtoint ptr %lengthOfImpUse.i278 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %lengthOfImpUse.i278, align 1
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #8
  %conv.i279 = zext i16 %44 to i32
  %add.ptr1.i280 = getelementptr i8, ptr %add.ptr.i277, i32 %conv.i279
  %add.ptr79 = getelementptr i8, ptr %add.ptr1.i280, i32 %conv7
  %45 = call ptr @memset(ptr %add.ptr79, i32 0, i32 %sub9)
  br label %if.end96

if.else80:                                        ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add70286.pre-phi)
  %cmp81 = icmp sgt i32 %add70286.pre-phi, -1
  br i1 %cmp81, label %if.then83, label %if.else87

if.then83:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #10
  %ebh84 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %46 = ptrtoint ptr %ebh84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ebh84, align 4
  %b_data85 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %b_data85 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %b_data85, align 4
  %add.ptr86 = getelementptr i8, ptr %49, i32 %add70286.pre-phi
  %50 = call ptr @memset(ptr %add.ptr86, i32 0, i32 %sub9)
  br label %if.end96

if.else87:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i281 = getelementptr %struct.fileIdentDesc, ptr %sfi, i32 1
  %lengthOfImpUse.i282 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 5
  %51 = ptrtoint ptr %lengthOfImpUse.i282 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %lengthOfImpUse.i282, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #8
  %conv.i283 = zext i16 %53 to i32
  %add.ptr1.i284 = getelementptr i8, ptr %add.ptr.i281, i32 %conv.i283
  %add.ptr90 = getelementptr i8, ptr %add.ptr1.i284, i32 %conv7
  %sub91 = sub i32 0, %add70286.pre-phi
  %54 = call ptr @memset(ptr %add.ptr90, i32 0, i32 %sub91)
  %ebh92 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %55 = ptrtoint ptr %ebh92 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ebh92, align 4
  %b_data93 = getelementptr inbounds %struct.buffer_head, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %b_data93 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %b_data93, align 4
  %59 = call ptr @memset(ptr %58, i32 0, i32 %add73)
  br label %if.end96

if.end96:                                         ; preds = %if.else87, %if.then83, %if.then76
  %add.ptr97 = getelementptr i8, ptr %cfi, i32 16
  %call98 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext 0, ptr noundef %add.ptr97, i32 noundef 22) #8
  %60 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fibh, align 4
  %ebh99 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %62 = ptrtoint ptr %ebh99 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ebh99, align 4
  %cmp100 = icmp eq ptr %61, %63
  br i1 %cmp100, label %if.then102, label %if.else109

if.then102:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %impUse103 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 6
  %conv105 = zext i16 %conv to i32
  %sub107 = add nsw i32 %conv105, -22
  %call108 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %call98, ptr noundef %impUse103, i32 noundef %sub107) #8
  br label %if.end136

if.else109:                                       ; preds = %if.end96
  %64 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %soffset, align 4
  %66 = add i32 %65, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %66)
  %cmp112 = icmp ult i32 %66, 39
  br i1 %cmp112, label %if.then114, label %if.else124

if.then114:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  %b_data116 = getelementptr inbounds %struct.buffer_head, ptr %63, i32 0, i32 5
  %67 = ptrtoint ptr %b_data116 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %b_data116, align 4
  %add.ptr117 = getelementptr i8, ptr %68, i32 38
  %add.ptr119 = getelementptr i8, ptr %add.ptr117, i32 %65
  %conv120 = zext i16 %conv to i32
  %sub122 = add nsw i32 %conv120, -22
  %call123 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %call98, ptr noundef %add.ptr119, i32 noundef %sub122) #8
  br label %if.end136

if.else124:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #10
  %impUse125 = getelementptr inbounds %struct.fileIdentDesc, ptr %sfi, i32 0, i32 6
  %sub129 = sub nuw i32 -38, %65
  %call130 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %call98, ptr noundef %impUse125, i32 noundef %sub129) #8
  %69 = ptrtoint ptr %ebh99 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ebh99, align 4
  %b_data132 = getelementptr inbounds %struct.buffer_head, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %b_data132 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %b_data132, align 4
  %73 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %eoffset, align 4
  %call134 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %call130, ptr noundef %72, i32 noundef %74) #8
  br label %if.end136

if.end136:                                        ; preds = %if.else124, %if.then114, %if.then102
  %crc.0 = phi i16 [ %call108, %if.then102 ], [ %call123, %if.then114 ], [ %call134, %if.else124 ]
  %75 = tail call i16 @llvm.bswap.i16(i16 %crc.0)
  %descCRC = getelementptr inbounds %struct.tag, ptr %cfi, i32 0, i32 5
  %76 = ptrtoint ptr %descCRC to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %75, ptr %descCRC, align 1
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %descCRCLength = getelementptr inbounds %struct.tag, ptr %cfi, i32 0, i32 6
  %78 = ptrtoint ptr %descCRCLength to i32
  call void @__asan_storeN_noabort(i32 %78, i32 2)
  store i16 %77, ptr %descCRCLength, align 1
  %call139 = tail call zeroext i8 @udf_tag_checksum(ptr noundef %cfi) #8
  %tagChecksum = getelementptr inbounds %struct.tag, ptr %cfi, i32 0, i32 2
  %79 = ptrtoint ptr %tagChecksum to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %call139, ptr %tagChecksum, align 1
  br i1 %cmp, label %if.then160.critedge, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.end136
  %80 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %soffset, align 4
  %sub144 = sub i32 0, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %sub144)
  %cmp145 = icmp ugt i32 %sub144, 37
  br i1 %cmp145, label %if.else161.critedge, label %if.else148

if.else148:                                       ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #10
  %82 = call ptr @memcpy(ptr %sfi, ptr %cfi, i32 %sub144)
  %83 = ptrtoint ptr %ebh99 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ebh99, align 4
  %b_data152 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data152, align 4
  %87 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %soffset, align 4
  %idx.neg154 = sub i32 0, %88
  %add.ptr155 = getelementptr i8, ptr %cfi, i32 %idx.neg154
  %add157 = add i32 %88, 38
  %89 = call ptr @memcpy(ptr %86, ptr %add.ptr155, i32 %add157)
  br label %if.else161

if.then160.critedge:                              ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %90 = call ptr @memcpy(ptr %sfi, ptr %cfi, i32 38)
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  br label %if.end170

if.else161.critedge:                              ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #10
  %91 = call ptr @memcpy(ptr %sfi, ptr %cfi, i32 38)
  br label %if.else161

if.else161:                                       ; preds = %if.else161.critedge, %if.else148
  %92 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fibh, align 4
  %94 = ptrtoint ptr %ebh99 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ebh99, align 4
  %cmp164.not = icmp eq ptr %93, %95
  br i1 %cmp164.not, label %if.else161.if.end168_crit_edge, label %if.then166

if.else161.if.end168_crit_edge:                   ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then166:                                       ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mark_buffer_dirty_inode(ptr noundef %95, ptr noundef %inode) #8
  br label %if.end168

if.end168:                                        ; preds = %if.then166, %if.else161.if.end168_crit_edge
  %96 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fibh, align 4
  tail call void @mark_buffer_dirty_inode(ptr noundef %97, ptr noundef %inode) #8
  br label %if.end170

if.end170:                                        ; preds = %if.end168, %if.then160.critedge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !25
  %i_version.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 38
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %i_version.i.i.i, i32 noundef 8) #8
  %call.i.i1.i.i = tail call i64 @generic_atomic64_read(ptr noundef %i_version.i.i.i) #8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end170
  %cur.0.i.i = phi i64 [ %call.i.i1.i.i, %if.end170 ], [ %call.i.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %98 = add i64 %cur.0.i.i, 2
  %add.i.i = and i64 %98, -2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_version.i.i.i, i32 noundef 8) #8
  %call.i.i.i = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %i_version.i.i.i, i64 noundef %cur.0.i.i, i64 noundef %add.i.i) #8
  %cmp.i.i = icmp eq i64 %call.i.i.i, %cur.0.i.i
  br i1 %cmp.i.i, label %inode_inc_iversion.exit, label %for.cond.i.i.for.cond.i.i_crit_edge, !prof !26

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

inode_inc_iversion.exit:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @udf_tag_checksum(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_buffer_dirty_inode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @udf_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh, ptr nocapture noundef %lenp, ptr noundef readonly %parent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lenp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lenp, align 4
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %2 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %2)
  %location.sroa.0.0.copyload23 = load i32, ptr %i_location, align 8
  %location.sroa.7.0.i_location.sroa_idx = getelementptr i8, ptr %inode, i32 -236
  %3 = ptrtoint ptr %location.sroa.7.0.i_location.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %3)
  %location.sroa.7.0.copyload25 = load i16, ptr %location.sroa.7.0.i_location.sroa_idx, align 4
  %tobool.not = icmp eq ptr %parent, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup.sink.split_crit_edge, label %if.else

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp slt i32 %1, 3
  %4 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %lenp, align 4
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %5 = ptrtoint ptr %fh to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %location.sroa.0.0.copyload23, ptr %fh, align 4
  %partref = getelementptr inbounds %struct.anon.9, ptr %fh, i32 0, i32 1
  %6 = ptrtoint ptr %partref to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %location.sroa.7.0.copyload25, ptr %partref, align 4
  %parent_partref = getelementptr inbounds %struct.anon.9, ptr %fh, i32 0, i32 2
  %7 = ptrtoint ptr %parent_partref to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %parent_partref, align 2
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %8 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_generation, align 8
  %generation = getelementptr inbounds %struct.anon.9, ptr %fh, i32 0, i32 3
  %10 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %generation, align 4
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %i_location7 = getelementptr i8, ptr %parent, i32 -240
  %11 = ptrtoint ptr %i_location7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %location.sroa.0.0.copyload24 = load i32, ptr %i_location7, align 8
  %location.sroa.7.0.i_location7.sroa_idx = getelementptr i8, ptr %parent, i32 -236
  %12 = ptrtoint ptr %location.sroa.7.0.i_location7.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %location.sroa.7.0.copyload26 = load i16, ptr %location.sroa.7.0.i_location7.sroa_idx, align 4
  %parent_block = getelementptr inbounds %struct.anon.9, ptr %fh, i32 0, i32 4
  %13 = ptrtoint ptr %parent_block to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %location.sroa.0.0.copyload24, ptr %parent_block, align 4
  %14 = ptrtoint ptr %parent_partref to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %location.sroa.7.0.copyload26, ptr %parent_partref, align 2
  %15 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_generation, align 8
  %parent_generation = getelementptr inbounds %struct.anon.9, ptr %fh, i32 0, i32 5
  %17 = ptrtoint ptr %parent_generation to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %parent_generation, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 82, %if.then5 ], [ 255, %entry.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %lenp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %lenp, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 81, %if.end3.cleanup_crit_edge ], [ 255, %if.else.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  %loc.i = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp = icmp sgt i32 %fh_len, 2
  %fh_type.off = add i32 %fh_type, -81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type.off)
  %switch = icmp ult i32 %fh_type.off, 2
  %or.cond = and i1 %cmp, %switch
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fid, align 4
  %partref = getelementptr inbounds %struct.anon.9, ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %partref to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %partref, align 4
  %generation = getelementptr inbounds %struct.anon.9, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loc.i) #8
  %6 = ptrtoint ptr %loc.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %loc.i, align 8, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end.udf_nfs_get_inode.exit_crit_edge, label %if.end.i

if.end.udf_nfs_get_inode.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_nfs_get_inode.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %loc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %loc.i, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %loc.i, i32 0, i32 1
  %8 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %partitionReferenceNum.i, align 4
  %call.i.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %loc.i, i1 noundef zeroext false) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.udf_nfs_get_inode.exit_crit_edge, label %if.end5.i

if.end.i.udf_nfs_get_inode.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_nfs_get_inode.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp6.not.i = icmp eq i32 %10, %5
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iput(ptr noundef %call.i.i) #8
  br label %udf_nfs_get_inode.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  %call10.i = call ptr @d_obtain_alias(ptr noundef %call.i.i) #8
  br label %udf_nfs_get_inode.exit

udf_nfs_get_inode.exit:                           ; preds = %if.end9.i, %if.then7.i, %if.end.i.udf_nfs_get_inode.exit_crit_edge, %if.end.udf_nfs_get_inode.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -116 to ptr), %if.then7.i ], [ %call10.i, %if.end9.i ], [ inttoptr (i32 -116 to ptr), %if.end.udf_nfs_get_inode.exit_crit_edge ], [ %call.i.i, %if.end.i.udf_nfs_get_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc.i) #8
  br label %return

return:                                           ; preds = %udf_nfs_get_inode.exit, %entry.return_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %udf_nfs_get_inode.exit ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  %loc.i = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp = icmp sgt i32 %fh_len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %fh_type)
  %cmp1.not = icmp eq i32 %fh_type, 82
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %parent_block = getelementptr inbounds %struct.anon.9, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %parent_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_block, align 4
  %parent_partref = getelementptr inbounds %struct.anon.9, ptr %fid, i32 0, i32 2
  %2 = ptrtoint ptr %parent_partref to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %parent_partref, align 2
  %parent_generation = getelementptr inbounds %struct.anon.9, ptr %fid, i32 0, i32 5
  %4 = ptrtoint ptr %parent_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_generation, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loc.i) #8
  %6 = ptrtoint ptr %loc.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %loc.i, align 8, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end.udf_nfs_get_inode.exit_crit_edge, label %if.end.i

if.end.udf_nfs_get_inode.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_nfs_get_inode.exit

if.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %loc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %loc.i, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %loc.i, i32 0, i32 1
  %8 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %partitionReferenceNum.i, align 4
  %call.i.i = call ptr @__udf_iget(ptr noundef %sb, ptr noundef nonnull %loc.i, i1 noundef zeroext false) #8
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.udf_nfs_get_inode.exit_crit_edge, label %if.end5.i

if.end.i.udf_nfs_get_inode.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_nfs_get_inode.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp6.not.i = icmp eq i32 %10, %5
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @iput(ptr noundef %call.i.i) #8
  br label %udf_nfs_get_inode.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  %call10.i = call ptr @d_obtain_alias(ptr noundef %call.i.i) #8
  br label %udf_nfs_get_inode.exit

udf_nfs_get_inode.exit:                           ; preds = %if.end9.i, %if.then7.i, %if.end.i.udf_nfs_get_inode.exit_crit_edge, %if.end.udf_nfs_get_inode.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -116 to ptr), %if.then7.i ], [ %call10.i, %if.end9.i ], [ inttoptr (i32 -116 to ptr), %if.end.udf_nfs_get_inode.exit_crit_edge ], [ %call.i.i, %if.end.i.udf_nfs_get_inode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc.i) #8
  br label %return

return:                                           ; preds = %udf_nfs_get_inode.exit, %entry.return_crit_edge
  %retval.0 = phi ptr [ %retval.0.i, %udf_nfs_get_inode.exit ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  %tloc = alloca %struct.kernel_lb_addr, align 8
  %cfi = alloca %struct.fileIdentDesc, align 1
  %fibh = alloca %struct.udf_fileident_bh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tloc) #8
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %0 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %1 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %call1 = call fastcc ptr @udf_find_entry(ptr noundef %3, ptr noundef nonnull @dotdot_name, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %5 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fibh, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %cmp.not = icmp eq ptr %6, %8
  %tobool.not.i = icmp eq ptr %8, null
  %or.cond = or i1 %cmp.not, %tobool.not.i
  br i1 %or.cond, label %if.end.if.end5_crit_edge, label %if.then.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %8) #8
  %9 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.end.if.end5_crit_edge
  %10 = phi ptr [ %.pr, %if.then.i ], [ %6, %if.end.if.end5_crit_edge ]
  %tobool.not.i19 = icmp eq ptr %10, null
  br i1 %tobool.not.i19, label %if.end5.brelse.exit21_crit_edge, label %if.then.i20

if.end5.brelse.exit21_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit21

if.then.i20:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %10) #8
  br label %brelse.exit21

brelse.exit21:                                    ; preds = %if.then.i20, %if.end5.brelse.exit21_crit_edge
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %14 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %tmp.sroa.5.0.insert.ext = zext i16 %14 to i64
  %tmp.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp.sroa.5.0.insert.ext, 16
  %tmp.sroa.0.0.insert.ext = zext i32 %13 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.5.0.insert.insert = or i64 %tmp.sroa.5.0.insert.shift, %tmp.sroa.0.0.insert.shift
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.5.0.insert.insert, 65535
  %15 = ptrtoint ptr %tloc to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %tloc, align 8
  %d_sb = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 9
  %16 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d_sb, align 4
  %call.i = call ptr @__udf_iget(ptr noundef %17, ptr noundef nonnull %tloc, i1 noundef zeroext false) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %brelse.exit21.cleanup_crit_edge, label %if.end11

brelse.exit21.cleanup_crit_edge:                  ; preds = %brelse.exit21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %brelse.exit21
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call ptr @d_obtain_alias(ptr noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %brelse.exit21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call12, %if.end11 ], [ inttoptr (i32 -13 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %brelse.exit21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tloc) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @udf_lookup(ptr noundef %dir, ptr noundef %dentry, i32 noundef %flags) #0 align 64 {
entry:
  %cfi = alloca %struct.fileIdentDesc, align 1
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %loc = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %0 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %1 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %2 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  %3 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %4)
  %cmp = icmp ugt i32 %4, 254
  br i1 %cmp, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end:                                           ; preds = %entry
  %call2 = call fastcc ptr @udf_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi)
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup20_crit_edge, label %if.end6

if.end.cleanup20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end6:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end6.if.end18_crit_edge, label %if.then7

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loc) #8
  %5 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fibh, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %cmp8.not = icmp eq ptr %6, %8
  %tobool.not.i = icmp eq ptr %8, null
  %or.cond = or i1 %cmp8.not, %tobool.not.i
  br i1 %or.cond, label %if.then7.if.end11_crit_edge, label %if.then.i

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %8) #8
  %9 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then7.if.end11_crit_edge
  %10 = phi ptr [ %.pr, %if.then.i ], [ %6, %if.then7.if.end11_crit_edge ]
  %tobool.not.i31 = icmp eq ptr %10, null
  br i1 %tobool.not.i31, label %if.end11.brelse.exit33_crit_edge, label %if.then.i32

if.end11.brelse.exit33_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit33

if.then.i32:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %10) #8
  br label %brelse.exit33

brelse.exit33:                                    ; preds = %if.then.i32, %if.end11.brelse.exit33_crit_edge
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %12 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %14 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %tmp.sroa.5.0.insert.ext = zext i16 %14 to i64
  %tmp.sroa.5.0.insert.shift = shl nuw nsw i64 %tmp.sroa.5.0.insert.ext, 16
  %tmp.sroa.0.0.insert.ext = zext i32 %13 to i64
  %tmp.sroa.0.0.insert.shift = shl nuw i64 %tmp.sroa.0.0.insert.ext, 32
  %tmp.sroa.5.0.insert.insert = or i64 %tmp.sroa.5.0.insert.shift, %tmp.sroa.0.0.insert.shift
  %tmp.sroa.0.0.insert.insert = or i64 %tmp.sroa.5.0.insert.insert, 65535
  %15 = ptrtoint ptr %loc to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %loc, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb, align 4
  %call.i = call ptr @__udf_iget(ptr noundef %17, ptr noundef nonnull %loc, i1 noundef zeroext false) #8
  %cmp.i34 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loc) #8
  br i1 %cmp.i34, label %brelse.exit33.cleanup20_crit_edge, label %brelse.exit33.if.end18_crit_edge

brelse.exit33.if.end18_crit_edge:                 ; preds = %brelse.exit33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

brelse.exit33.cleanup20_crit_edge:                ; preds = %brelse.exit33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup20

if.end18:                                         ; preds = %brelse.exit33.if.end18_crit_edge, %if.end6.if.end18_crit_edge
  %inode.0 = phi ptr [ %call.i, %brelse.exit33.if.end18_crit_edge ], [ null, %if.end6.if.end18_crit_edge ]
  %call19 = call ptr @d_splice_alias(ptr noundef %inode.0, ptr noundef %dentry) #8
  br label %cleanup20

cleanup20:                                        ; preds = %if.end18, %brelse.exit33.cleanup20_crit_edge, %if.end.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.1 = phi ptr [ %call19, %if.end18 ], [ %call.i, %brelse.exit33.cleanup20_crit_edge ], [ inttoptr (i32 -36 to ptr), %entry.cleanup20_crit_edge ], [ %call2, %if.end.cleanup20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_create(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i1 noundef zeroext %excl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_alloc_type = getelementptr i8, ptr %call, i32 -192
  %1 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  %spec.select = select i1 %cmp, ptr @udf_adinicb_aops, ptr @udf_aops
  %2 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 46, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @udf_file_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udf_file_operations, ptr %5, align 8
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #8
  %call8 = tail call fastcc i32 @udf_add_nondir(ptr noundef %dentry, ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_link(ptr nocapture noundef readonly %old_dentry, ptr noundef %dir, ptr noundef %dentry) #0 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %err = alloca i32, align 4
  %tmp25 = alloca %struct.timespec64, align 8
  %tmp27 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %2 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %3 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %4 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4, !annotation !27
  %call1 = call fastcc ptr @udf_add_entry(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %err)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %s_blocksize, align 16
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %icb = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4
  %13 = ptrtoint ptr %icb to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %icb, align 1
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %i_location = getelementptr i8, ptr %1, i32 -240
  %14 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %i_location, align 8
  %.elt50 = getelementptr i8, ptr %1, i32 -236
  %15 = ptrtoint ptr %.elt50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack51 = load i32, ptr %.elt50, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack51, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %16 = call i32 @llvm.bswap.i32(i32 %.unpack) #8
  %17 = call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %18 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %16, ptr %extLocation, align 1
  %tmp.sroa.4.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %tmp.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %17, ptr %tmp.sroa.4.0.extLocation.sroa_idx, align 1
  %20 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 33
  %22 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_fs_info.i, align 16
  %s_lvid_bh = getelementptr inbounds %struct.udf_sb_info, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %s_lvid_bh to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %s_lvid_bh, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i64 @lvid_get_unique_id(ptr noundef %21) #8
  %conv = trunc i64 %call9 to i32
  %26 = call i32 @llvm.bswap.i32(i32 %conv)
  %impUse11 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 2, i32 2
  %27 = ptrtoint ptr %impUse11 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %impUse11, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %call14 = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef nonnull %cfi, ptr noundef nonnull %call1, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null)
  %i_alloc_type = getelementptr i8, ptr %dir, i32 -192
  %28 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp, label %if.then17, label %if.end13.if.end18_crit_edge

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end13.if.end18_crit_edge
  %29 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fibh, align 4
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %2, align 4
  %cmp19.not = icmp eq ptr %30, %32
  %tobool.not.i = icmp eq ptr %32, null
  %or.cond = or i1 %cmp19.not, %tobool.not.i
  br i1 %or.cond, label %if.end18.if.end23_crit_edge, label %if.then.i

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %32) #8
  %33 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then.i, %if.end18.if.end23_crit_edge
  %34 = phi ptr [ %.pr, %if.then.i ], [ %30, %if.end18.if.end23_crit_edge ]
  %tobool.not.i53 = icmp eq ptr %34, null
  br i1 %tobool.not.i53, label %if.end23.brelse.exit55_crit_edge, label %if.then.i54

if.end23.brelse.exit55_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit55

if.then.i54:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %34) #8
  br label %brelse.exit55

brelse.exit55:                                    ; preds = %if.then.i54, %if.end23.brelse.exit55_crit_edge
  call void @inc_nlink(ptr noundef %1) #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp25) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp25, ptr noundef %1) #8
  %35 = call ptr @memcpy(ptr %i_ctime, ptr %tmp25, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp25) #8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  %i_ctime26 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp27) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp27, ptr noundef %dir) #8
  %36 = call ptr @memcpy(ptr %i_mtime, ptr %tmp27, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp27) #8
  %37 = call ptr @memcpy(ptr %i_ctime26, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  call void @ihold(ptr noundef %1) #8
  call void @d_instantiate(ptr noundef %dentry, ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit55, %if.then
  %retval.0 = phi i32 [ 0, %brelse.exit55 ], [ %7, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_unlink(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %tmp25 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %2 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %3 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %4 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call fastcc ptr @udf_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi)
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  %spec.select = select i1 %tobool.not.i, i32 -2, i32 %5
  br label %out

if.end6:                                          ; preds = %entry
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %8 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %9 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %11, i32 noundef %8, i16 noundef zeroext %9, i32 noundef 0) #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %13)
  %cmp.not = icmp eq i32 %call.i, %13
  br i1 %cmp.not, label %if.end9, label %if.end6.end_unlink_crit_edge

if.end6.end_unlink_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_unlink

if.end9:                                          ; preds = %if.end6
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %do.body, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body:                                          ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @udf_unlink.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@udf_unlink, %if.then17)) #8
          to label %do.end [label %if.then17], !srcloc !28

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i_ino, align 8
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %14, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @udf_unlink.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 863, ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef %20) #8
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  call void @set_nlink(ptr noundef %1, i32 noundef 1) #8
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end9.if.end20_crit_edge
  %fileCharacteristics.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %21 = ptrtoint ptr %fileCharacteristics.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %fileCharacteristics.i, align 1
  %23 = or i8 %22, 4
  store i8 %23, ptr %fileCharacteristics.i, align 1
  %24 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %s_flags.i.i, align 4
  %30 = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i51 = icmp eq i32 %30, 0
  br i1 %tobool.not.i51, label %if.end20.udf_delete_entry.exit_crit_edge, label %if.then.i

if.end20.udf_delete_entry.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_delete_entry.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %icb.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4
  %31 = call ptr @memset(ptr %icb.i, i32 0, i32 16)
  br label %udf_delete_entry.exit

udf_delete_entry.exit:                            ; preds = %if.then.i, %if.end20.udf_delete_entry.exit_crit_edge
  %call2.i = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef nonnull %cfi, ptr noundef nonnull %call2, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null) #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp25) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp25, ptr noundef %dir) #8
  %32 = call ptr @memcpy(ptr %i_mtime, ptr %tmp25, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp25) #8
  %33 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  call void @drop_nlink(ptr noundef %1) #8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  %i_ctime26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %34 = call ptr @memcpy(ptr %i_ctime26, ptr %i_ctime, i32 16)
  br label %end_unlink

end_unlink:                                       ; preds = %udf_delete_entry.exit, %if.end6.end_unlink_crit_edge
  %retval1.0 = phi i32 [ -5, %if.end6.end_unlink_crit_edge ], [ 0, %udf_delete_entry.exit ]
  %35 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fibh, align 4
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %cmp28.not = icmp eq ptr %36, %38
  %tobool.not.i52 = icmp eq ptr %38, null
  %or.cond = or i1 %cmp28.not, %tobool.not.i52
  br i1 %or.cond, label %end_unlink.if.end31_crit_edge, label %if.then.i53

end_unlink.if.end31_crit_edge:                    ; preds = %end_unlink
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then.i53:                                      ; preds = %end_unlink
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %38) #8
  %39 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then.i53, %end_unlink.if.end31_crit_edge
  %40 = phi ptr [ %.pr, %if.then.i53 ], [ %36, %end_unlink.if.end31_crit_edge ]
  %tobool.not.i54 = icmp eq ptr %40, null
  br i1 %tobool.not.i54, label %if.end31.out_crit_edge, label %if.then.i55

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i55:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %40) #8
  br label %out

out:                                              ; preds = %if.then.i55, %if.end31.out_crit_edge, %if.then
  %retval1.1 = phi i32 [ %retval1.0, %if.end31.out_crit_edge ], [ %retval1.0, %if.then.i55 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) #0 align 64 {
entry:
  %epos = alloca %struct.extent_position, align 4
  %err = alloca i32, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext -24065) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %0 = call ptr @memset(ptr %epos, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %1 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %err, align 4, !annotation !27
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup149

if.end:                                           ; preds = %entry
  %i_data_sem = getelementptr i8, ptr %call, i32 -168
  tail call void @down_write(ptr noundef %i_data_sem) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3136, i32 noundef 255) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -12, ptr %err, align 4
  br label %out_no_entry

if.end6:                                          ; preds = %if.end
  %a_ops = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 46, i32 9
  %7 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @udf_symlink_aops, ptr %a_ops, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @udf_symlink_inode_operations, ptr %i_op, align 8
  tail call void @inode_nohighmem(ptr noundef %call) #8
  %i_alloc_type = getelementptr i8, ptr %call, i32 -192
  %9 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %10 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %eloc, align 8, !annotation !27
  %i_location = getelementptr i8, ptr %call, i32 -240
  %partitionReferenceNum = getelementptr i8, ptr %call, i32 -236
  %11 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %partitionReferenceNum, align 4
  %13 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_location, align 8
  %call9 = call i32 @udf_new_block(ptr noundef %3, ptr noundef %call, i16 noundef zeroext %12, i32 noundef %14, ptr noundef nonnull %err) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.cleanup.thread_crit_edge, label %if.end12

if.then7.cleanup.thread_crit_edge:                ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end12:                                         ; preds = %if.then7
  %block13 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %15 = ptrtoint ptr %i_location to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %i_location, align 8
  %17 = ptrtoint ptr %block13 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %16, ptr %block13, align 4
  %18 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i = load i32, ptr %i_alloc_type, align 8
  %19 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i247 = icmp eq i32 %19, 0
  br i1 %tobool.not.i247, label %if.else.i, label %if.end12.udf_file_entry_alloc_offset.exit_crit_edge

if.end12.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.end12
  %20 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %call, i32 -224
  %21 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %22, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %22, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.end12.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.end12.udf_file_entry_alloc_offset.exit_crit_edge ]
  %offset = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i, ptr %offset, align 4
  %24 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %epos, align 4
  %25 = ptrtoint ptr %eloc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call9, ptr %eloc, align 8
  %26 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %partitionReferenceNum, align 4
  %partitionReferenceNum19 = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %28 = ptrtoint ptr %partitionReferenceNum19 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %partitionReferenceNum19, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_blocksize, align 16
  %conv = zext i32 %30 to i64
  %i_lenExtents = getelementptr i8, ptr %call, i32 -216
  %31 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv, ptr %i_lenExtents, align 8
  %call20 = call i32 @udf_add_aext(ptr noundef %call, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %30, i32 noundef 0) #8
  %32 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %epos, align 4
  %tobool.not.i248 = icmp eq ptr %33, null
  br i1 %tobool.not.i248, label %udf_file_entry_alloc_offset.exit.brelse.exit_crit_edge, label %if.then.i249

udf_file_entry_alloc_offset.exit.brelse.exit_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i249:                                     ; preds = %udf_file_entry_alloc_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %33) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i249, %udf_file_entry_alloc_offset.exit.brelse.exit_crit_edge
  %34 = ptrtoint ptr %partitionReferenceNum to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %partitionReferenceNum, align 4
  %call24 = call i32 @udf_get_pblock(ptr noundef %3, i32 noundef %call9, i16 noundef zeroext %35, i32 noundef 0) #8
  %call25 = call ptr @udf_tgetblk(ptr noundef %3, i32 noundef %call24) #8
  %36 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call25, ptr %epos, align 4
  %tobool28.not = icmp eq ptr %call25, null
  br i1 %tobool28.not, label %if.then32, label %if.end33, !prof !29

if.then32:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -12, ptr %err, align 4
  br label %cleanup.thread

if.end33:                                         ; preds = %brelse.exit
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 366) #8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call25, i32 noundef 4) #8
  %38 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %call25, align 4
  %and.i.i.i.i = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %trylock_buffer.exit.i, label %if.end33.if.then.i250_crit_edge

if.end33.if.then.i250_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i250

trylock_buffer.exit.i:                            ; preds = %if.end33
  call void @llvm.prefetch.p0(ptr nonnull %call25, i32 1, i32 3, i32 1) #8
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call25, ptr nonnull %call25, i32 4, ptr nonnull elementtype(i32) %call25) #8, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !31
  %41 = and i32 %asmresult.i.i.i.i.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.not.i, label %trylock_buffer.exit.i.lock_buffer.exit_crit_edge, label %trylock_buffer.exit.i.if.then.i250_crit_edge

trylock_buffer.exit.i.if.then.i250_crit_edge:     ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i250

trylock_buffer.exit.i.lock_buffer.exit_crit_edge: ; preds = %trylock_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lock_buffer.exit

if.then.i250:                                     ; preds = %trylock_buffer.exit.i.if.then.i250_crit_edge, %if.end33.if.then.i250_crit_edge
  call void @__lock_buffer(ptr noundef nonnull %call25) #8
  br label %lock_buffer.exit

lock_buffer.exit:                                 ; preds = %if.then.i250, %trylock_buffer.exit.i.lock_buffer.exit_crit_edge
  %42 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %epos, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %b_data, align 4
  %46 = call ptr @memset(ptr %45, i32 0, i32 %30)
  %47 = load ptr, ptr %epos, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  %and1.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge

lock_buffer.exit.set_buffer_uptodate.exit_crit_edge: ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_buffer_uptodate.exit

if.then.i:                                        ; preds = %lock_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 0, ptr noundef %47) #8
  br label %set_buffer_uptodate.exit

set_buffer_uptodate.exit:                         ; preds = %if.then.i, %lock_buffer.exit.set_buffer_uptodate.exit_crit_edge
  %50 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %epos, align 4
  call void @unlock_buffer(ptr noundef %51) #8
  %52 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %epos, align 4
  call void @mark_buffer_dirty_inode(ptr noundef %53, ptr noundef %call) #8
  %54 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %epos, align 4
  %b_data40 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %b_data40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %b_data40, align 4
  %58 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i251 = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i251, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i252 = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i252, label %if.then.i253, label %set_buffer_uptodate.exit.cleanup_crit_edge

set_buffer_uptodate.exit.cleanup_crit_edge:       ; preds = %set_buffer_uptodate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i253:                                     ; preds = %set_buffer_uptodate.exit
  %59 = and i32 %bf.load.i251, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i253.cleanup_crit_edge

if.then.i253.cleanup_crit_edge:                   ; preds = %if.then.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.then.i253
  %60 = and i32 %bf.load.i251, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool4.not.i.i = icmp eq i32 %60, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %call, i32 -224
  %61 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %62, 216
  br label %cleanup

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %62, 176
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then32, %if.then7.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  br label %out_no_entry

cleanup:                                          ; preds = %if.else6.i.i, %if.then5.i.i, %if.then.i253.cleanup_crit_edge, %set_buffer_uptodate.exit.cleanup_crit_edge
  %retval.0.i254 = phi i32 [ 0, %set_buffer_uptodate.exit.cleanup_crit_edge ], [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %if.then.i253.cleanup_crit_edge ]
  %add.ptr = getelementptr i8, ptr %57, i32 %retval.0.i254
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  br label %if.end45

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %i_data43 = getelementptr i8, ptr %call, i32 -188
  %63 = ptrtoint ptr %i_data43 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i_data43, align 4
  %i_lenEAttr = getelementptr i8, ptr %call, i32 -224
  %65 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr44 = getelementptr i8, ptr %64, i32 %66
  br label %if.end45

if.end45:                                         ; preds = %if.else, %cleanup
  %ea.1 = phi ptr [ %add.ptr, %cleanup ], [ %add.ptr44, %if.else ]
  %s_blocksize46 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %s_blocksize46 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %s_blocksize46, align 16
  %69 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load.i256 = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask.i257 = and i32 %bf.load.i256, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i257)
  %cmp.i258 = icmp eq i32 %bf.lshr.mask.i257, 1610612736
  br i1 %cmp.i258, label %if.then.i261, label %if.end45.udf_ext0_offset.exit270_crit_edge

if.end45.udf_ext0_offset.exit270_crit_edge:       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit270

if.then.i261:                                     ; preds = %if.end45
  %70 = and i32 %bf.load.i256, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i260 = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i260, label %if.else.i.i264, label %if.then.i261.udf_ext0_offset.exit270_crit_edge

if.then.i261.udf_ext0_offset.exit270_crit_edge:   ; preds = %if.then.i261
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit270

if.else.i.i264:                                   ; preds = %if.then.i261
  %71 = and i32 %bf.load.i256, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool4.not.i.i262 = icmp eq i32 %71, 0
  %i_lenEAttr7.i.i263 = getelementptr i8, ptr %call, i32 -224
  %72 = ptrtoint ptr %i_lenEAttr7.i.i263 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %i_lenEAttr7.i.i263, align 8
  br i1 %tobool4.not.i.i262, label %if.else6.i.i268, label %if.then5.i.i266

if.then5.i.i266:                                  ; preds = %if.else.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i265 = add i32 %73, 216
  br label %udf_ext0_offset.exit270

if.else6.i.i268:                                  ; preds = %if.else.i.i264
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i267 = add i32 %73, 176
  br label %udf_ext0_offset.exit270

udf_ext0_offset.exit270:                          ; preds = %if.else6.i.i268, %if.then5.i.i266, %if.then.i261.udf_ext0_offset.exit270_crit_edge, %if.end45.udf_ext0_offset.exit270_crit_edge
  %retval.0.i269 = phi i32 [ 0, %if.end45.udf_ext0_offset.exit270_crit_edge ], [ %add.i.i265, %if.then5.i.i266 ], [ %add8.i.i267, %if.else6.i.i268 ], [ 40, %if.then.i261.udf_ext0_offset.exit270_crit_edge ]
  %sub = sub i32 %68, %retval.0.i269
  %74 = ptrtoint ptr %symname to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %symname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %75)
  %cmp49 = icmp eq i8 %75, 47
  br i1 %cmp49, label %udf_ext0_offset.exit270.do.body_crit_edge, label %udf_ext0_offset.exit270.if.end55_crit_edge

udf_ext0_offset.exit270.if.end55_crit_edge:       ; preds = %udf_ext0_offset.exit270
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

udf_ext0_offset.exit270.do.body_crit_edge:        ; preds = %udf_ext0_offset.exit270
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %udf_ext0_offset.exit270.do.body_crit_edge
  %symname.addr.0 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %symname, %udf_ext0_offset.exit270.do.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %symname.addr.0, i32 1
  %76 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr, align 1
  %cmp53 = icmp eq i8 %77, 47
  br i1 %cmp53, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %ea.1 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %ea.1, align 1
  %lengthComponentIdent = getelementptr inbounds %struct.pathComponent, ptr %ea.1, i32 0, i32 1
  %79 = ptrtoint ptr %lengthComponentIdent to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %lengthComponentIdent, align 1
  %componentFileVersionNum = getelementptr inbounds %struct.pathComponent, ptr %ea.1, i32 0, i32 2
  %80 = ptrtoint ptr %componentFileVersionNum to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 0, ptr %componentFileVersionNum, align 1
  %81 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %81)
  %.pr283 = load i8, ptr %incdec.ptr, align 1
  br label %if.end55

if.end55:                                         ; preds = %do.end, %udf_ext0_offset.exit270.if.end55_crit_edge
  %82 = phi i8 [ %.pr283, %do.end ], [ %75, %udf_ext0_offset.exit270.if.end55_crit_edge ]
  %symname.addr.1 = phi ptr [ %incdec.ptr, %do.end ], [ %symname, %udf_ext0_offset.exit270.if.end55_crit_edge ]
  %elen.0 = phi i32 [ 4, %do.end ], [ 0, %udf_ext0_offset.exit270.if.end55_crit_edge ]
  %83 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -36, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool56.not279 = icmp eq i8 %82, 0
  br i1 %tobool56.not279, label %if.end55.while.end_crit_edge, label %if.end55.while.body_crit_edge

if.end55.while.body_crit_edge:                    ; preds = %if.end55
  br label %while.body

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %do.body126.while.body_crit_edge, %if.end55.while.body_crit_edge
  %elen.1282 = phi i32 [ %elen.0, %if.end55.while.body_crit_edge ], [ %add123, %do.body126.while.body_crit_edge ]
  %symname.addr.2280 = phi ptr [ %symname.addr.1, %if.end55.while.body_crit_edge ], [ %incdec.ptr127, %do.body126.while.body_crit_edge ]
  %add57 = add i32 %elen.1282, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add57, i32 %sub)
  %cmp58 = icmp ugt i32 %add57, %sub
  br i1 %cmp58, label %while.body.out_no_entry_crit_edge, label %if.end61

while.body.out_no_entry_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_entry

if.end61:                                         ; preds = %while.body
  %add.ptr62 = getelementptr i8, ptr %ea.1, i32 %elen.1282
  br label %do.body63

do.body63:                                        ; preds = %do.body63.do.body63_crit_edge, %if.end61
  %symname.addr.3 = phi ptr [ %symname.addr.2280, %if.end61 ], [ %incdec.ptr64, %do.body63.do.body63_crit_edge ]
  %incdec.ptr64 = getelementptr i8, ptr %symname.addr.3, i32 1
  %84 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %incdec.ptr64, align 1
  %86 = zext i8 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i8 %85, label %do.body63.do.body63_crit_edge [
    i8 0, label %do.body63.do.end71_crit_edge
    i8 47, label %do.body63.do.end71_crit_edge291
  ]

do.body63.do.end71_crit_edge291:                  ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.body63.do.end71_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.body63.do.body63_crit_edge:                    ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body63

do.end71:                                         ; preds = %do.body63.do.end71_crit_edge, %do.body63.do.end71_crit_edge291
  %87 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 5, ptr %add.ptr62, align 1
  %lengthComponentIdent73 = getelementptr inbounds %struct.pathComponent, ptr %add.ptr62, i32 0, i32 1
  %88 = ptrtoint ptr %lengthComponentIdent73 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %lengthComponentIdent73, align 1
  %componentFileVersionNum74 = getelementptr inbounds %struct.pathComponent, ptr %add.ptr62, i32 0, i32 2
  %89 = ptrtoint ptr %componentFileVersionNum74 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 2)
  store i16 0, ptr %componentFileVersionNum74, align 1
  %90 = ptrtoint ptr %symname.addr.2280 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %symname.addr.2280, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %91)
  %cmp76 = icmp eq i8 %91, 46
  br i1 %cmp76, label %if.then78, label %do.end71.if.end97_crit_edge

do.end71.if.end97_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then78:                                        ; preds = %do.end71
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr64 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %symname.addr.2280 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %92 = zext i32 %sub.ptr.sub to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %sub.ptr.sub, label %if.then78.if.end97_crit_edge [
    i32 1, label %if.then81
    i32 2, label %land.lhs.true
  ]

if.then78.if.end97_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %add.ptr62, align 1
  br label %if.end119

land.lhs.true:                                    ; preds = %if.then78
  %arrayidx89 = getelementptr i8, ptr %symname.addr.2280, i32 1
  %94 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %95)
  %cmp91 = icmp eq i8 %95, 46
  br i1 %cmp91, label %if.then93, label %land.lhs.true.if.end97_crit_edge

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then93:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %add.ptr62, align 1
  br label %if.end119

if.end97:                                         ; preds = %land.lhs.true.if.end97_crit_edge, %if.then78.if.end97_crit_edge, %do.end71.if.end97_crit_edge
  %97 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load1_noabort(i32 %97)
  %.pr = load i8, ptr %add.ptr62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr)
  %cmp100 = icmp eq i8 %.pr, 5
  br i1 %cmp100, label %if.then102, label %if.end97.if.end119_crit_edge

if.end97.if.end119_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then102:                                       ; preds = %if.end97
  %sub.ptr.lhs.cast103 = ptrtoint ptr %incdec.ptr64 to i32
  %sub.ptr.rhs.cast104 = ptrtoint ptr %symname.addr.2280 to i32
  %sub.ptr.sub105 = sub i32 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  %call106 = call i32 @udf_put_filename(ptr noundef %3, ptr noundef %symname.addr.2280, i32 noundef %sub.ptr.sub105, ptr noundef nonnull %call7.i, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  %add111 = add i32 %call106, %add57
  call void @__sanitizer_cov_trace_cmp4(i32 %add111, i32 %sub)
  %cmp112 = icmp ugt i32 %add111, %sub
  %or.cond = select i1 %tobool107.not, i1 true, i1 %cmp112
  br i1 %or.cond, label %if.then102.out_no_entry_crit_edge, label %if.else115

if.then102.out_no_entry_crit_edge:                ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_entry

if.else115:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %conv116 = trunc i32 %call106 to i8
  %98 = ptrtoint ptr %lengthComponentIdent73 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv116, ptr %lengthComponentIdent73, align 1
  %componentIdent = getelementptr inbounds %struct.pathComponent, ptr %add.ptr62, i32 0, i32 3
  %99 = call ptr @memcpy(ptr %componentIdent, ptr %call7.i, i32 %call106)
  br label %if.end119

if.end119:                                        ; preds = %if.else115, %if.end97.if.end119_crit_edge, %if.then93, %if.then81
  %100 = ptrtoint ptr %lengthComponentIdent73 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %lengthComponentIdent73, align 1
  %conv121 = zext i8 %101 to i32
  %add123 = add i32 %add57, %conv121
  %102 = ptrtoint ptr %incdec.ptr64 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %incdec.ptr64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool124.not = icmp eq i8 %103, 0
  br i1 %tobool124.not, label %if.end119.while.end_crit_edge, label %if.end119.do.body126_crit_edge

if.end119.do.body126_crit_edge:                   ; preds = %if.end119
  br label %do.body126

if.end119.while.end_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body126:                                       ; preds = %do.body126.do.body126_crit_edge, %if.end119.do.body126_crit_edge
  %symname.addr.4 = phi ptr [ %incdec.ptr127, %do.body126.do.body126_crit_edge ], [ %incdec.ptr64, %if.end119.do.body126_crit_edge ]
  %incdec.ptr127 = getelementptr i8, ptr %symname.addr.4, i32 1
  %104 = ptrtoint ptr %incdec.ptr127 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %incdec.ptr127, align 1
  %106 = zext i8 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %105, label %do.body126.while.body_crit_edge [
    i8 47, label %do.body126.do.body126_crit_edge
    i8 0, label %do.body126.while.end_crit_edge
  ]

do.body126.while.end_crit_edge:                   ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.body126.do.body126_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body126

do.body126.while.body_crit_edge:                  ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %do.body126.while.end_crit_edge, %if.end119.while.end_crit_edge, %if.end55.while.end_crit_edge
  %elen.1.lcssa = phi i32 [ %elen.0, %if.end55.while.end_crit_edge ], [ %add123, %do.body126.while.end_crit_edge ], [ %add123, %if.end119.while.end_crit_edge ]
  %107 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %epos, align 4
  %tobool.not.i271 = icmp eq ptr %108, null
  br i1 %tobool.not.i271, label %while.end.brelse.exit273_crit_edge, label %if.then.i272

while.end.brelse.exit273_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit273

if.then.i272:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %108) #8
  br label %brelse.exit273

brelse.exit273:                                   ; preds = %if.then.i272, %while.end.brelse.exit273_crit_edge
  %conv135 = sext i32 %elen.1.lcssa to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 14
  %109 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %109)
  store i64 %conv135, ptr %i_size, align 8
  %110 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load137 = load i32, ptr %i_alloc_type, align 8
  %bf.lshr138.mask = and i32 %bf.load137, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr138.mask)
  %cmp139 = icmp eq i32 %bf.lshr138.mask, 1610612736
  br i1 %cmp139, label %if.then141, label %if.else144

if.then141:                                       ; preds = %brelse.exit273
  call void @__sanitizer_cov_trace_pc() #10
  %i_lenAlloc = getelementptr i8, ptr %call, i32 -220
  %111 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %elen.1.lcssa, ptr %i_lenAlloc, align 4
  br label %if.end145

if.else144:                                       ; preds = %brelse.exit273
  call void @__sanitizer_cov_trace_pc() #10
  call void @udf_truncate_tail_extent(ptr noundef %call) #8
  br label %if.end145

if.end145:                                        ; preds = %if.else144, %if.then141
  call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #8
  call void @up_write(ptr noundef %i_data_sem) #8
  %call147 = call fastcc i32 @udf_add_nondir(ptr noundef %dentry, ptr noundef %call)
  %112 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call147, ptr %err, align 4
  br label %out

out:                                              ; preds = %out_no_entry, %if.end145
  call void @kfree(ptr noundef %call7.i) #8
  %113 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %err, align 4
  br label %cleanup149

out_no_entry:                                     ; preds = %if.then102.out_no_entry_crit_edge, %while.body.out_no_entry_crit_edge, %cleanup.thread, %if.then5
  call void @up_write(ptr noundef %i_data_sem) #8
  call void @drop_nlink(ptr noundef %call) #8
  call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #8
  call void @discard_new_inode(ptr noundef %call) #8
  br label %out

cleanup149:                                       ; preds = %out, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %114, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_mkdir(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %err = alloca i32, align 4
  %tmp40 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %0 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %1 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %2 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %3 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %err, align 4, !annotation !27
  %4 = or i16 %mode, 16384
  %call2 = tail call ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext %4) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_op = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 7
  %6 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udf_dir_inode_operations, ptr %i_op, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 44
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @udf_dir_operations, ptr %7, align 8
  %call6 = call fastcc ptr @udf_add_entry(ptr noundef %call2, ptr noundef null, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %err)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @drop_nlink(ptr noundef %call2) #8
  call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #8
  call void @discard_new_inode(ptr noundef %call2) #8
  br label %out

if.end8:                                          ; preds = %if.end
  call void @set_nlink(ptr noundef %call2, i32 noundef 2) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %call2, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s_blocksize, align 16
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %icb = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4
  %14 = ptrtoint ptr %icb to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %icb, align 1
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %i_location = getelementptr i8, ptr %dir, i32 -240
  %15 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %15)
  %.unpack = load i32, ptr %i_location, align 8
  %.elt83 = getelementptr i8, ptr %dir, i32 -236
  %16 = ptrtoint ptr %.elt83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack84 = load i32, ptr %.elt83, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack84, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %17 = call i32 @llvm.bswap.i32(i32 %.unpack) #8
  %18 = call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %19 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %17, ptr %extLocation, align 1
  %tmp.sroa.4.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %tmp.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 %18, ptr %tmp.sroa.4.0.extLocation.sroa_idx, align 1
  %i_unique = getelementptr i8, ptr %dir, i32 -232
  %21 = ptrtoint ptr %i_unique to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %i_unique, align 8
  %conv10 = trunc i64 %22 to i32
  %23 = call i32 @llvm.bswap.i32(i32 %conv10)
  %impUse12 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 2, i32 2
  %24 = ptrtoint ptr %impUse12 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %impUse12, align 1
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %25 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %fileCharacteristics, align 1
  %call14 = call i32 @udf_write_fi(ptr noundef %call2, ptr noundef nonnull %cfi, ptr noundef nonnull %call6, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null)
  %26 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fibh, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end8.brelse.exit_crit_edge, label %if.then.i

if.end8.brelse.exit_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %27) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %if.end8.brelse.exit_crit_edge
  call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #8
  %call15 = call fastcc ptr @udf_add_entry(ptr noundef %dir, ptr noundef %dentry, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %err)
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @clear_nlink(ptr noundef %call2) #8
  call void @__mark_inode_dirty(ptr noundef %call2, i32 noundef 7) #8
  call void @discard_new_inode(ptr noundef %call2) #8
  br label %out

if.end18:                                         ; preds = %brelse.exit
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_blocksize20 = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize20, align 16
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %icb to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %32, ptr %icb, align 1
  %i_location26 = getelementptr i8, ptr %call2, i32 -240
  %34 = ptrtoint ptr %i_location26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.unpack85 = load i32, ptr %i_location26, align 8
  %.elt86 = getelementptr i8, ptr %call2, i32 -236
  %35 = ptrtoint ptr %.elt86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.unpack87 = load i32, ptr %.elt86, align 4
  %in.sroa.2.4.extract.shift.i89 = lshr i32 %.unpack87, 16
  %in.sroa.2.4.extract.trunc.i90 = trunc i32 %in.sroa.2.4.extract.shift.i89 to i16
  %36 = call i32 @llvm.bswap.i32(i32 %.unpack85) #8
  %37 = call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i90) #8
  %38 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %36, ptr %extLocation, align 1
  %39 = ptrtoint ptr %tmp.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %37, ptr %tmp.sroa.4.0.extLocation.sroa_idx, align 1
  %i_unique27 = getelementptr i8, ptr %call2, i32 -232
  %40 = ptrtoint ptr %i_unique27 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_unique27, align 8
  %conv29 = trunc i64 %41 to i32
  %42 = call i32 @llvm.bswap.i32(i32 %conv29)
  %43 = ptrtoint ptr %impUse12 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %42, ptr %impUse12, align 1
  %44 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fileCharacteristics, align 1
  %46 = or i8 %45, 2
  store i8 %46, ptr %fileCharacteristics, align 1
  %call39 = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef nonnull %cfi, ptr noundef nonnull %call15, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null)
  call void @inc_nlink(ptr noundef %dir) #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp40) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp40, ptr noundef %dir) #8
  %47 = call ptr @memcpy(ptr %i_mtime, ptr %tmp40, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp40) #8
  %48 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %call2) #8
  %49 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fibh, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %0, align 4
  %cmp.not = icmp eq ptr %50, %52
  %tobool.not.i91 = icmp eq ptr %52, null
  %or.cond = or i1 %cmp.not, %tobool.not.i91
  br i1 %or.cond, label %if.end18.if.end45_crit_edge, label %if.then.i92

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then.i92:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %52) #8
  %53 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then.i92, %if.end18.if.end45_crit_edge
  %54 = phi ptr [ %.pr, %if.then.i92 ], [ %50, %if.end18.if.end45_crit_edge ]
  %tobool.not.i94 = icmp eq ptr %54, null
  br i1 %tobool.not.i94, label %if.end45.brelse.exit96_crit_edge, label %if.then.i95

if.end45.brelse.exit96_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit96

if.then.i95:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %54) #8
  br label %brelse.exit96

brelse.exit96:                                    ; preds = %if.then.i95, %if.end45.brelse.exit96_crit_edge
  %55 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %err, align 4
  br label %out

out:                                              ; preds = %brelse.exit96, %if.then17, %if.then7
  %56 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %57, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_rmdir(ptr noundef %dir, ptr nocapture noundef readonly %dentry) #0 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %tmp23 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %2 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %3 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %4 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %call2 = call fastcc ptr @udf_find_entry(ptr noundef %dir, ptr noundef %d_name, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi)
  %tobool.not.i = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call2 to i32
  %spec.select = select i1 %tobool.not.i, i32 -2, i32 %5
  br label %out

if.end6:                                          ; preds = %entry
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %7 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %8 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %9 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %11, i32 noundef %8, i16 noundef zeroext %9, i32 noundef 0) #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %13)
  %cmp.not = icmp eq i32 %call.i, %13
  br i1 %cmp.not, label %if.end9, label %if.end6.end_rmdir_crit_edge

if.end6.end_rmdir_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_rmdir

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc i32 @empty_dir(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.end_rmdir_crit_edge, label %if.end13

if.end9.end_rmdir_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_rmdir

if.end13:                                         ; preds = %if.end9
  %fileCharacteristics.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %14 = ptrtoint ptr %fileCharacteristics.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fileCharacteristics.i, align 1
  %16 = or i8 %15, 4
  store i8 %16, ptr %fileCharacteristics.i, align 1
  %17 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 33
  %19 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %s_flags.i.i, align 4
  %23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i49 = icmp eq i32 %23, 0
  br i1 %tobool.not.i49, label %if.end13.udf_delete_entry.exit_crit_edge, label %if.then.i

if.end13.udf_delete_entry.exit_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_delete_entry.exit

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %icb.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4
  %24 = call ptr @memset(ptr %icb.i, i32 0, i32 16)
  br label %udf_delete_entry.exit

udf_delete_entry.exit:                            ; preds = %if.then.i, %if.end13.udf_delete_entry.exit_crit_edge
  %call2.i = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef nonnull %cfi, ptr noundef nonnull %call2, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null) #8
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp18.not = icmp eq i32 %27, 2
  br i1 %cmp18.not, label %udf_delete_entry.exit.if.end21_crit_edge, label %if.then19

udf_delete_entry.exit.if.end21_crit_edge:         ; preds = %udf_delete_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %udf_delete_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_sb20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %i_sb20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb20, align 4
  call void (ptr, ptr, ptr, ...) @_udf_warn(ptr noundef %29, ptr noundef nonnull @__func__.udf_rmdir, ptr noundef nonnull @.str.6, i32 noundef %27) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %udf_delete_entry.exit.if.end21_crit_edge
  call void @clear_nlink(ptr noundef %1) #8
  %i_size = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %30 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %i_size, align 8
  call void @drop_nlink(ptr noundef %dir) #8
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  %i_ctime22 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp23) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp23, ptr noundef %1) #8
  %31 = call ptr @memcpy(ptr %i_mtime, ptr %tmp23, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp23) #8
  %32 = call ptr @memcpy(ptr %i_ctime22, ptr %i_mtime, i32 16)
  %33 = call ptr @memmove(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  br label %end_rmdir

end_rmdir:                                        ; preds = %if.end21, %if.end9.end_rmdir_crit_edge, %if.end6.end_rmdir_crit_edge
  %retval1.0 = phi i32 [ -5, %if.end6.end_rmdir_crit_edge ], [ 0, %if.end21 ], [ -39, %if.end9.end_rmdir_crit_edge ]
  %34 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fibh, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %cmp24.not = icmp eq ptr %35, %37
  %tobool.not.i50 = icmp eq ptr %37, null
  %or.cond = or i1 %cmp24.not, %tobool.not.i50
  br i1 %or.cond, label %end_rmdir.if.end27_crit_edge, label %if.then.i51

end_rmdir.if.end27_crit_edge:                     ; preds = %end_rmdir
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then.i51:                                      ; preds = %end_rmdir
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %37) #8
  %38 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then.i51, %end_rmdir.if.end27_crit_edge
  %39 = phi ptr [ %.pr, %if.then.i51 ], [ %35, %end_rmdir.if.end27_crit_edge ]
  %tobool.not.i52 = icmp eq ptr %39, null
  br i1 %tobool.not.i52, label %if.end27.out_crit_edge, label %if.then.i53

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then.i53:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %39) #8
  br label %out

out:                                              ; preds = %if.then.i53, %if.end27.out_crit_edge, %if.then
  %retval1.1 = phi i32 [ %retval1.0, %if.end27.out_crit_edge ], [ %retval1.0, %if.then.i53 ], [ %spec.select, %if.then ]
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_mknod(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode, i32 noundef %rdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %rdev, -267387136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @init_special_inode(ptr noundef %call1, i16 noundef zeroext %mode, i32 noundef %rdev) #8
  %call6 = tail call fastcc i32 @udf_add_nondir(ptr noundef %dentry, ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then3 ], [ %call6, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_rename(ptr nocapture noundef readnone %mnt_userns, ptr noundef %old_dir, ptr nocapture noundef readonly %old_dentry, ptr noundef %new_dir, ptr noundef %new_dentry, i32 noundef %flags) #0 align 64 {
entry:
  %ofibh = alloca %struct.udf_fileident_bh, align 4
  %nfibh = alloca %struct.udf_fileident_bh, align 4
  %ocfi = alloca %struct.fileIdentDesc, align 1
  %ncfi = alloca %struct.fileIdentDesc, align 1
  %retval2 = alloca i32, align 4
  %offset = alloca i32, align 4
  %tmp84 = alloca %struct.timespec64, align 8
  %tmp96 = alloca %struct.timespec64, align 8
  %tmp99 = alloca %struct.timespec64, align 8
  %tmp102 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_inode.i229 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i229 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i229, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ofibh) #8
  %4 = getelementptr inbounds %struct.udf_fileident_bh, ptr %ofibh, i32 0, i32 1
  %5 = call ptr @memset(ptr %ofibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %nfibh) #8
  %6 = getelementptr inbounds %struct.udf_fileident_bh, ptr %nfibh, i32 0, i32 1
  %7 = call ptr @memset(ptr %nfibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %ocfi) #8
  %8 = call ptr @memset(ptr %ocfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %ncfi) #8
  %9 = call ptr @memset(ptr %ncfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval2) #8
  %10 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -2, ptr %retval2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup145_crit_edge

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup145

if.end:                                           ; preds = %entry
  %d_name = getelementptr inbounds %struct.dentry, ptr %old_dentry, i32 0, i32 4
  %call4 = call fastcc ptr @udf_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %ofibh, ptr noundef nonnull %ocfi)
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call4 to i32
  %12 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %retval2, align 4
  br label %if.end144

if.end8:                                          ; preds = %if.end
  %13 = ptrtoint ptr %ofibh to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ofibh, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %cmp.not = icmp eq ptr %14, %16
  %tobool.not.i = icmp eq ptr %16, null
  %or.cond = or i1 %cmp.not, %tobool.not.i
  br i1 %or.cond, label %if.end8.if.end11_crit_edge, label %if.then.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %16) #8
  %17 = ptrtoint ptr %ofibh to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load ptr, ptr %ofibh, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.end8.if.end11_crit_edge
  %18 = phi ptr [ %.pr, %if.then.i ], [ %14, %if.end8.if.end11_crit_edge ]
  %tobool.not.i230 = icmp eq ptr %18, null
  br i1 %tobool.not.i230, label %if.end11.brelse.exit232_crit_edge, label %if.then.i231

if.end11.brelse.exit232_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit232

if.then.i231:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %18) #8
  br label %brelse.exit232

brelse.exit232:                                   ; preds = %if.then.i231, %if.end11.brelse.exit232_crit_edge
  %icb = getelementptr inbounds %struct.fileIdentDesc, ptr %ocfi, i32 0, i32 4
  %tobool13.not = icmp eq ptr %call4, null
  br i1 %tobool13.not, label %brelse.exit232.if.end144_crit_edge, label %lor.lhs.false

brelse.exit232.if.end144_crit_edge:               ; preds = %brelse.exit232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

lor.lhs.false:                                    ; preds = %brelse.exit232
  %extLocation.coerce.sroa.2.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %ocfi, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %extLocation.coerce.sroa.2.0.copyload = load i16, ptr %extLocation.coerce.sroa.2.0.extLocation.sroa_idx, align 1
  %20 = call i16 @llvm.bswap.i16(i16 %extLocation.coerce.sroa.2.0.copyload) #8
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %ocfi, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %extLocation to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %extLocation.coerce.sroa.0.0.copyload = load i32, ptr %extLocation, align 1
  %22 = call i32 @llvm.bswap.i32(i32 %extLocation.coerce.sroa.0.0.copyload) #8
  %i_sb = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 8
  %23 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i_sb, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %24, i32 noundef %22, i16 noundef zeroext %20, i32 noundef 0) #8
  %i_ino = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_ino, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %26)
  %cmp15.not = icmp eq i32 %call.i, %26
  br i1 %cmp15.not, label %if.end17, label %lor.lhs.false.if.end144_crit_edge

lor.lhs.false.if.end144_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.end17:                                         ; preds = %lor.lhs.false
  %d_name18 = getelementptr inbounds %struct.dentry, ptr %new_dentry, i32 0, i32 4
  %call19 = call fastcc ptr @udf_find_entry(ptr noundef %new_dir, ptr noundef %d_name18, ptr noundef nonnull %nfibh, ptr noundef nonnull %ncfi)
  %cmp.i233 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call19 to i32
  %28 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %retval2, align 4
  br label %brelse.exit256

if.end23:                                         ; preds = %if.end17
  %tobool24.not = icmp eq ptr %call19, null
  br i1 %tobool24.not, label %if.end23.if.end34_crit_edge, label %land.lhs.true

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end23
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then26:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %nfibh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nfibh, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %6, align 4
  %cmp29.not = icmp eq ptr %30, %32
  %tobool.not.i234 = icmp eq ptr %32, null
  %or.cond283 = or i1 %cmp29.not, %tobool.not.i234
  br i1 %or.cond283, label %if.then26.if.end32_crit_edge, label %if.then.i235

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then.i235:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %32) #8
  %33 = ptrtoint ptr %nfibh to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr270 = load ptr, ptr %nfibh, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then.i235, %if.then26.if.end32_crit_edge
  %34 = phi ptr [ %.pr270, %if.then.i235 ], [ %30, %if.then26.if.end32_crit_edge ]
  %tobool.not.i237 = icmp eq ptr %34, null
  br i1 %tobool.not.i237, label %if.end32.if.end34_crit_edge, label %if.then.i238

if.end32.if.end34_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then.i238:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %34) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then.i238, %if.end32.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %nfi.0 = phi ptr [ %call19, %land.lhs.true.if.end34_crit_edge ], [ null, %if.end23.if.end34_crit_edge ], [ null, %if.end32.if.end34_crit_edge ], [ null, %if.then.i238 ]
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %1, align 8
  %37 = and i16 %36, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %37)
  %cmp36 = icmp eq i16 %37, 16384
  br i1 %cmp36, label %if.then38, label %if.end34.if.end76_crit_edge

if.end34.if.end76_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then38:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #8
  %i_alloc_type.i = getelementptr i8, ptr %1, i32 -192
  %38 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i240 = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i240, label %if.then.i241, label %if.then38.udf_ext0_offset.exit_crit_edge

if.then38.udf_ext0_offset.exit_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.then.i241:                                     ; preds = %if.then38
  %39 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i241.udf_ext0_offset.exit_crit_edge

if.then.i241.udf_ext0_offset.exit_crit_edge:      ; preds = %if.then.i241
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.else.i.i:                                      ; preds = %if.then.i241
  %40 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool4.not.i.i = icmp eq i32 %40, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %1, i32 -224
  %41 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %42, 216
  br label %udf_ext0_offset.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %42, 176
  br label %udf_ext0_offset.exit

udf_ext0_offset.exit:                             ; preds = %if.else6.i.i, %if.then5.i.i, %if.then.i241.udf_ext0_offset.exit_crit_edge, %if.then38.udf_ext0_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then38.udf_ext0_offset.exit_crit_edge ], [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %if.then.i241.udf_ext0_offset.exit_crit_edge ]
  %43 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i, ptr %offset, align 4
  %tobool40.not = icmp eq ptr %3, null
  br i1 %tobool40.not, label %udf_ext0_offset.exit.if.end46_crit_edge, label %if.then41

udf_ext0_offset.exit.if.end46_crit_edge:          ; preds = %udf_ext0_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then41:                                        ; preds = %udf_ext0_offset.exit
  %44 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -39, ptr %retval2, align 4
  %call42 = call fastcc i32 @empty_dir(ptr noundef nonnull %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then41.cleanup.thread_crit_edge, label %if.then41.if.end46_crit_edge

if.then41.if.end46_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then41.cleanup.thread_crit_edge:               ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end46:                                         ; preds = %if.then41.if.end46_crit_edge, %udf_ext0_offset.exit.if.end46_crit_edge
  %45 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -5, ptr %retval2, align 4
  %46 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp47 = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %i_data = getelementptr i8, ptr %1, i32 -188
  %47 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i_data, align 4
  %49 = and i32 %bf.load, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool52.not = icmp eq i32 %49, 0
  %cond.neg = select i1 %tobool52.not, i32 -176, i32 -216
  %add.ptr = getelementptr i8, ptr %48, i32 %cond.neg
  br label %if.end62

if.else:                                          ; preds = %if.end46
  %call55 = call ptr @udf_bread(ptr noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %retval2) #8
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.else.cleanup.thread_crit_edge, label %if.end58

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call55, i32 0, i32 5
  %50 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %b_data, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end58, %if.then49
  %.sink = phi ptr [ %51, %if.end58 ], [ %add.ptr, %if.then49 ]
  %dir_bh.0 = phi ptr [ %call55, %if.end58 ], [ null, %if.then49 ]
  %i_sb59 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %i_sb59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %i_sb59, align 4
  %s_blocksize60 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %s_blocksize60 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_blocksize60, align 16
  %call61 = call ptr @udf_get_fileident(ptr noundef %.sink, i32 noundef %55, ptr noundef nonnull %offset) #8
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %if.end62.cleanup.thread_crit_edge, label %if.end65

if.end62.cleanup.thread_crit_edge:                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end65:                                         ; preds = %if.end62
  %extLocation68 = getelementptr inbounds %struct.fileIdentDesc, ptr %call61, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %extLocation68 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %extLocation68.coerce.sroa.0.0.copyload = load i32, ptr %extLocation68, align 1
  %extLocation68.coerce.sroa.2.0.extLocation68.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %call61, i32 0, i32 4, i32 1, i32 1
  %57 = ptrtoint ptr %extLocation68.coerce.sroa.2.0.extLocation68.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %extLocation68.coerce.sroa.2.0.copyload = load i16, ptr %extLocation68.coerce.sroa.2.0.extLocation68.sroa_idx, align 1
  %58 = call i32 @llvm.bswap.i32(i32 %extLocation68.coerce.sroa.0.0.copyload) #8
  %59 = call i16 @llvm.bswap.i16(i16 %extLocation68.coerce.sroa.2.0.copyload) #8
  %i_sb69 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %60 = ptrtoint ptr %i_sb69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i_sb69, align 4
  %call.i244 = call i32 @udf_get_pblock(ptr noundef %61, i32 noundef %58, i16 noundef zeroext %59, i32 noundef 0) #8
  %i_ino71 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 11
  %62 = ptrtoint ptr %i_ino71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %i_ino71, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i244, i32 %63)
  %cmp72.not = icmp eq i32 %call.i244, %63
  br i1 %cmp72.not, label %cleanup, label %if.end65.cleanup.thread_crit_edge

if.end65.cleanup.thread_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end65.cleanup.thread_crit_edge, %if.end62.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then41.cleanup.thread_crit_edge
  %dir_bh.1.ph = phi ptr [ %dir_bh.0, %if.end65.cleanup.thread_crit_edge ], [ %dir_bh.0, %if.end62.cleanup.thread_crit_edge ], [ null, %if.else.cleanup.thread_crit_edge ], [ null, %if.then41.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  br label %end_rename

cleanup:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #8
  br label %if.end76

if.end76:                                         ; preds = %cleanup, %if.end34.if.end76_crit_edge
  %dir_fi.2 = phi ptr [ %call61, %cleanup ], [ null, %if.end34.if.end76_crit_edge ]
  %dir_bh.2 = phi ptr [ %dir_bh.0, %cleanup ], [ null, %if.end34.if.end76_crit_edge ]
  %tobool77.not = icmp eq ptr %nfi.0, null
  br i1 %tobool77.not, label %if.then78, label %if.end76.if.end83_crit_edge

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.end76
  %call79 = call fastcc ptr @udf_add_entry(ptr noundef %new_dir, ptr noundef %new_dentry, ptr noundef nonnull %nfibh, ptr noundef nonnull %ncfi, ptr noundef nonnull %retval2)
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %if.then78.end_rename_crit_edge, label %if.then78.if.end83_crit_edge

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78.end_rename_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #10
  br label %end_rename

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %if.end76.if.end83_crit_edge
  %nfi.1 = phi ptr [ %nfi.0, %if.end76.if.end83_crit_edge ], [ %call79, %if.then78.if.end83_crit_edge ]
  %i_ctime = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp84) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp84, ptr noundef %1) #8
  %64 = call ptr @memcpy(ptr %i_ctime, ptr %tmp84, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp84) #8
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  %fileVersionNum = getelementptr inbounds %struct.fileIdentDesc, ptr %ocfi, i32 0, i32 1
  %65 = ptrtoint ptr %fileVersionNum to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %66 = load i16, ptr %fileVersionNum, align 1
  %fileVersionNum85 = getelementptr inbounds %struct.fileIdentDesc, ptr %ncfi, i32 0, i32 1
  %67 = ptrtoint ptr %fileVersionNum85 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 2)
  store i16 %66, ptr %fileVersionNum85, align 1
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %ocfi, i32 0, i32 2
  %68 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fileCharacteristics, align 1
  %fileCharacteristics86 = getelementptr inbounds %struct.fileIdentDesc, ptr %ncfi, i32 0, i32 2
  %70 = ptrtoint ptr %fileCharacteristics86 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %fileCharacteristics86, align 1
  %icb87 = getelementptr inbounds %struct.fileIdentDesc, ptr %ncfi, i32 0, i32 4
  %71 = call ptr @memcpy(ptr %icb87, ptr %icb, i32 16)
  %call89 = call i32 @udf_write_fi(ptr noundef %new_dir, ptr noundef nonnull %ncfi, ptr noundef nonnull %nfi.1, ptr noundef nonnull %nfibh, ptr noundef null, ptr noundef null)
  %call91 = call fastcc ptr @udf_find_entry(ptr noundef %old_dir, ptr noundef %d_name, ptr noundef nonnull %ofibh, ptr noundef nonnull %ocfi)
  %72 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fileCharacteristics, align 1
  %74 = or i8 %73, 4
  store i8 %74, ptr %fileCharacteristics, align 1
  %75 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 33
  %77 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %s_fs_info.i.i.i, align 16
  %s_flags.i.i = getelementptr inbounds %struct.udf_sb_info, ptr %78, i32 0, i32 17
  %79 = ptrtoint ptr %s_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %s_flags.i.i, align 4
  %81 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i245 = icmp eq i32 %81, 0
  br i1 %tobool.not.i245, label %if.end83.udf_delete_entry.exit_crit_edge, label %if.then.i246

if.end83.udf_delete_entry.exit_crit_edge:         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_delete_entry.exit

if.then.i246:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %82 = call ptr @memset(ptr %icb, i32 0, i32 16)
  br label %udf_delete_entry.exit

udf_delete_entry.exit:                            ; preds = %if.then.i246, %if.end83.udf_delete_entry.exit_crit_edge
  %call2.i = call i32 @udf_write_fi(ptr noundef %old_dir, ptr noundef nonnull %ocfi, ptr noundef %call91, ptr noundef nonnull %ofibh, ptr noundef null, ptr noundef null) #8
  %tobool93.not = icmp eq ptr %3, null
  br i1 %tobool93.not, label %udf_delete_entry.exit.if.end97_crit_edge, label %if.then94

udf_delete_entry.exit.if.end97_crit_edge:         ; preds = %udf_delete_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then94:                                        ; preds = %udf_delete_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  %i_ctime95 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp96) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp96, ptr noundef nonnull %3) #8
  %83 = call ptr @memcpy(ptr %i_ctime95, ptr %tmp96, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp96) #8
  call void @drop_nlink(ptr noundef nonnull %3) #8
  call void @__mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %udf_delete_entry.exit.if.end97_crit_edge
  %i_ctime98 = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %old_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp99) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp99, ptr noundef %old_dir) #8
  %84 = call ptr @memcpy(ptr %i_mtime, ptr %tmp99, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp99) #8
  %85 = call ptr @memcpy(ptr %i_ctime98, ptr %i_mtime, i32 16)
  %i_ctime100 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 17
  %i_mtime101 = getelementptr inbounds %struct.inode, ptr %new_dir, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp102) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp102, ptr noundef %new_dir) #8
  %86 = call ptr @memcpy(ptr %i_mtime101, ptr %tmp102, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp102) #8
  %87 = call ptr @memcpy(ptr %i_ctime100, ptr %i_mtime101, i32 16)
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #8
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #8
  %tobool103.not = icmp eq ptr %dir_fi.2, null
  br i1 %tobool103.not, label %if.end97.if.end122_crit_edge, label %if.then104

if.end97.if.end122_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then104:                                       ; preds = %if.end97
  %extLocation106 = getelementptr inbounds %struct.fileIdentDesc, ptr %dir_fi.2, i32 0, i32 4, i32 1
  %i_location = getelementptr i8, ptr %new_dir, i32 -240
  %88 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %88)
  %.unpack = load i32, ptr %i_location, align 8
  %.elt226 = getelementptr i8, ptr %new_dir, i32 -236
  %89 = ptrtoint ptr %.elt226 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.unpack227 = load i32, ptr %.elt226, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack227, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %90 = call i32 @llvm.bswap.i32(i32 %.unpack) #8
  %91 = call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %92 = ptrtoint ptr %extLocation106 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %90, ptr %extLocation106, align 1
  %tmp107.sroa.4.0.extLocation106.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %dir_fi.2, i32 0, i32 4, i32 1, i32 1
  %93 = ptrtoint ptr %tmp107.sroa.4.0.extLocation106.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %91, ptr %tmp107.sroa.4.0.extLocation106.sroa_idx, align 1
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %dir_fi.2, i32 0, i32 5
  %94 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %lengthOfImpUse.i, align 1
  %96 = call i16 @llvm.bswap.i16(i16 %95) #8
  %conv.i = zext i16 %96 to i32
  %lengthFileIdent.i = getelementptr inbounds %struct.fileIdentDesc, ptr %dir_fi.2, i32 0, i32 3
  %97 = ptrtoint ptr %lengthFileIdent.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %lengthFileIdent.i, align 1
  %conv1.i = zext i8 %98 to i32
  %add2.i = add nuw nsw i32 %conv.i, 41
  %add3.i = add nuw nsw i32 %add2.i, %conv1.i
  %and.i = and i32 %add3.i, 262140
  call void @udf_update_tag(ptr noundef nonnull %dir_fi.2, i32 noundef %and.i) #8
  %i_alloc_type110 = getelementptr i8, ptr %1, i32 -192
  %99 = ptrtoint ptr %i_alloc_type110 to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load111 = load i32, ptr %i_alloc_type110, align 8
  %bf.lshr112.mask = and i32 %bf.load111, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr112.mask)
  %cmp113 = icmp eq i32 %bf.lshr112.mask, 1610612736
  br i1 %cmp113, label %if.then115, label %if.else116

if.then115:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #8
  br label %if.end117

if.else116:                                       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #10
  call void @mark_buffer_dirty_inode(ptr noundef %dir_bh.2, ptr noundef %1) #8
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.then115
  call void @drop_nlink(ptr noundef %old_dir) #8
  call void @__mark_inode_dirty(ptr noundef %old_dir, i32 noundef 7) #8
  br i1 %tobool93.not, label %if.else120, label %if.then119

if.then119:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  call void @drop_nlink(ptr noundef nonnull %3) #8
  call void @__mark_inode_dirty(ptr noundef nonnull %3, i32 noundef 7) #8
  br label %if.end122

if.else120:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #10
  call void @inc_nlink(ptr noundef %new_dir) #8
  call void @__mark_inode_dirty(ptr noundef %new_dir, i32 noundef 7) #8
  br label %if.end122

if.end122:                                        ; preds = %if.else120, %if.then119, %if.end97.if.end122_crit_edge
  %tobool123.not = icmp eq ptr %call91, null
  br i1 %tobool123.not, label %if.end122.if.end133_crit_edge, label %if.then124

if.end122.if.end133_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then124:                                       ; preds = %if.end122
  %100 = ptrtoint ptr %ofibh to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ofibh, align 4
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %4, align 4
  %cmp127.not = icmp eq ptr %101, %103
  %tobool.not.i248 = icmp eq ptr %103, null
  %or.cond284 = or i1 %cmp127.not, %tobool.not.i248
  br i1 %or.cond284, label %if.then124.if.end131_crit_edge, label %if.then.i249

if.then124.if.end131_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

if.then.i249:                                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %103) #8
  %104 = ptrtoint ptr %ofibh to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr275 = load ptr, ptr %ofibh, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then.i249, %if.then124.if.end131_crit_edge
  %105 = phi ptr [ %.pr275, %if.then.i249 ], [ %101, %if.then124.if.end131_crit_edge ]
  %tobool.not.i251 = icmp eq ptr %105, null
  br i1 %tobool.not.i251, label %if.end131.if.end133_crit_edge, label %if.then.i252

if.end131.if.end133_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then.i252:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %105) #8
  br label %if.end133

if.end133:                                        ; preds = %if.then.i252, %if.end131.if.end133_crit_edge, %if.end122.if.end133_crit_edge
  %106 = ptrtoint ptr %retval2 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %retval2, align 4
  br label %end_rename

end_rename:                                       ; preds = %if.end133, %if.then78.end_rename_crit_edge, %cleanup.thread
  %nfi.2 = phi ptr [ %nfi.1, %if.end133 ], [ null, %if.then78.end_rename_crit_edge ], [ %nfi.0, %cleanup.thread ]
  %dir_bh.3 = phi ptr [ %dir_bh.2, %if.end133 ], [ %dir_bh.2, %if.then78.end_rename_crit_edge ], [ %dir_bh.1.ph, %cleanup.thread ]
  %tobool.not.i254 = icmp eq ptr %dir_bh.3, null
  br i1 %tobool.not.i254, label %end_rename.brelse.exit256_crit_edge, label %if.then.i255

end_rename.brelse.exit256_crit_edge:              ; preds = %end_rename
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit256

if.then.i255:                                     ; preds = %end_rename
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %dir_bh.3) #8
  br label %brelse.exit256

brelse.exit256:                                   ; preds = %if.then.i255, %end_rename.brelse.exit256_crit_edge, %if.then21
  %nfi.2279 = phi ptr [ %nfi.2, %end_rename.brelse.exit256_crit_edge ], [ %nfi.2, %if.then.i255 ], [ %call19, %if.then21 ]
  %tobool134.not = icmp eq ptr %nfi.2279, null
  br i1 %tobool134.not, label %brelse.exit256.if.end144_crit_edge, label %if.then135

brelse.exit256.if.end144_crit_edge:               ; preds = %brelse.exit256
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then135:                                       ; preds = %brelse.exit256
  %107 = ptrtoint ptr %nfibh to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nfibh, align 4
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %6, align 4
  %cmp138.not = icmp eq ptr %108, %110
  %tobool.not.i257 = icmp eq ptr %110, null
  %or.cond285 = or i1 %cmp138.not, %tobool.not.i257
  br i1 %or.cond285, label %if.then135.if.end142_crit_edge, label %if.then.i258

if.then135.if.end142_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

if.then.i258:                                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %110) #8
  %111 = ptrtoint ptr %nfibh to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr280 = load ptr, ptr %nfibh, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then.i258, %if.then135.if.end142_crit_edge
  %112 = phi ptr [ %.pr280, %if.then.i258 ], [ %108, %if.then135.if.end142_crit_edge ]
  %tobool.not.i260 = icmp eq ptr %112, null
  br i1 %tobool.not.i260, label %if.end142.if.end144_crit_edge, label %if.then.i261

if.end142.if.end144_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end144

if.then.i261:                                     ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %112) #8
  br label %if.end144

if.end144:                                        ; preds = %if.then.i261, %if.end142.if.end144_crit_edge, %brelse.exit256.if.end144_crit_edge, %lor.lhs.false.if.end144_crit_edge, %brelse.exit232.if.end144_crit_edge, %if.then6
  %113 = ptrtoint ptr %retval2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %retval2, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %if.end144, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ %114, %if.end144 ], [ -22, %entry.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval2) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %ncfi) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %ocfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %nfibh) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ofibh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udf_tmpfile(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, i16 noundef zeroext %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @udf_new_inode(ptr noundef %dir, i16 noundef zeroext %mode) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i_alloc_type = getelementptr i8, ptr %call, i32 -192
  %1 = ptrtoint ptr %i_alloc_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load = load i32, ptr %i_alloc_type, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  %spec.select = select i1 %cmp, ptr @udf_adinicb_aops, ptr @udf_aops
  %2 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 46, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select, ptr %2, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @udf_file_inode_operations, ptr %i_op, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @udf_file_operations, ptr %5, align 8
  tail call void @__mark_inode_dirty(ptr noundef %call, i32 noundef 7) #8
  tail call void @d_tmpfile(ptr noundef %dentry, ptr noundef %call) #8
  tail call void @unlock_new_inode(ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__udf_iget(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @udf_find_entry(ptr noundef %dir, ptr nocapture noundef readonly %child, ptr noundef %fibh, ptr noundef %cfi) unnamed_addr #0 align 64 {
entry:
  %f_pos = alloca i64, align 8
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_pos) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %0 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %eloc, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #8
  %1 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %elen, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #8
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %offset, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %3 = call ptr @memset(ptr %epos, i32 0, i32 16)
  %4 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %child, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %name = getelementptr inbounds %struct.qstr, ptr %child, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %9)
  %cmp1 = icmp eq i8 %9, 46
  br i1 %cmp1, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr i8, ptr %7, i32 1
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %11)
  %cmp6 = icmp ne i8 %11, 46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %12 = phi i1 [ true, %land.lhs.true.land.end_crit_edge ], [ true, %entry.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %i_alloc_type.i = getelementptr i8, ptr %dir, i32 -192
  %15 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i, label %if.then.i, label %udf_ext0_offset.exit

if.then.i:                                        ; preds = %land.end
  %16 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i256

if.else.i.i:                                      ; preds = %if.then.i
  %17 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i.i = icmp eq i32 %17, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %dir, i32 -224
  %18 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_lenEAttr7.i.i, align 8
  %. = select i1 %tobool4.not.i.i, i32 176, i32 216
  %add.i.i = add i32 %19, %.
  %conv9288313 = zext i32 %add.i.i to i64
  %i_size289314 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %20 = ptrtoint ptr %i_size289314 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %i_size289314, align 8
  %add290315 = add i64 %21, %conv9288313
  %22 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool4.not.i.i257 = icmp eq i32 %22, 0
  %i_lenEAttr7.i.i258 = getelementptr i8, ptr %dir, i32 -224
  %23 = ptrtoint ptr %i_lenEAttr7.i.i258 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %i_lenEAttr7.i.i258, align 8
  br i1 %tobool4.not.i.i257, label %if.else6.i.i263, label %if.then5.i.i261

udf_ext0_offset.exit:                             ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %25 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %i_size, align 8
  br label %udf_ext0_offset.exit265

if.then.i256:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %i_size289 = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %27 = ptrtoint ptr %i_size289 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %i_size289, align 8
  %add290 = add i64 %28, 40
  br label %udf_ext0_offset.exit265

if.then5.i.i261:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i260 = add i32 %24, 216
  br label %udf_ext0_offset.exit265

if.else6.i.i263:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i262 = add i32 %24, 176
  br label %udf_ext0_offset.exit265

udf_ext0_offset.exit265:                          ; preds = %if.else6.i.i263, %if.then5.i.i261, %if.then.i256, %udf_ext0_offset.exit
  %add291 = phi i64 [ %26, %udf_ext0_offset.exit ], [ %add290315, %if.then5.i.i261 ], [ %add290315, %if.else6.i.i263 ], [ %add290, %if.then.i256 ]
  %retval.0.i264 = phi i32 [ 0, %udf_ext0_offset.exit ], [ %add.i.i260, %if.then5.i.i261 ], [ %add8.i.i262, %if.else6.i.i263 ], [ 40, %if.then.i256 ]
  %conv11 = zext i32 %retval.0.i264 to i64
  %29 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv11, ptr %f_pos, align 8
  %ebh = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %30 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ebh, align 4
  %31 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %fibh, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 3
  %32 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %33, -1
  %and247 = and i32 %sub, %retval.0.i264
  %eoffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %34 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and247, ptr %eoffset, align 4
  %soffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %35 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and247, ptr %soffset, align 4
  %36 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp14.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp14.not, label %udf_ext0_offset.exit265.if.end59_crit_edge, label %if.then

udf_ext0_offset.exit265.if.end59_crit_edge:       ; preds = %udf_ext0_offset.exit265
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then:                                          ; preds = %udf_ext0_offset.exit265
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 2
  %37 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %38 to i64
  %shr299 = lshr i64 %conv11, %sh_prom
  %call17 = call signext i8 @inode_bmap(ptr noundef %dir, i64 noundef %shr299, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call17)
  %cmp19.not = icmp eq i8 %call17, 0
  br i1 %cmp19.not, label %if.end, label %if.then.out_err_crit_edge

if.then.out_err_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end:                                           ; preds = %if.then
  %39 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %offset, align 8
  %conv23 = trunc i64 %40 to i32
  %41 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %eloc, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %43 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %14, i32 noundef %42, i16 noundef zeroext %44, i32 noundef %conv23) #8
  %45 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %offset, align 8
  %inc = add i64 %46, 1
  store i64 %inc, ptr %offset, align 8
  %47 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom27 = zext i8 %48 to i64
  %shl = shl i64 %inc, %sh_prom27
  %49 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %elen, align 4
  %conv28 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv28)
  %cmp29 = icmp ult i64 %shl, %conv28
  br i1 %cmp29, label %if.then31, label %if.else50

if.then31:                                        ; preds = %if.end
  %51 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load33 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load33)
  %cmp35 = icmp ult i32 %bf.load33, 536870912
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %offset38 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %52 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset38, align 4
  %sub39 = add i32 %53, -8
  store i32 %sub39, ptr %offset38, align 4
  br label %if.end51

if.else:                                          ; preds = %if.then31
  %bf.lshr34.mask = and i32 %bf.load33, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr34.mask)
  %cmp43 = icmp eq i32 %bf.lshr34.mask, 536870912
  br i1 %cmp43, label %if.then45, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %offset46 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %54 = ptrtoint ptr %offset46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset46, align 4
  %sub47 = add i32 %55, -16
  store i32 %sub47, ptr %offset46, align 4
  br label %if.end51

if.else50:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %offset, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.else50, %if.then45, %if.else.if.end51_crit_edge, %if.then37
  %call52 = call ptr @udf_tread(ptr noundef %14, i32 noundef %call.i) #8
  %57 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call52, ptr %ebh, align 4
  %58 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call52, ptr %fibh, align 4
  %tobool.not = icmp eq ptr %call52, null
  br i1 %tobool.not, label %if.end51.if.end163.sink.split_crit_edge, label %if.end51.if.end59_crit_edge

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end51.if.end163.sink.split_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163.sink.split

if.end59:                                         ; preds = %if.end51.if.end59_crit_edge, %udf_ext0_offset.exit265.if.end59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %59 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %59, i32 noundef 3136, i32 noundef 254) #11
  %tobool61.not = icmp eq ptr %call7.i, null
  br i1 %tobool61.not, label %if.end59.out_err_crit_edge, label %while.cond.preheader

if.end59.out_err_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

while.cond.preheader:                             ; preds = %if.end59
  %60 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %add291)
  %cmp65302 = icmp slt i64 %61, %add291
  br i1 %cmp65302, label %while.body.lr.ph, label %while.cond.preheader.out_err_crit_edge

while.cond.preheader.out_err_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %lengthFileIdent = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %lengthOfImpUse = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 33
  %name152 = getelementptr inbounds %struct.qstr, ptr %child, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %copy_name.0303 = phi ptr [ null, %while.body.lr.ph ], [ %copy_name.4, %while.cond.backedge.while.body_crit_edge ]
  %call67 = call ptr @udf_fileident_read(ptr noundef %dir, ptr noundef nonnull %f_pos, ptr noundef %fibh, ptr noundef %cfi, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %while.body.out_err_crit_edge, label %if.end71

while.body.out_err_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end71:                                         ; preds = %while.body
  %62 = ptrtoint ptr %lengthFileIdent to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %lengthFileIdent, align 1
  %64 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fibh, align 4
  %66 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ebh, align 4
  %cmp74 = icmp eq ptr %65, %67
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i266 = getelementptr %struct.fileIdentDesc, ptr %call67, i32 1
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %call67, i32 0, i32 5
  %68 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %lengthOfImpUse.i, align 1
  %70 = call i16 @llvm.bswap.i16(i16 %69) #8
  %conv.i = zext i16 %70 to i32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i266, i32 %conv.i
  br label %if.end111

if.else78:                                        ; preds = %if.end71
  %71 = ptrtoint ptr %lengthOfImpUse to i32
  call void @__asan_loadN_noabort(i32 %71, i32 2)
  %72 = load i16, ptr %lengthOfImpUse, align 1
  %73 = call i16 @llvm.bswap.i16(i16 %72)
  %74 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %soffset, align 4
  %add80 = add i32 %75, 38
  %conv81 = zext i16 %73 to i32
  %add82 = add i32 %add80, %conv81
  %conv83 = zext i8 %63 to i32
  %add84 = add i32 %add82, %conv83
  call void @__sanitizer_cov_trace_cmp4(i32 %add84, i32 %conv83)
  %cmp86.not = icmp slt i32 %add84, %conv83
  br i1 %cmp86.not, label %if.else92, label %if.then88

if.then88:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %67, i32 0, i32 5
  %76 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %b_data, align 4
  %add.ptr91 = getelementptr i8, ptr %77, i32 %add82
  br label %if.end111

if.else92:                                        ; preds = %if.else78
  %tobool93.not = icmp eq ptr %copy_name.0303, null
  br i1 %tobool93.not, label %if.then94, label %if.else92.if.end100_crit_edge

if.else92.if.end100_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then94:                                        ; preds = %if.else92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i249 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3136, i32 noundef 254) #11
  %tobool96.not = icmp eq ptr %call7.i249, null
  br i1 %tobool96.not, label %if.then94.out_err_crit_edge, label %if.then94.if.end100_crit_edge

if.then94.if.end100_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then94.out_err_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end100:                                        ; preds = %if.then94.if.end100_crit_edge, %if.else92.if.end100_crit_edge
  %copy_name.1 = phi ptr [ %copy_name.0303, %if.else92.if.end100_crit_edge ], [ %call7.i249, %if.then94.if.end100_crit_edge ]
  %add.ptr.i267 = getelementptr %struct.fileIdentDesc, ptr %call67, i32 1
  %lengthOfImpUse.i268 = getelementptr inbounds %struct.fileIdentDesc, ptr %call67, i32 0, i32 5
  %79 = ptrtoint ptr %lengthOfImpUse.i268 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %lengthOfImpUse.i268, align 1
  %81 = call i16 @llvm.bswap.i16(i16 %80) #8
  %conv.i269 = zext i16 %81 to i32
  %add.ptr1.i270 = getelementptr i8, ptr %add.ptr.i267, i32 %conv.i269
  %sub103 = sub i32 0, %add82
  %82 = call ptr @memcpy(ptr %copy_name.1, ptr %add.ptr1.i270, i32 %sub103)
  %add.ptr105 = getelementptr i8, ptr %copy_name.1, i32 %conv83
  %idx.neg106 = sub i32 0, %add84
  %add.ptr107 = getelementptr i8, ptr %add.ptr105, i32 %idx.neg106
  %83 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ebh, align 4
  %b_data109 = getelementptr inbounds %struct.buffer_head, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %b_data109 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %b_data109, align 4
  %87 = call ptr @memcpy(ptr %add.ptr107, ptr %86, i32 %add84)
  br label %if.end111

if.end111:                                        ; preds = %if.end100, %if.then88, %if.then76
  %copy_name.4 = phi ptr [ %copy_name.0303, %if.then76 ], [ %copy_name.1, %if.end100 ], [ %copy_name.0303, %if.then88 ]
  %nameptr.3 = phi ptr [ %add.ptr1.i, %if.then76 ], [ %copy_name.1, %if.end100 ], [ %add.ptr91, %if.then88 ]
  %88 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %fileCharacteristics, align 1
  %90 = and i8 %89, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp114.not = icmp eq i8 %90, 0
  br i1 %cmp114.not, label %if.end111.if.end121_crit_edge, label %if.then116

if.end111.if.end121_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then116:                                       ; preds = %if.end111
  %91 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i = getelementptr inbounds %struct.udf_sb_info, ptr %92, i32 0, i32 17
  %93 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %s_flags.i, align 4
  %95 = and i32 %94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool118.not = icmp eq i32 %95, 0
  br i1 %tobool118.not, label %if.then116.while.cond.backedge_crit_edge, label %if.then116.if.end121_crit_edge

if.then116.if.end121_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then116.while.cond.backedge_crit_edge:         ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %udf_match.exit.while.cond.backedge_crit_edge, %if.end150.while.cond.backedge_crit_edge, %if.end140.while.cond.backedge_crit_edge, %if.then127.while.cond.backedge_crit_edge, %if.then116.while.cond.backedge_crit_edge
  %96 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %f_pos, align 8
  %cmp65 = icmp slt i64 %97, %add291
  br i1 %cmp65, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.out_err_crit_edge

while.cond.backedge.out_err_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end121:                                        ; preds = %if.then116.if.end121_crit_edge, %if.end111.if.end121_crit_edge
  %98 = and i8 %89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp125.not = icmp eq i8 %98, 0
  br i1 %cmp125.not, label %if.end121.if.end132_crit_edge, label %if.then127

if.end121.if.end132_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then127:                                       ; preds = %if.end121
  %99 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %s_fs_info.i.i, align 16
  %s_flags.i272 = getelementptr inbounds %struct.udf_sb_info, ptr %100, i32 0, i32 17
  %101 = ptrtoint ptr %s_flags.i272 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %s_flags.i272, align 4
  %103 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool129.not = icmp eq i32 %103, 0
  br i1 %tobool129.not, label %if.then127.while.cond.backedge_crit_edge, label %if.then127.if.end132_crit_edge

if.then127.if.end132_crit_edge:                   ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then127.while.cond.backedge_crit_edge:         ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end132:                                        ; preds = %if.then127.if.end132_crit_edge, %if.end121.if.end132_crit_edge
  %104 = and i8 %89, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool136.not = icmp eq i8 %104, 0
  %brmerge = select i1 %tobool136.not, i1 true, i1 %12
  br i1 %brmerge, label %if.end140, label %if.end132.out_ok_crit_edge

if.end132.out_ok_crit_edge:                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ok

if.end140:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool141.not = icmp eq i8 %63, 0
  br i1 %tobool141.not, label %if.end140.while.cond.backedge_crit_edge, label %if.end143

if.end140.while.cond.backedge_crit_edge:          ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.end143:                                        ; preds = %if.end140
  %conv144 = zext i8 %63 to i32
  %call145 = call i32 @udf_get_filename(ptr noundef %14, ptr noundef %nameptr.3, i32 noundef %conv144, ptr noundef nonnull %call7.i, i32 noundef 254) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %105 = inttoptr i32 %call145 to ptr
  br label %out_err

if.end150:                                        ; preds = %if.end143
  %106 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %child, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call145, i32 %107)
  %cmp.not.i = icmp eq i32 %call145, %107
  br i1 %cmp.not.i, label %udf_match.exit, label %if.end150.while.cond.backedge_crit_edge

if.end150.while.cond.backedge_crit_edge:          ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

udf_match.exit:                                   ; preds = %if.end150
  %108 = ptrtoint ptr %name152 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name152, align 8
  %bcmp.i = call i32 @bcmp(ptr nonnull %call7.i, ptr %109, i32 %call145) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i.not, label %udf_match.exit.out_ok_crit_edge, label %udf_match.exit.while.cond.backedge_crit_edge

udf_match.exit.while.cond.backedge_crit_edge:     ; preds = %udf_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

udf_match.exit.out_ok_crit_edge:                  ; preds = %udf_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ok

out_err:                                          ; preds = %if.then148, %while.cond.backedge.out_err_crit_edge, %if.then94.out_err_crit_edge, %while.body.out_err_crit_edge, %while.cond.preheader.out_err_crit_edge, %if.end59.out_err_crit_edge, %if.then.out_err_crit_edge
  %fi.2.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end59.out_err_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then.out_err_crit_edge ], [ %105, %if.then148 ], [ null, %while.cond.preheader.out_err_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then94.out_err_crit_edge ], [ inttoptr (i32 -5 to ptr), %while.body.out_err_crit_edge ], [ null, %while.cond.backedge.out_err_crit_edge ]
  %fname.0.ph = phi ptr [ null, %if.end59.out_err_crit_edge ], [ null, %if.then.out_err_crit_edge ], [ %call7.i, %if.then148 ], [ %call7.i, %while.cond.preheader.out_err_crit_edge ], [ %call7.i, %if.then94.out_err_crit_edge ], [ %call7.i, %while.body.out_err_crit_edge ], [ %call7.i, %while.cond.backedge.out_err_crit_edge ]
  %copy_name.5.ph = phi ptr [ null, %if.end59.out_err_crit_edge ], [ null, %if.then.out_err_crit_edge ], [ %copy_name.4, %if.then148 ], [ null, %while.cond.preheader.out_err_crit_edge ], [ null, %if.then94.out_err_crit_edge ], [ %copy_name.0303, %while.body.out_err_crit_edge ], [ %copy_name.4, %while.cond.backedge.out_err_crit_edge ]
  %110 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr = load ptr, ptr %ebh, align 4
  %111 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %fibh, align 4
  %cmp159.not = icmp eq ptr %112, %.pr
  %tobool.not.i276 = icmp eq ptr %.pr, null
  %or.cond = or i1 %tobool.not.i276, %cmp159.not
  br i1 %or.cond, label %out_err.if.end163_crit_edge, label %if.then.i277

out_err.if.end163_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then.i277:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %.pr) #8
  br label %if.end163.sink.split

if.end163.sink.split:                             ; preds = %if.then.i277, %if.end51.if.end163.sink.split_crit_edge
  %copy_name.5327.ph = phi ptr [ %copy_name.5.ph, %if.then.i277 ], [ null, %if.end51.if.end163.sink.split_crit_edge ]
  %fname.0326.ph = phi ptr [ %fname.0.ph, %if.then.i277 ], [ null, %if.end51.if.end163.sink.split_crit_edge ]
  %fi.2325.ph = phi ptr [ %fi.2.ph, %if.then.i277 ], [ inttoptr (i32 -5 to ptr), %if.end51.if.end163.sink.split_crit_edge ]
  %113 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fibh, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.end163.sink.split, %out_err.if.end163_crit_edge
  %copy_name.5327 = phi ptr [ %copy_name.5.ph, %out_err.if.end163_crit_edge ], [ %copy_name.5327.ph, %if.end163.sink.split ]
  %fname.0326 = phi ptr [ %fname.0.ph, %out_err.if.end163_crit_edge ], [ %fname.0326.ph, %if.end163.sink.split ]
  %fi.2325 = phi ptr [ %fi.2.ph, %out_err.if.end163_crit_edge ], [ %fi.2325.ph, %if.end163.sink.split ]
  %115 = phi ptr [ %112, %out_err.if.end163_crit_edge ], [ %114, %if.end163.sink.split ]
  %tobool.not.i279 = icmp eq ptr %115, null
  br i1 %tobool.not.i279, label %if.end163.out_ok_crit_edge, label %if.then.i280

if.end163.out_ok_crit_edge:                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ok

if.then.i280:                                     ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %115) #8
  br label %out_ok

out_ok:                                           ; preds = %if.then.i280, %if.end163.out_ok_crit_edge, %udf_match.exit.out_ok_crit_edge, %if.end132.out_ok_crit_edge
  %fi.3 = phi ptr [ %fi.2325, %if.end163.out_ok_crit_edge ], [ %fi.2325, %if.then.i280 ], [ %call67, %udf_match.exit.out_ok_crit_edge ], [ %call67, %if.end132.out_ok_crit_edge ]
  %fname.1 = phi ptr [ %fname.0326, %if.end163.out_ok_crit_edge ], [ %fname.0326, %if.then.i280 ], [ %call7.i, %udf_match.exit.out_ok_crit_edge ], [ %call7.i, %if.end132.out_ok_crit_edge ]
  %copy_name.6 = phi ptr [ %copy_name.5327, %if.end163.out_ok_crit_edge ], [ %copy_name.5327, %if.then.i280 ], [ %copy_name.4, %udf_match.exit.out_ok_crit_edge ], [ %copy_name.4, %if.end132.out_ok_crit_edge ]
  %116 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %epos, align 4
  %tobool.not.i283 = icmp eq ptr %117, null
  br i1 %tobool.not.i283, label %out_ok.brelse.exit286_crit_edge, label %if.then.i284

out_ok.brelse.exit286_crit_edge:                  ; preds = %out_ok
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit286

if.then.i284:                                     ; preds = %out_ok
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %117) #8
  br label %brelse.exit286

brelse.exit286:                                   ; preds = %if.then.i284, %out_ok.brelse.exit286_crit_edge
  call void @kfree(ptr noundef %fname.1) #8
  call void @kfree(ptr noundef %copy_name.6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_pos) #8
  ret ptr %fi.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @inode_bmap(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tread(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_fileident_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_get_pblock(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_new_inode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @udf_add_nondir(ptr noundef %dentry, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %fibh = alloca %struct.udf_fileident_bh, align 4
  %cfi = alloca %struct.fileIdentDesc, align 1
  %err = alloca i32, align 4
  %tmp11 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %0 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_parent, align 8
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %4 = call ptr @memset(ptr %fibh, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %5 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #8
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %err, align 4, !annotation !27
  %call2 = call fastcc ptr @udf_add_entry(ptr noundef %3, ptr noundef %dentry, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %err)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then, label %if.end, !prof !29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @drop_nlink(ptr noundef %inode) #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 7) #8
  call void @discard_new_inode(ptr noundef %inode) #8
  %7 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %s_blocksize, align 16
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %icb = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4
  %15 = ptrtoint ptr %icb to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %icb, align 1
  %extLocation = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1
  %i_location = getelementptr i8, ptr %inode, i32 -240
  %16 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack = load i32, ptr %i_location, align 8
  %.elt35 = getelementptr i8, ptr %inode, i32 -236
  %17 = ptrtoint ptr %.elt35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack36 = load i32, ptr %.elt35, align 4
  %in.sroa.2.4.extract.shift.i = lshr i32 %.unpack36, 16
  %in.sroa.2.4.extract.trunc.i = trunc i32 %in.sroa.2.4.extract.shift.i to i16
  %18 = call i32 @llvm.bswap.i32(i32 %.unpack) #8
  %19 = call i16 @llvm.bswap.i16(i16 %in.sroa.2.4.extract.trunc.i) #8
  %20 = ptrtoint ptr %extLocation to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %18, ptr %extLocation, align 1
  %tmp.sroa.4.0.extLocation.sroa_idx = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %tmp.sroa.4.0.extLocation.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %19, ptr %tmp.sroa.4.0.extLocation.sroa_idx, align 1
  %i_unique = getelementptr i8, ptr %inode, i32 -232
  %22 = ptrtoint ptr %i_unique to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_unique, align 8
  %conv = trunc i64 %23 to i32
  %24 = call i32 @llvm.bswap.i32(i32 %conv)
  %impUse8 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 4, i32 2, i32 2
  %25 = ptrtoint ptr %impUse8 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %impUse8, align 1
  %call10 = call i32 @udf_write_fi(ptr noundef %3, ptr noundef nonnull %cfi, ptr noundef nonnull %call2, ptr noundef nonnull %fibh, ptr noundef null, ptr noundef null)
  %i_ctime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %i_mtime = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp11) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp11, ptr noundef %3) #8
  %26 = call ptr @memcpy(ptr %i_mtime, ptr %tmp11, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp11) #8
  %27 = call ptr @memcpy(ptr %i_ctime, ptr %i_mtime, i32 16)
  call void @__mark_inode_dirty(ptr noundef %3, i32 noundef 7) #8
  %28 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fibh, align 4
  %30 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %9, align 4
  %cmp.not = icmp eq ptr %29, %31
  %tobool.not.i = icmp eq ptr %31, null
  %or.cond = or i1 %cmp.not, %tobool.not.i
  br i1 %or.cond, label %if.end.if.end15_crit_edge, label %if.then.i

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %31) #8
  %32 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then.i, %if.end.if.end15_crit_edge
  %33 = phi ptr [ %.pr, %if.then.i ], [ %29, %if.end.if.end15_crit_edge ]
  %tobool.not.i37 = icmp eq ptr %33, null
  br i1 %tobool.not.i37, label %if.end15.brelse.exit39_crit_edge, label %if.then.i38

if.end15.brelse.exit39_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit39

if.then.i38:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %33) #8
  br label %brelse.exit39

brelse.exit39:                                    ; preds = %if.then.i38, %if.end15.brelse.exit39_crit_edge
  call void @d_instantiate_new(ptr noundef %dentry, ptr noundef %inode) #8
  br label %cleanup

cleanup:                                          ; preds = %brelse.exit39, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ 0, %brelse.exit39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @udf_add_entry(ptr noundef %dir, ptr noundef readonly %dentry, ptr noundef %fibh, ptr noundef %cfi, ptr noundef %err) unnamed_addr #0 align 64 {
entry:
  %f_pos = alloca i64, align 8
  %block = alloca i32, align 4
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_pos) #8
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %f_pos, align 8, !annotation !27
  %i_alloc_type.i = getelementptr i8, ptr %dir, i32 -192
  %3 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i, label %if.then.i, label %entry.udf_ext0_offset.exit_crit_edge

entry.udf_ext0_offset.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.then.i:                                        ; preds = %entry
  %4 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.udf_ext0_offset.exit_crit_edge

if.then.i.udf_ext0_offset.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.else.i.i:                                      ; preds = %if.then.i
  %5 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i.i = icmp eq i32 %5, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %dir, i32 -224
  %6 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %7, 216
  br label %udf_ext0_offset.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %7, 176
  br label %udf_ext0_offset.exit

udf_ext0_offset.exit:                             ; preds = %if.else6.i.i, %if.then5.i.i, %if.then.i.udf_ext0_offset.exit_crit_edge, %entry.udf_ext0_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.udf_ext0_offset.exit_crit_edge ], [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %if.then.i.udf_ext0_offset.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %8 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %i_size, align 8
  %add = add i64 %9, %conv
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block) #8
  %10 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %block, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %11 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %eloc, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #8
  %12 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %elen, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #8
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %offset, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %14 = call ptr @memset(ptr %epos, i32 0, i32 16)
  %ebh = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %15 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ebh, align 4
  %16 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fibh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3136, i32 noundef 255) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %udf_ext0_offset.exit.out_err_crit_edge, label %if.end

udf_ext0_offset.exit.out_err_crit_edge:           ; preds = %udf_ext0_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end:                                           ; preds = %udf_ext0_offset.exit
  %tobool2.not = icmp eq ptr %dentry, null
  br i1 %tobool2.not, label %if.end.if.end15_crit_edge, label %if.then3

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then3:                                         ; preds = %if.end
  %d_name = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4
  %18 = ptrtoint ptr %d_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %d_name, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %if.then3.out_err_crit_edge, label %if.end6

if.then3.out_err_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end6:                                          ; preds = %if.then3
  %name8 = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name8, align 8
  %call11 = tail call i32 @udf_put_filename(ptr noundef %1, ptr noundef %21, i32 noundef %19, ptr noundef nonnull %call7.i, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end6.out_err_crit_edge, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end6.out_err_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end15:                                         ; preds = %if.end6.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %namelen.0 = phi i32 [ %call11, %if.end6.if.end15_crit_edge ], [ 0, %if.end.if.end15_crit_edge ]
  %add17 = add i32 %namelen.0, 41
  %and = and i32 %add17, -4
  %22 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i543 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i544 = and i32 %bf.load.i543, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i544)
  %cmp.i545 = icmp eq i32 %bf.lshr.mask.i544, 1610612736
  br i1 %cmp.i545, label %if.then.i548, label %if.end15.udf_ext0_offset.exit557_crit_edge

if.end15.udf_ext0_offset.exit557_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit557

if.then.i548:                                     ; preds = %if.end15
  %23 = and i32 %bf.load.i543, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i547 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i547, label %if.else.i.i551, label %if.then.i548.udf_ext0_offset.exit557_crit_edge

if.then.i548.udf_ext0_offset.exit557_crit_edge:   ; preds = %if.then.i548
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit557

if.else.i.i551:                                   ; preds = %if.then.i548
  %24 = and i32 %bf.load.i543, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i.i549 = icmp eq i32 %24, 0
  %i_lenEAttr7.i.i550 = getelementptr i8, ptr %dir, i32 -224
  %25 = ptrtoint ptr %i_lenEAttr7.i.i550 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i_lenEAttr7.i.i550, align 8
  br i1 %tobool4.not.i.i549, label %if.else6.i.i555, label %if.then5.i.i553

if.then5.i.i553:                                  ; preds = %if.else.i.i551
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i552 = add i32 %26, 216
  br label %udf_ext0_offset.exit557

if.else6.i.i555:                                  ; preds = %if.else.i.i551
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i554 = add i32 %26, 176
  br label %udf_ext0_offset.exit557

udf_ext0_offset.exit557:                          ; preds = %if.else6.i.i555, %if.then5.i.i553, %if.then.i548.udf_ext0_offset.exit557_crit_edge, %if.end15.udf_ext0_offset.exit557_crit_edge
  %retval.0.i556 = phi i32 [ 0, %if.end15.udf_ext0_offset.exit557_crit_edge ], [ %add.i.i552, %if.then5.i.i553 ], [ %add8.i.i554, %if.else6.i.i555 ], [ 40, %if.then.i548.udf_ext0_offset.exit557_crit_edge ]
  %conv19 = zext i32 %retval.0.i556 to i64
  %27 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv19, ptr %f_pos, align 8
  %28 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %31, -1
  %and22541 = and i32 %sub, %retval.0.i556
  %eoffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %32 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and22541, ptr %eoffset, align 4
  %soffset = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %33 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and22541, ptr %soffset, align 4
  %34 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp.not = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp.not, label %udf_ext0_offset.exit557.if.end81_crit_edge, label %if.then26

udf_ext0_offset.exit557.if.end81_crit_edge:       ; preds = %udf_ext0_offset.exit557
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then26:                                        ; preds = %udf_ext0_offset.exit557
  %35 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %38 to i64
  %shr669 = lshr i64 %conv19, %sh_prom
  %call29 = call signext i8 @inode_bmap(ptr noundef %dir, i64 noundef %shr669, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call29)
  %cmp31.not = icmp eq i8 %call29, 0
  %39 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i_sb, align 4
  br i1 %cmp31.not, label %if.end39, label %if.then33

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %i_location = getelementptr i8, ptr %dir, i32 -240
  %41 = ptrtoint ptr %i_location to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_location, align 4
  %partitionReferenceNum.i = getelementptr i8, ptr %dir, i32 -236
  %43 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %40, i32 noundef %42, i16 noundef zeroext %44, i32 noundef 0) #8
  %45 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call.i, ptr %block, align 4
  %s_blocksize36 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %s_blocksize36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s_blocksize36, align 16
  %48 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %eoffset, align 4
  %49 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %soffset, align 4
  br label %add105

if.end39:                                         ; preds = %if.then26
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %offset, align 8
  %conv41 = trunc i64 %51 to i32
  %52 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %eloc, align 8
  %partitionReferenceNum.i558 = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %54 = ptrtoint ptr %partitionReferenceNum.i558 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %partitionReferenceNum.i558, align 4
  %call.i559 = call i32 @udf_get_pblock(ptr noundef %40, i32 noundef %53, i16 noundef zeroext %55, i32 noundef %conv41) #8
  %56 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call.i559, ptr %block, align 4
  %57 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %offset, align 8
  %inc = add i64 %58, 1
  store i64 %inc, ptr %offset, align 8
  %59 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits44 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %s_blocksize_bits44 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %s_blocksize_bits44, align 4
  %sh_prom46 = zext i8 %62 to i64
  %shl = shl i64 %inc, %sh_prom46
  %63 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %elen, align 4
  %conv47 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv47)
  %cmp48 = icmp ult i64 %shl, %conv47
  br i1 %cmp48, label %if.then50, label %if.else70

if.then50:                                        ; preds = %if.end39
  %65 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load52 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load52)
  %cmp54 = icmp ult i32 %bf.load52, 536870912
  br i1 %cmp54, label %if.then56, label %if.else59

if.then56:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %offset57 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %66 = ptrtoint ptr %offset57 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset57, align 4
  %sub58 = add i32 %67, -8
  store i32 %sub58, ptr %offset57, align 4
  br label %if.end71

if.else59:                                        ; preds = %if.then50
  %bf.lshr53.mask = and i32 %bf.load52, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr53.mask)
  %cmp63 = icmp eq i32 %bf.lshr53.mask, 536870912
  br i1 %cmp63, label %if.then65, label %if.else59.if.end71_crit_edge

if.else59.if.end71_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then65:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #10
  %offset66 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %68 = ptrtoint ptr %offset66 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %offset66, align 4
  %sub67 = add i32 %69, -16
  store i32 %sub67, ptr %offset66, align 4
  br label %if.end71

if.else70:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 0, ptr %offset, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then65, %if.else59.if.end71_crit_edge, %if.then56
  %call73 = call ptr @udf_tread(ptr noundef %60, i32 noundef %call.i559) #8
  %71 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call73, ptr %ebh, align 4
  %72 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call73, ptr %fibh, align 4
  %tobool77.not = icmp eq ptr %call73, null
  br i1 %tobool77.not, label %if.end71.out_err_crit_edge, label %if.end79

if.end71.out_err_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %i_location80 = getelementptr i8, ptr %dir, i32 -240
  %73 = ptrtoint ptr %i_location80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %i_location80, align 8
  %75 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %block, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end79, %udf_ext0_offset.exit557.if.end81_crit_edge
  %76 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %add)
  %cmp82672 = icmp slt i64 %77, %add
  br i1 %cmp82672, label %while.body.lr.ph, label %if.end81.add105_crit_edge

if.end81.add105_crit_edge:                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %add105

while.body.lr.ph:                                 ; preds = %if.end81
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  %lengthOfImpUse.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %lengthFileIdent.i = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end104.while.body_crit_edge, %while.body.lr.ph
  %call84 = call ptr @udf_fileident_read(ptr noundef %dir, ptr noundef nonnull %f_pos, ptr noundef %fibh, ptr noundef %cfi, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %while.body.out_err_crit_edge, label %if.end87

while.body.out_err_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_err

if.end87:                                         ; preds = %while.body
  %78 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fileCharacteristics, align 1
  %80 = and i8 %79, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp90.not = icmp eq i8 %80, 0
  br i1 %cmp90.not, label %if.end87.if.end104_crit_edge, label %if.then92

if.end87.if.end104_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then92:                                        ; preds = %if.end87
  %81 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %lengthOfImpUse.i, align 1
  %83 = call i16 @llvm.bswap.i16(i16 %82) #8
  %conv.i = zext i16 %83 to i32
  %84 = ptrtoint ptr %lengthFileIdent.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %lengthFileIdent.i, align 1
  %conv1.i = zext i8 %85 to i32
  %add2.i = add nuw nsw i32 %conv.i, 41
  %add3.i = add nuw nsw i32 %add2.i, %conv1.i
  %and.i = and i32 %add3.i, 262140
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and)
  %cmp94 = icmp eq i32 %and.i, %and
  br i1 %cmp94, label %if.then96, label %if.then92.if.end104_crit_edge

if.then92.if.end104_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then96:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %tagSerialNum = getelementptr inbounds %struct.tag, ptr %cfi, i32 0, i32 4
  %86 = ptrtoint ptr %tagSerialNum to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 256, ptr %tagSerialNum, align 1
  %fileVersionNum = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 1
  %87 = ptrtoint ptr %fileVersionNum to i32
  call void @__asan_storeN_noabort(i32 %87, i32 2)
  store i16 256, ptr %fileVersionNum, align 1
  %88 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %fileCharacteristics, align 1
  %conv98 = trunc i32 %namelen.0 to i8
  %89 = ptrtoint ptr %lengthFileIdent.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv98, ptr %lengthFileIdent.i, align 1
  %90 = ptrtoint ptr %lengthOfImpUse.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 0, ptr %lengthOfImpUse.i, align 1
  %call99 = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef %cfi, ptr noundef nonnull %call84, ptr noundef %fibh, ptr noundef null, ptr noundef nonnull %call7.i)
  br label %out_ok

if.end104:                                        ; preds = %if.then92.if.end104_crit_edge, %if.end87.if.end104_crit_edge
  %91 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %f_pos, align 8
  %cmp82 = icmp slt i64 %92, %add
  br i1 %cmp82, label %if.end104.while.body_crit_edge, label %if.end104.add105_crit_edge

if.end104.add105_crit_edge:                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %add105

if.end104.while.body_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

add105:                                           ; preds = %if.end104.add105_crit_edge, %if.end81.add105_crit_edge, %if.then33
  %conv106 = sext i32 %and to i64
  %93 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %f_pos, align 8
  %add107 = add i64 %94, %conv106
  store i64 %add107, ptr %f_pos, align 8
  %95 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %bf.load109 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr110.mask = and i32 %bf.load109, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr110.mask)
  %cmp111 = icmp eq i32 %bf.lshr110.mask, 1610612736
  br i1 %cmp111, label %land.lhs.true, label %add105.if.end149_crit_edge

add105.if.end149_crit_edge:                       ; preds = %add105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

land.lhs.true:                                    ; preds = %add105
  %s_blocksize113 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %s_blocksize113 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %s_blocksize113, align 16
  %98 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %eoffset, align 4
  %sub115 = sub i32 %97, %99
  call void @__sanitizer_cov_trace_cmp4(i32 %sub115, i32 %and)
  %cmp116 = icmp ult i32 %sub115, %and
  br i1 %cmp116, label %if.then118, label %land.lhs.true.if.end149_crit_edge

land.lhs.true.if.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end149

if.then118:                                       ; preds = %land.lhs.true
  %100 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %101, null
  br i1 %tobool.not.i, label %if.then118.brelse.exit_crit_edge, label %if.then.i560

if.then118.brelse.exit_crit_edge:                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit

if.then.i560:                                     ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %101) #8
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i560, %if.then118.brelse.exit_crit_edge
  %102 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %epos, align 4
  %103 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load.i562 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i563 = and i32 %bf.load.i562, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i563)
  %cmp.i564 = icmp eq i32 %bf.lshr.mask.i563, 1610612736
  br i1 %cmp.i564, label %if.then.i567, label %brelse.exit.udf_ext0_offset.exit576_crit_edge

brelse.exit.udf_ext0_offset.exit576_crit_edge:    ; preds = %brelse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit576

if.then.i567:                                     ; preds = %brelse.exit
  %104 = and i32 %bf.load.i562, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i.i566 = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i566, label %if.else.i.i570, label %if.then.i567.udf_ext0_offset.exit576_crit_edge

if.then.i567.udf_ext0_offset.exit576_crit_edge:   ; preds = %if.then.i567
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit576

if.else.i.i570:                                   ; preds = %if.then.i567
  %105 = and i32 %bf.load.i562, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool4.not.i.i568 = icmp eq i32 %105, 0
  %i_lenEAttr7.i.i569 = getelementptr i8, ptr %dir, i32 -224
  %106 = ptrtoint ptr %i_lenEAttr7.i.i569 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %i_lenEAttr7.i.i569, align 8
  br i1 %tobool4.not.i.i568, label %if.else6.i.i574, label %if.then5.i.i572

if.then5.i.i572:                                  ; preds = %if.else.i.i570
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i571 = add i32 %107, 216
  br label %udf_ext0_offset.exit576

if.else6.i.i574:                                  ; preds = %if.else.i.i570
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i573 = add i32 %107, 176
  br label %udf_ext0_offset.exit576

udf_ext0_offset.exit576:                          ; preds = %if.else6.i.i574, %if.then5.i.i572, %if.then.i567.udf_ext0_offset.exit576_crit_edge, %brelse.exit.udf_ext0_offset.exit576_crit_edge
  %retval.0.i575 = phi i32 [ 0, %brelse.exit.udf_ext0_offset.exit576_crit_edge ], [ %add.i.i571, %if.then5.i.i572 ], [ %add8.i.i573, %if.else6.i.i574 ], [ 40, %if.then.i567.udf_ext0_offset.exit576_crit_edge ]
  %108 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %soffset, align 4
  %sub122 = sub i32 %109, %retval.0.i575
  store i32 %sub122, ptr %soffset, align 4
  %110 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load.i578 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i579 = and i32 %bf.load.i578, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i579)
  %cmp.i580 = icmp eq i32 %bf.lshr.mask.i579, 1610612736
  br i1 %cmp.i580, label %if.then.i583, label %udf_ext0_offset.exit576.udf_ext0_offset.exit592_crit_edge

udf_ext0_offset.exit576.udf_ext0_offset.exit592_crit_edge: ; preds = %udf_ext0_offset.exit576
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit592

if.then.i583:                                     ; preds = %udf_ext0_offset.exit576
  %111 = and i32 %bf.load.i578, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i.i582 = icmp eq i32 %111, 0
  br i1 %tobool.not.i.i582, label %if.else.i.i586, label %if.then.i583.udf_ext0_offset.exit592_crit_edge

if.then.i583.udf_ext0_offset.exit592_crit_edge:   ; preds = %if.then.i583
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit592

if.else.i.i586:                                   ; preds = %if.then.i583
  %112 = and i32 %bf.load.i578, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool4.not.i.i584 = icmp eq i32 %112, 0
  %i_lenEAttr7.i.i585 = getelementptr i8, ptr %dir, i32 -224
  %113 = ptrtoint ptr %i_lenEAttr7.i.i585 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %i_lenEAttr7.i.i585, align 8
  br i1 %tobool4.not.i.i584, label %if.else6.i.i590, label %if.then5.i.i588

if.then5.i.i588:                                  ; preds = %if.else.i.i586
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i587 = add i32 %114, 216
  br label %udf_ext0_offset.exit592

if.else6.i.i590:                                  ; preds = %if.else.i.i586
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i589 = add i32 %114, 176
  br label %udf_ext0_offset.exit592

udf_ext0_offset.exit592:                          ; preds = %if.else6.i.i590, %if.then5.i.i588, %if.then.i583.udf_ext0_offset.exit592_crit_edge, %udf_ext0_offset.exit576.udf_ext0_offset.exit592_crit_edge
  %retval.0.i591 = phi i32 [ 0, %udf_ext0_offset.exit576.udf_ext0_offset.exit592_crit_edge ], [ %add.i.i587, %if.then5.i.i588 ], [ %add8.i.i589, %if.else6.i.i590 ], [ 40, %if.then.i583.udf_ext0_offset.exit592_crit_edge ]
  %115 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %eoffset, align 4
  %sub125 = sub i32 %116, %retval.0.i591
  store i32 %sub125, ptr %eoffset, align 4
  %117 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load.i594 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i595 = and i32 %bf.load.i594, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i595)
  %cmp.i596 = icmp eq i32 %bf.lshr.mask.i595, 1610612736
  br i1 %cmp.i596, label %if.then.i599, label %udf_ext0_offset.exit592.udf_ext0_offset.exit608_crit_edge

udf_ext0_offset.exit592.udf_ext0_offset.exit608_crit_edge: ; preds = %udf_ext0_offset.exit592
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit608

if.then.i599:                                     ; preds = %udf_ext0_offset.exit592
  %118 = and i32 %bf.load.i594, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i.i598 = icmp eq i32 %118, 0
  br i1 %tobool.not.i.i598, label %if.else.i.i602, label %if.then.i599.udf_ext0_offset.exit608_crit_edge

if.then.i599.udf_ext0_offset.exit608_crit_edge:   ; preds = %if.then.i599
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit608

if.else.i.i602:                                   ; preds = %if.then.i599
  %119 = and i32 %bf.load.i594, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool4.not.i.i600 = icmp eq i32 %119, 0
  %i_lenEAttr7.i.i601 = getelementptr i8, ptr %dir, i32 -224
  %120 = ptrtoint ptr %i_lenEAttr7.i.i601 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %i_lenEAttr7.i.i601, align 8
  br i1 %tobool4.not.i.i600, label %if.else6.i.i606, label %if.then5.i.i604

if.then5.i.i604:                                  ; preds = %if.else.i.i602
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i603 = add i32 %121, 216
  br label %udf_ext0_offset.exit608

if.else6.i.i606:                                  ; preds = %if.else.i.i602
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i605 = add i32 %121, 176
  br label %udf_ext0_offset.exit608

udf_ext0_offset.exit608:                          ; preds = %if.else6.i.i606, %if.then5.i.i604, %if.then.i599.udf_ext0_offset.exit608_crit_edge, %udf_ext0_offset.exit592.udf_ext0_offset.exit608_crit_edge
  %retval.0.i607 = phi i32 [ 0, %udf_ext0_offset.exit592.udf_ext0_offset.exit608_crit_edge ], [ %add.i.i603, %if.then5.i.i604 ], [ %add8.i.i605, %if.else6.i.i606 ], [ 40, %if.then.i599.udf_ext0_offset.exit608_crit_edge ]
  %conv127 = zext i32 %retval.0.i607 to i64
  %122 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %f_pos, align 8
  %sub128 = sub i64 %123, %conv127
  store i64 %sub128, ptr %f_pos, align 8
  %124 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fibh, align 4
  %126 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ebh, align 4
  %cmp131.not = icmp eq ptr %125, %127
  %tobool.not.i609 = icmp eq ptr %127, null
  %or.cond = or i1 %cmp131.not, %tobool.not.i609
  br i1 %or.cond, label %udf_ext0_offset.exit608.if.end135_crit_edge, label %if.then.i610

udf_ext0_offset.exit608.if.end135_crit_edge:      ; preds = %udf_ext0_offset.exit608
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

if.then.i610:                                     ; preds = %udf_ext0_offset.exit608
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %127) #8
  %128 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr = load ptr, ptr %fibh, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then.i610, %udf_ext0_offset.exit608.if.end135_crit_edge
  %129 = phi ptr [ %.pr, %if.then.i610 ], [ %125, %udf_ext0_offset.exit608.if.end135_crit_edge ]
  %tobool.not.i612 = icmp eq ptr %129, null
  br i1 %tobool.not.i612, label %if.end135.brelse.exit614_crit_edge, label %if.then.i613

if.end135.brelse.exit614_crit_edge:               ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit614

if.then.i613:                                     ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %129) #8
  br label %brelse.exit614

brelse.exit614:                                   ; preds = %if.then.i613, %if.end135.brelse.exit614_crit_edge
  %call137 = call ptr @udf_expand_dir_adinicb(ptr noundef %dir, ptr noundef nonnull %block, ptr noundef %err) #8
  %130 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call137, ptr %ebh, align 4
  %131 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call137, ptr %fibh, align 4
  %tobool141.not = icmp eq ptr %call137, null
  br i1 %tobool141.not, label %brelse.exit614.if.end369.sink.split_crit_edge, label %if.end143

brelse.exit614.if.end369.sink.split_crit_edge:    ; preds = %brelse.exit614
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369.sink.split

if.end143:                                        ; preds = %brelse.exit614
  %block144 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %i_location145 = getelementptr i8, ptr %dir, i32 -240
  %132 = ptrtoint ptr %i_location145 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %i_location145, align 8
  %134 = ptrtoint ptr %block144 to i32
  call void @__asan_storeN_noabort(i32 %134, i32 8)
  store i64 %133, ptr %block144, align 4
  %135 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %bf.load.i615 = load i32, ptr %i_alloc_type.i, align 8
  %136 = and i32 %bf.load.i615, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i616 = icmp eq i32 %136, 0
  br i1 %tobool.not.i616, label %if.else.i, label %if.end143.udf_file_entry_alloc_offset.exit_crit_edge

if.end143.udf_file_entry_alloc_offset.exit_crit_edge: ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit

if.else.i:                                        ; preds = %if.end143
  %137 = and i32 %bf.load.i615, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool4.not.i = icmp eq i32 %137, 0
  %i_lenEAttr7.i = getelementptr i8, ptr %dir, i32 -224
  %138 = ptrtoint ptr %i_lenEAttr7.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %i_lenEAttr7.i, align 8
  br i1 %tobool4.not.i, label %if.else6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %139, 216
  br label %udf_file_entry_alloc_offset.exit

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i = add i32 %139, 176
  br label %udf_file_entry_alloc_offset.exit

udf_file_entry_alloc_offset.exit:                 ; preds = %if.else6.i, %if.then5.i, %if.end143.udf_file_entry_alloc_offset.exit_crit_edge
  %retval.0.i617 = phi i32 [ %add.i, %if.then5.i ], [ %add8.i, %if.else6.i ], [ 40, %if.end143.udf_file_entry_alloc_offset.exit_crit_edge ]
  %offset147 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %140 = ptrtoint ptr %offset147 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %retval.0.i617, ptr %offset147, align 4
  %call148 = call signext i8 @udf_current_aext(ptr noundef %dir, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #8
  br label %if.end149

if.end149:                                        ; preds = %udf_file_entry_alloc_offset.exit, %land.lhs.true.if.end149_crit_edge, %add105.if.end149_crit_edge
  %s_blocksize150 = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 3
  %141 = ptrtoint ptr %s_blocksize150 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %s_blocksize150, align 16
  %143 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %eoffset, align 4
  %sub152 = sub i32 %142, %144
  call void @__sanitizer_cov_trace_cmp4(i32 %sub152, i32 %and)
  %cmp153.not = icmp ult i32 %sub152, %and
  br i1 %cmp153.not, label %if.else193, label %if.then155

if.then155:                                       ; preds = %if.end149
  %145 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %soffset, align 4
  %add159 = add i32 %144, %and
  %146 = ptrtoint ptr %eoffset to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add159, ptr %eoffset, align 4
  %147 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %fibh, align 4
  %149 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ebh, align 4
  %cmp162.not = icmp eq ptr %148, %150
  br i1 %cmp162.not, label %if.then155.if.end168_crit_edge, label %if.then164

if.then155.if.end168_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end168

if.then164:                                       ; preds = %if.then155
  %tobool.not.i618 = icmp eq ptr %148, null
  br i1 %tobool.not.i618, label %if.then164.brelse.exit620_crit_edge, label %if.then.i619

if.then164.brelse.exit620_crit_edge:              ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit620

if.then.i619:                                     ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %148) #8
  br label %brelse.exit620

brelse.exit620:                                   ; preds = %if.then.i619, %if.then164.brelse.exit620_crit_edge
  %151 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %ebh, align 4
  %153 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %fibh, align 4
  br label %if.end168

if.end168:                                        ; preds = %brelse.exit620, %if.then155.if.end168_crit_edge
  %154 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %bf.load170 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr171.mask = and i32 %bf.load170, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr171.mask)
  %cmp172 = icmp eq i32 %bf.lshr171.mask, 1610612736
  br i1 %cmp172, label %if.then174, label %if.else181

if.then174:                                       ; preds = %if.end168
  %i_location175 = getelementptr i8, ptr %dir, i32 -240
  %155 = ptrtoint ptr %i_location175 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %i_location175, align 8
  %157 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %block, align 4
  %i_data = getelementptr i8, ptr %dir, i32 -188
  %158 = ptrtoint ptr %i_data to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i_data, align 4
  %160 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %soffset, align 4
  %add.ptr = getelementptr i8, ptr %159, i32 %161
  %162 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %bf.load.i622 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i623 = and i32 %bf.load.i622, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i623)
  %cmp.i624 = icmp eq i32 %bf.lshr.mask.i623, 1610612736
  br i1 %cmp.i624, label %if.then.i627, label %if.then174.udf_ext0_offset.exit636_crit_edge

if.then174.udf_ext0_offset.exit636_crit_edge:     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit636

if.then.i627:                                     ; preds = %if.then174
  %163 = and i32 %bf.load.i622, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i.i626 = icmp eq i32 %163, 0
  br i1 %tobool.not.i.i626, label %if.else.i.i630, label %if.then.i627.udf_ext0_offset.exit636_crit_edge

if.then.i627.udf_ext0_offset.exit636_crit_edge:   ; preds = %if.then.i627
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit636

if.else.i.i630:                                   ; preds = %if.then.i627
  %164 = and i32 %bf.load.i622, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool4.not.i.i628 = icmp eq i32 %164, 0
  %i_lenEAttr7.i.i629 = getelementptr i8, ptr %dir, i32 -224
  %165 = ptrtoint ptr %i_lenEAttr7.i.i629 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %i_lenEAttr7.i.i629, align 8
  br i1 %tobool4.not.i.i628, label %if.else6.i.i634, label %if.then5.i.i632

if.then5.i.i632:                                  ; preds = %if.else.i.i630
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i631.neg = sub i32 -216, %166
  br label %udf_ext0_offset.exit636

if.else6.i.i634:                                  ; preds = %if.else.i.i630
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i633.neg = sub i32 -176, %166
  br label %udf_ext0_offset.exit636

udf_ext0_offset.exit636:                          ; preds = %if.else6.i.i634, %if.then5.i.i632, %if.then.i627.udf_ext0_offset.exit636_crit_edge, %if.then174.udf_ext0_offset.exit636_crit_edge
  %retval.0.i635.neg = phi i32 [ 0, %if.then174.udf_ext0_offset.exit636_crit_edge ], [ %add.i.i631.neg, %if.then5.i.i632 ], [ %add8.i.i633.neg, %if.else6.i.i634 ], [ -40, %if.then.i627.udf_ext0_offset.exit636_crit_edge ]
  %add.ptr179 = getelementptr i8, ptr %add.ptr, i32 %retval.0.i635.neg
  %i_lenEAttr = getelementptr i8, ptr %dir, i32 -224
  %167 = ptrtoint ptr %i_lenEAttr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %i_lenEAttr, align 8
  %add.ptr180 = getelementptr i8, ptr %add.ptr179, i32 %168
  br label %if.end301

if.else181:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %eloc, align 8
  %171 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %elen, align 4
  %sub183 = add i32 %172, -1
  %173 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits185 = getelementptr inbounds %struct.super_block, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %s_blocksize_bits185 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %s_blocksize_bits185, align 4
  %conv186 = zext i8 %176 to i32
  %shr187 = lshr i32 %sub183, %conv186
  %add188 = add i32 %shr187, %170
  %177 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %add188, ptr %block, align 4
  %178 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %fibh, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %179, i32 0, i32 5
  %180 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %b_data, align 4
  %182 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %soffset, align 4
  %add.ptr191 = getelementptr i8, ptr %181, i32 %183
  br label %if.end301

if.else193:                                       ; preds = %if.end149
  %184 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %elen, align 4
  %add195 = add i32 %142, -1
  %sub196 = add i32 %add195, %185
  %neg = sub i32 0, %142
  %and199 = and i32 %sub196, %neg
  store i32 %and199, ptr %elen, align 4
  %186 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %bf.load201 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load201)
  %cmp203 = icmp ult i32 %bf.load201, 536870912
  br i1 %cmp203, label %if.else193.if.end218.sink.split_crit_edge, label %if.else208

if.else193.if.end218.sink.split_crit_edge:        ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218.sink.split

if.else208:                                       ; preds = %if.else193
  %bf.lshr202.mask = and i32 %bf.load201, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr202.mask)
  %cmp212 = icmp eq i32 %bf.lshr202.mask, 536870912
  br i1 %cmp212, label %if.else208.if.end218.sink.split_crit_edge, label %if.else208.if.end218_crit_edge

if.else208.if.end218_crit_edge:                   ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218

if.else208.if.end218.sink.split_crit_edge:        ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end218.sink.split

if.end218.sink.split:                             ; preds = %if.else208.if.end218.sink.split_crit_edge, %if.else193.if.end218.sink.split_crit_edge
  %.sink680 = phi i32 [ -8, %if.else193.if.end218.sink.split_crit_edge ], [ -16, %if.else208.if.end218.sink.split_crit_edge ]
  %offset206 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %187 = ptrtoint ptr %offset206 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %offset206, align 4
  %sub216 = add i32 %188, %.sink680
  store i32 %sub216, ptr %offset206, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.end218.sink.split, %if.else208.if.end218_crit_edge
  call void @udf_write_aext(ptr noundef %dir, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %and199, i32 noundef 1) #8
  %i_lenExtents = getelementptr i8, ptr %dir, i32 -216
  %189 = ptrtoint ptr %i_lenExtents to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %i_lenExtents, align 8
  %191 = ptrtoint ptr %s_blocksize150 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %s_blocksize150, align 16
  %conv220 = zext i32 %192 to i64
  %add221 = add i64 %190, 4294967295
  %sub222 = add i64 %add221, %conv220
  %neg225 = sub i32 0, %192
  %conv226 = zext i32 %neg225 to i64
  %and227 = and i64 %sub222, %conv226
  store i64 %and227, ptr %i_lenExtents, align 8
  %193 = ptrtoint ptr %eoffset to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %eoffset, align 4
  %195 = load i32, ptr %s_blocksize150, align 16
  %sub231 = sub i32 %194, %195
  %196 = ptrtoint ptr %soffset to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %sub231, ptr %soffset, align 4
  %197 = load i32, ptr %s_blocksize150, align 16
  %sub234 = add i32 %194, %and
  %add236 = sub i32 %sub234, %197
  store i32 %add236, ptr %eoffset, align 4
  %198 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %fibh, align 4
  %200 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ebh, align 4
  %cmp239.not = icmp eq ptr %199, %201
  br i1 %cmp239.not, label %if.end218.if.end245_crit_edge, label %if.then241

if.end218.if.end245_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.then241:                                       ; preds = %if.end218
  %tobool.not.i637 = icmp eq ptr %199, null
  br i1 %tobool.not.i637, label %if.then241.brelse.exit639_crit_edge, label %if.then.i638

if.then241.brelse.exit639_crit_edge:              ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit639

if.then.i638:                                     ; preds = %if.then241
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %199) #8
  br label %brelse.exit639

brelse.exit639:                                   ; preds = %if.then.i638, %if.then241.brelse.exit639_crit_edge
  %202 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ebh, align 4
  %204 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %203, ptr %fibh, align 4
  br label %if.end245

if.end245:                                        ; preds = %brelse.exit639, %if.end218.if.end245_crit_edge
  %205 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %eloc, align 8
  %207 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %elen, align 4
  %sub247 = add i32 %208, -1
  %209 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits249 = getelementptr inbounds %struct.super_block, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %s_blocksize_bits249 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %s_blocksize_bits249, align 4
  %conv250 = zext i8 %212 to i32
  %shr251 = lshr i32 %sub247, %conv250
  %add252 = add i32 %shr251, %206
  %213 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %add252, ptr %block, align 4
  %214 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %f_pos, align 8
  %sh_prom256 = zext i8 %212 to i64
  %shr257 = ashr i64 %215, %sh_prom256
  %conv258 = trunc i64 %shr257 to i32
  %call259 = call ptr @udf_bread(ptr noundef %dir, i32 noundef %conv258, i32 noundef 1, ptr noundef %err) #8
  %216 = ptrtoint ptr %ebh to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call259, ptr %ebh, align 4
  %tobool262.not = icmp eq ptr %call259, null
  br i1 %tobool262.not, label %if.end245.if.end369.sink.split_crit_edge, label %if.end264

if.end245.if.end369.sink.split_crit_edge:         ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369.sink.split

if.end264:                                        ; preds = %if.end245
  %217 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %epos, align 4
  %tobool.not.i640 = icmp eq ptr %218, null
  br i1 %tobool.not.i640, label %if.end264.brelse.exit642_crit_edge, label %if.then.i641

if.end264.brelse.exit642_crit_edge:               ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit642

if.then.i641:                                     ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %218) #8
  br label %brelse.exit642

brelse.exit642:                                   ; preds = %if.then.i641, %if.end264.brelse.exit642_crit_edge
  %219 = ptrtoint ptr %epos to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %epos, align 4
  %block267 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 2
  %i_location268 = getelementptr i8, ptr %dir, i32 -240
  %220 = ptrtoint ptr %i_location268 to i32
  call void @__asan_load8_noabort(i32 %220)
  %221 = load i64, ptr %i_location268, align 8
  %222 = ptrtoint ptr %block267 to i32
  call void @__asan_storeN_noabort(i32 %222, i32 8)
  store i64 %221, ptr %block267, align 4
  %223 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %bf.load.i644 = load i32, ptr %i_alloc_type.i, align 8
  %224 = and i32 %bf.load.i644, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i645 = icmp eq i32 %224, 0
  br i1 %tobool.not.i645, label %if.else.i648, label %brelse.exit642.udf_file_entry_alloc_offset.exit654_crit_edge

brelse.exit642.udf_file_entry_alloc_offset.exit654_crit_edge: ; preds = %brelse.exit642
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_file_entry_alloc_offset.exit654

if.else.i648:                                     ; preds = %brelse.exit642
  %225 = and i32 %bf.load.i644, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool4.not.i646 = icmp eq i32 %225, 0
  %i_lenEAttr7.i647 = getelementptr i8, ptr %dir, i32 -224
  %226 = ptrtoint ptr %i_lenEAttr7.i647 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %i_lenEAttr7.i647, align 8
  br i1 %tobool4.not.i646, label %if.else6.i652, label %if.then5.i650

if.then5.i650:                                    ; preds = %if.else.i648
  call void @__sanitizer_cov_trace_pc() #10
  %add.i649 = add i32 %227, 216
  br label %udf_file_entry_alloc_offset.exit654

if.else6.i652:                                    ; preds = %if.else.i648
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i651 = add i32 %227, 176
  br label %udf_file_entry_alloc_offset.exit654

udf_file_entry_alloc_offset.exit654:              ; preds = %if.else6.i652, %if.then5.i650, %brelse.exit642.udf_file_entry_alloc_offset.exit654_crit_edge
  %retval.0.i653 = phi i32 [ %add.i649, %if.then5.i650 ], [ %add8.i651, %if.else6.i652 ], [ 40, %brelse.exit642.udf_file_entry_alloc_offset.exit654_crit_edge ]
  %offset270 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %228 = ptrtoint ptr %offset270 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %retval.0.i653, ptr %offset270, align 4
  %229 = ptrtoint ptr %soffset to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %soffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool272.not = icmp eq i32 %230, 0
  br i1 %tobool272.not, label %udf_file_entry_alloc_offset.exit654.while.cond274_crit_edge, label %if.else293

udf_file_entry_alloc_offset.exit654.while.cond274_crit_edge: ; preds = %udf_file_entry_alloc_offset.exit654
  br label %while.cond274

while.cond274:                                    ; preds = %while.cond274.while.cond274_crit_edge, %udf_file_entry_alloc_offset.exit654.while.cond274_crit_edge
  %call275 = call signext i8 @udf_next_aext(ptr noundef %dir, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #8
  %cmp277 = icmp eq i8 %call275, 0
  br i1 %cmp277, label %while.cond274.while.cond274_crit_edge, label %while.end280

while.cond274.while.cond274_crit_edge:            ; preds = %while.cond274
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond274

while.end280:                                     ; preds = %while.cond274
  %231 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %eloc, align 8
  %233 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %elen, align 4
  %sub282 = add i32 %234, -1
  %235 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits284 = getelementptr inbounds %struct.super_block, ptr %236, i32 0, i32 2
  %237 = ptrtoint ptr %s_blocksize_bits284 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %s_blocksize_bits284, align 4
  %conv285 = zext i8 %238 to i32
  %shr286 = lshr i32 %sub282, %conv285
  %add287 = add i32 %shr286, %232
  %239 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %add287, ptr %block, align 4
  %240 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %fibh, align 4
  %tobool.not.i655 = icmp eq ptr %241, null
  br i1 %tobool.not.i655, label %while.end280.brelse.exit657_crit_edge, label %if.then.i656

while.end280.brelse.exit657_crit_edge:            ; preds = %while.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit657

if.then.i656:                                     ; preds = %while.end280
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %241) #8
  br label %brelse.exit657

brelse.exit657:                                   ; preds = %if.then.i656, %while.end280.brelse.exit657_crit_edge
  %242 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %ebh, align 4
  %244 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %243, ptr %fibh, align 4
  %b_data292 = getelementptr inbounds %struct.buffer_head, ptr %243, i32 0, i32 5
  %245 = ptrtoint ptr %b_data292 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %b_data292, align 4
  br label %if.end301

if.else293:                                       ; preds = %udf_file_entry_alloc_offset.exit654
  call void @__sanitizer_cov_trace_pc() #10
  %247 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %fibh, align 4
  %b_data295 = getelementptr inbounds %struct.buffer_head, ptr %248, i32 0, i32 5
  %249 = ptrtoint ptr %b_data295 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %b_data295, align 4
  %251 = ptrtoint ptr %s_blocksize150 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %s_blocksize150, align 16
  %add.ptr297 = getelementptr i8, ptr %250, i32 %252
  %add.ptr299 = getelementptr i8, ptr %add.ptr297, i32 %230
  br label %if.end301

if.end301:                                        ; preds = %if.else293, %brelse.exit657, %if.else181, %udf_ext0_offset.exit636
  %fi.0 = phi ptr [ %add.ptr180, %udf_ext0_offset.exit636 ], [ %add.ptr191, %if.else181 ], [ %add.ptr299, %if.else293 ], [ %246, %brelse.exit657 ]
  %253 = call ptr @memset(ptr %cfi, i32 0, i32 38)
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %254 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %s_fs_info.i, align 16
  %s_udfrev = getelementptr inbounds %struct.udf_sb_info, ptr %255, i32 0, i32 16
  %256 = ptrtoint ptr %s_udfrev to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %s_udfrev, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %257)
  %cmp304 = icmp ugt i16 %257, 511
  %258 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %block, align 4
  %. = select i1 %cmp304, i16 3, i16 2
  call void @udf_new_tag(ptr noundef %cfi, i16 noundef zeroext 257, i16 noundef zeroext %., i16 noundef zeroext 1, i32 noundef %259, i32 noundef 16) #8
  %fileVersionNum309 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 1
  %260 = ptrtoint ptr %fileVersionNum309 to i32
  call void @__asan_storeN_noabort(i32 %260, i32 2)
  store i16 256, ptr %fileVersionNum309, align 1
  %conv310 = trunc i32 %namelen.0 to i8
  %lengthFileIdent311 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %261 = ptrtoint ptr %lengthFileIdent311 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 %conv310, ptr %lengthFileIdent311, align 1
  %lengthOfImpUse312 = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 5
  %262 = ptrtoint ptr %lengthOfImpUse312 to i32
  call void @__asan_storeN_noabort(i32 %262, i32 2)
  store i16 0, ptr %lengthOfImpUse312, align 1
  %call313 = call i32 @udf_write_fi(ptr noundef %dir, ptr noundef %cfi, ptr noundef %fi.0, ptr noundef %fibh, ptr noundef null, ptr noundef nonnull %call7.i)
  %263 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %i_size, align 8
  %add318 = add i64 %264, %conv106
  store i64 %add318, ptr %i_size, align 8
  %265 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %bf.load320 = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr321.mask = and i32 %bf.load320, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr321.mask)
  %cmp322 = icmp eq i32 %bf.lshr321.mask, 1610612736
  br i1 %cmp322, label %if.then324, label %if.end301.while.cond327_crit_edge

if.end301.while.cond327_crit_edge:                ; preds = %if.end301
  br label %while.cond327

if.then324:                                       ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #10
  %i_lenAlloc = getelementptr i8, ptr %dir, i32 -220
  %266 = ptrtoint ptr %i_lenAlloc to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %i_lenAlloc, align 4
  %add325 = add i32 %267, %and
  store i32 %add325, ptr %i_lenAlloc, align 4
  br label %if.end361

while.cond327:                                    ; preds = %while.cond327.while.cond327_crit_edge, %if.end301.while.cond327_crit_edge
  %call328 = call signext i8 @udf_next_aext(ptr noundef %dir, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, i32 noundef 1) #8
  %cmp330 = icmp eq i8 %call328, 0
  br i1 %cmp330, label %while.cond327.while.cond327_crit_edge, label %while.end333

while.cond327.while.cond327_crit_edge:            ; preds = %while.cond327
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond327

while.end333:                                     ; preds = %while.cond327
  %i_lenExtents334 = getelementptr i8, ptr %dir, i32 -216
  %268 = ptrtoint ptr %i_lenExtents334 to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %i_lenExtents334, align 8
  %270 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %i_size, align 8
  %sub336.neg = sub i64 %271, %269
  %272 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %elen, align 4
  %274 = trunc i64 %sub336.neg to i32
  %conv339 = add i32 %273, %274
  store i32 %conv339, ptr %elen, align 4
  %275 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %bf.load341 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load341)
  %cmp343 = icmp ult i32 %bf.load341, 536870912
  br i1 %cmp343, label %while.end333.if.end358.sink.split_crit_edge, label %if.else348

while.end333.if.end358.sink.split_crit_edge:      ; preds = %while.end333
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358.sink.split

if.else348:                                       ; preds = %while.end333
  %bf.lshr342.mask = and i32 %bf.load341, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr342.mask)
  %cmp352 = icmp eq i32 %bf.lshr342.mask, 536870912
  br i1 %cmp352, label %if.else348.if.end358.sink.split_crit_edge, label %if.else348.if.end358_crit_edge

if.else348.if.end358_crit_edge:                   ; preds = %if.else348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358

if.else348.if.end358.sink.split_crit_edge:        ; preds = %if.else348
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end358.sink.split

if.end358.sink.split:                             ; preds = %if.else348.if.end358.sink.split_crit_edge, %while.end333.if.end358.sink.split_crit_edge
  %.sink683 = phi i32 [ -8, %while.end333.if.end358.sink.split_crit_edge ], [ -16, %if.else348.if.end358.sink.split_crit_edge ]
  %offset346 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %276 = ptrtoint ptr %offset346 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %offset346, align 4
  %sub356 = add i32 %277, %.sink683
  store i32 %sub356, ptr %offset346, align 4
  br label %if.end358

if.end358:                                        ; preds = %if.end358.sink.split, %if.else348.if.end358_crit_edge
  call void @udf_write_aext(ptr noundef %dir, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, i32 noundef %conv339, i32 noundef 1) #8
  %278 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %i_size, align 8
  %280 = ptrtoint ptr %i_lenExtents334 to i32
  call void @__asan_store8_noabort(i32 %280)
  store i64 %279, ptr %i_lenExtents334, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.end358, %if.then324
  call void @__mark_inode_dirty(ptr noundef %dir, i32 noundef 7) #8
  br label %out_ok

out_err:                                          ; preds = %while.body.out_err_crit_edge, %if.end71.out_err_crit_edge, %if.end6.out_err_crit_edge, %if.then3.out_err_crit_edge, %udf_ext0_offset.exit.out_err_crit_edge
  %.sink685 = phi i32 [ -12, %udf_ext0_offset.exit.out_err_crit_edge ], [ -22, %if.then3.out_err_crit_edge ], [ -36, %if.end6.out_err_crit_edge ], [ -5, %if.end71.out_err_crit_edge ], [ -5, %while.body.out_err_crit_edge ]
  %281 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %.sink685, ptr %err, align 4
  %282 = ptrtoint ptr %ebh to i32
  call void @__asan_load4_noabort(i32 %282)
  %.pr667 = load ptr, ptr %ebh, align 4
  %283 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %fibh, align 4
  %cmp365.not = icmp eq ptr %284, %.pr667
  %tobool.not.i658 = icmp eq ptr %.pr667, null
  %or.cond670 = or i1 %tobool.not.i658, %cmp365.not
  br i1 %or.cond670, label %out_err.if.end369_crit_edge, label %if.then.i659

out_err.if.end369_crit_edge:                      ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end369

if.then.i659:                                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %.pr667) #8
  br label %if.end369.sink.split

if.end369.sink.split:                             ; preds = %if.then.i659, %if.end245.if.end369.sink.split_crit_edge, %brelse.exit614.if.end369.sink.split_crit_edge
  %285 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %fibh, align 4
  br label %if.end369

if.end369:                                        ; preds = %if.end369.sink.split, %out_err.if.end369_crit_edge
  %287 = phi ptr [ %284, %out_err.if.end369_crit_edge ], [ %286, %if.end369.sink.split ]
  %tobool.not.i661 = icmp eq ptr %287, null
  br i1 %tobool.not.i661, label %if.end369.out_ok_crit_edge, label %if.then.i662

if.end369.out_ok_crit_edge:                       ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_ok

if.then.i662:                                     ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %287) #8
  br label %out_ok

out_ok:                                           ; preds = %if.then.i662, %if.end369.out_ok_crit_edge, %if.end361, %if.then96
  %fi.1 = phi ptr [ %fi.0, %if.end361 ], [ %call84, %if.then96 ], [ null, %if.end369.out_ok_crit_edge ], [ null, %if.then.i662 ]
  %288 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %epos, align 4
  %tobool.not.i664 = icmp eq ptr %289, null
  br i1 %tobool.not.i664, label %out_ok.brelse.exit666_crit_edge, label %if.then.i665

out_ok.brelse.exit666_crit_edge:                  ; preds = %out_ok
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit666

if.then.i665:                                     ; preds = %out_ok
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %289) #8
  br label %brelse.exit666

brelse.exit666:                                   ; preds = %if.then.i665, %out_ok.brelse.exit666_crit_edge
  call void @kfree(ptr noundef %call7.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_pos) #8
  ret ptr %fi.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_put_filename(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_expand_dir_adinicb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_current_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_write_aext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_bread(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @udf_next_aext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_new_tag(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @lvid_get_unique_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_nohighmem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_new_block(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udf_add_aext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_tgetblk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_truncate_tail_extent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__lock_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @empty_dir(ptr noundef %dir) unnamed_addr #0 align 64 {
entry:
  %cfi = alloca %struct.fileIdentDesc, align 1
  %fibh = alloca %struct.udf_fileident_bh, align 8
  %f_pos = alloca i64, align 8
  %eloc = alloca %struct.kernel_lb_addr, align 8
  %elen = alloca i32, align 4
  %offset = alloca i64, align 8
  %epos = alloca %struct.extent_position, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 38, ptr nonnull %cfi) #8
  %0 = call ptr @memset(ptr %cfi, i32 255, i32 38)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %fibh) #8
  %1 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 1
  %2 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 2
  %3 = getelementptr inbounds %struct.udf_fileident_bh, ptr %fibh, i32 0, i32 3
  %4 = ptrtoint ptr %fibh to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %fibh, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %f_pos) #8
  %i_alloc_type.i = getelementptr i8, ptr %dir, i32 -192
  %5 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask.i = and i32 %bf.load.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask.i)
  %cmp.i = icmp eq i32 %bf.lshr.mask.i, 1610612736
  br i1 %cmp.i, label %if.then.i, label %entry.udf_ext0_offset.exit_crit_edge

entry.udf_ext0_offset.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.then.i:                                        ; preds = %entry
  %6 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.udf_ext0_offset.exit_crit_edge

if.then.i.udf_ext0_offset.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit

if.else.i.i:                                      ; preds = %if.then.i
  %7 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i.i = icmp eq i32 %7, 0
  %i_lenEAttr7.i.i = getelementptr i8, ptr %dir, i32 -224
  %8 = ptrtoint ptr %i_lenEAttr7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_lenEAttr7.i.i, align 8
  br i1 %tobool4.not.i.i, label %if.else6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %9, 216
  br label %udf_ext0_offset.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i = add i32 %9, 176
  br label %udf_ext0_offset.exit

udf_ext0_offset.exit:                             ; preds = %if.else6.i.i, %if.then5.i.i, %if.then.i.udf_ext0_offset.exit_crit_edge, %entry.udf_ext0_offset.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.udf_ext0_offset.exit_crit_edge ], [ %add.i.i, %if.then5.i.i ], [ %add8.i.i, %if.else6.i.i ], [ 40, %if.then.i.udf_ext0_offset.exit_crit_edge ]
  %conv = zext i32 %retval.0.i to i64
  %i_size = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 14
  %10 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size, align 8
  %add = add i64 %11, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %eloc) #8
  %12 = ptrtoint ptr %eloc to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %eloc, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elen) #8
  %13 = ptrtoint ptr %elen to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %elen, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #8
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %offset, align 8, !annotation !27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %epos) #8
  %15 = call ptr @memset(ptr %epos, i32 0, i32 16)
  br i1 %cmp.i, label %if.then.i128, label %udf_ext0_offset.exit.udf_ext0_offset.exit137_crit_edge

udf_ext0_offset.exit.udf_ext0_offset.exit137_crit_edge: ; preds = %udf_ext0_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit137

if.then.i128:                                     ; preds = %udf_ext0_offset.exit
  %16 = and i32 %bf.load.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i127 = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i127, label %if.else.i.i131, label %if.then.i128.udf_ext0_offset.exit137_crit_edge

if.then.i128.udf_ext0_offset.exit137_crit_edge:   ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %udf_ext0_offset.exit137

if.else.i.i131:                                   ; preds = %if.then.i128
  %17 = and i32 %bf.load.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not.i.i129 = icmp eq i32 %17, 0
  %i_lenEAttr7.i.i130 = getelementptr i8, ptr %dir, i32 -224
  %18 = ptrtoint ptr %i_lenEAttr7.i.i130 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_lenEAttr7.i.i130, align 8
  br i1 %tobool4.not.i.i129, label %if.else6.i.i135, label %if.then5.i.i133

if.then5.i.i133:                                  ; preds = %if.else.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i132 = add i32 %19, 216
  br label %udf_ext0_offset.exit137

if.else6.i.i135:                                  ; preds = %if.else.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  %add8.i.i134 = add i32 %19, 176
  br label %udf_ext0_offset.exit137

udf_ext0_offset.exit137:                          ; preds = %if.else6.i.i135, %if.then5.i.i133, %if.then.i128.udf_ext0_offset.exit137_crit_edge, %udf_ext0_offset.exit.udf_ext0_offset.exit137_crit_edge
  %retval.0.i136 = phi i32 [ 0, %udf_ext0_offset.exit.udf_ext0_offset.exit137_crit_edge ], [ %add.i.i132, %if.then5.i.i133 ], [ %add8.i.i134, %if.else6.i.i135 ], [ 40, %if.then.i128.udf_ext0_offset.exit137_crit_edge ]
  %conv3 = zext i32 %retval.0.i136 to i64
  %20 = ptrtoint ptr %f_pos to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv3, ptr %f_pos, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb, align 4
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %s_blocksize, align 16
  %sub = add i32 %24, -1
  %and121 = and i32 %sub, %retval.0.i136
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and121, ptr %3, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and121, ptr %2, align 8
  %27 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %i_alloc_type.i, align 8
  %bf.lshr.mask = and i32 %bf.load, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %bf.lshr.mask)
  %cmp = icmp eq i32 %bf.lshr.mask, 1610612736
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %udf_ext0_offset.exit137
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %1, align 4
  %29 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %fibh, align 8
  br label %if.end55

if.else:                                          ; preds = %udf_ext0_offset.exit137
  %s_blocksize_bits = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 2
  %30 = ptrtoint ptr %s_blocksize_bits to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %s_blocksize_bits, align 4
  %sh_prom = zext i8 %31 to i64
  %shr171 = lshr i64 %conv3, %sh_prom
  %call9 = call signext i8 @inode_bmap(ptr noundef %dir, i64 noundef %shr171, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %cmp11 = icmp eq i8 %call9, 0
  br i1 %cmp11, label %if.then13, label %if.else52

if.then13:                                        ; preds = %if.else
  %32 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i_sb, align 4
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %offset, align 8
  %conv15 = trunc i64 %35 to i32
  %36 = ptrtoint ptr %eloc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %eloc, align 8
  %partitionReferenceNum.i = getelementptr inbounds %struct.kernel_lb_addr, ptr %eloc, i32 0, i32 1
  %38 = ptrtoint ptr %partitionReferenceNum.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %partitionReferenceNum.i, align 4
  %call.i = call i32 @udf_get_pblock(ptr noundef %33, i32 noundef %37, i16 noundef zeroext %39, i32 noundef %conv15) #8
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %offset, align 8
  %inc = add i64 %41, 1
  store i64 %inc, ptr %offset, align 8
  %42 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb, align 4
  %s_blocksize_bits18 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %s_blocksize_bits18 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %s_blocksize_bits18, align 4
  %sh_prom20 = zext i8 %45 to i64
  %shl = shl i64 %inc, %sh_prom20
  %46 = ptrtoint ptr %elen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %elen, align 4
  %conv21 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shl, i64 %conv21)
  %cmp22 = icmp ult i64 %shl, %conv21
  br i1 %cmp22, label %if.then24, label %if.else43

if.then24:                                        ; preds = %if.then13
  %48 = ptrtoint ptr %i_alloc_type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load26 = load i32, ptr %i_alloc_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.load26)
  %cmp28 = icmp ult i32 %bf.load26, 536870912
  br i1 %cmp28, label %if.then30, label %if.else33

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %offset31 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %49 = ptrtoint ptr %offset31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset31, align 4
  %sub32 = add i32 %50, -8
  store i32 %sub32, ptr %offset31, align 4
  br label %if.end44

if.else33:                                        ; preds = %if.then24
  %bf.lshr27.mask = and i32 %bf.load26, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %bf.lshr27.mask)
  %cmp37 = icmp eq i32 %bf.lshr27.mask, 536870912
  br i1 %cmp37, label %if.then39, label %if.else33.if.end44_crit_edge

if.else33.if.end44_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then39:                                        ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  %offset40 = getelementptr inbounds %struct.extent_position, ptr %epos, i32 0, i32 1
  %51 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offset40, align 4
  %sub41 = add i32 %52, -16
  store i32 %sub41, ptr %offset40, align 4
  br label %if.end44

if.else43:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 0, ptr %offset, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.else43, %if.then39, %if.else33.if.end44_crit_edge, %if.then30
  %call46 = call ptr @udf_tread(ptr noundef %43, i32 noundef %call.i) #8
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call46, ptr %1, align 4
  %55 = ptrtoint ptr %fibh to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call46, ptr %fibh, align 8
  %tobool.not = icmp eq ptr %call46, null
  br i1 %tobool.not, label %if.then50, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then50:                                        ; preds = %if.end44
  %56 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %epos, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.then50.cleanup_crit_edge, label %if.then50.cleanup.sink.split_crit_edge

if.then50.cleanup.sink.split_crit_edge:           ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else52:                                        ; preds = %if.else
  %58 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %epos, align 4
  %tobool.not.i139 = icmp eq ptr %59, null
  br i1 %tobool.not.i139, label %if.else52.cleanup_crit_edge, label %if.else52.cleanup.sink.split_crit_edge

if.else52.cleanup.sink.split_crit_edge:           ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else52.cleanup_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55:                                         ; preds = %if.end44.if.end55_crit_edge, %if.then
  %60 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %f_pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %add)
  %cmp56174 = icmp slt i64 %61, %add
  br i1 %cmp56174, label %while.body.lr.ph, label %if.end55.while.end_crit_edge

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end55
  %lengthFileIdent = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 3
  %fileCharacteristics = getelementptr inbounds %struct.fileIdentDesc, ptr %cfi, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end87.while.body_crit_edge, %while.body.lr.ph
  %call58 = call ptr @udf_fileident_read(ptr noundef %dir, ptr noundef nonnull %f_pos, ptr noundef nonnull %fibh, ptr noundef nonnull %cfi, ptr noundef nonnull %epos, ptr noundef nonnull %eloc, ptr noundef nonnull %elen, ptr noundef nonnull %offset) #8
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.then60, label %if.end70

if.then60:                                        ; preds = %while.body
  %62 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fibh, align 8
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %cmp63.not = icmp eq ptr %63, %65
  %tobool.not.i142 = icmp eq ptr %65, null
  %or.cond = or i1 %cmp63.not, %tobool.not.i142
  br i1 %or.cond, label %if.then60.if.end67_crit_edge, label %if.then.i143

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then.i143:                                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %65) #8
  %66 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pr = load ptr, ptr %fibh, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then.i143, %if.then60.if.end67_crit_edge
  %67 = phi ptr [ %.pr, %if.then.i143 ], [ %63, %if.then60.if.end67_crit_edge ]
  %tobool.not.i145 = icmp eq ptr %67, null
  br i1 %tobool.not.i145, label %if.end67.brelse.exit147_crit_edge, label %if.then.i146

if.end67.brelse.exit147_crit_edge:                ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit147

if.then.i146:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %67) #8
  br label %brelse.exit147

brelse.exit147:                                   ; preds = %if.then.i146, %if.end67.brelse.exit147_crit_edge
  %68 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %epos, align 4
  %tobool.not.i148 = icmp eq ptr %69, null
  br i1 %tobool.not.i148, label %brelse.exit147.cleanup_crit_edge, label %brelse.exit147.cleanup.sink.split_crit_edge

brelse.exit147.cleanup.sink.split_crit_edge:      ; preds = %brelse.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

brelse.exit147.cleanup_crit_edge:                 ; preds = %brelse.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %while.body
  %70 = ptrtoint ptr %lengthFileIdent to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %lengthFileIdent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool72.not = icmp eq i8 %71, 0
  br i1 %tobool72.not, label %if.end70.if.end87_crit_edge, label %land.lhs.true

if.end70.if.end87_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end70
  %72 = ptrtoint ptr %fileCharacteristics to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fileCharacteristics, align 1
  %74 = and i8 %73, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp75 = icmp eq i8 %74, 0
  br i1 %cmp75, label %if.then77, label %land.lhs.true.if.end87_crit_edge

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then77:                                        ; preds = %land.lhs.true
  %75 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fibh, align 8
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %cmp80.not = icmp eq ptr %76, %78
  %tobool.not.i151 = icmp eq ptr %78, null
  %or.cond172 = or i1 %cmp80.not, %tobool.not.i151
  br i1 %or.cond172, label %if.then77.if.end84_crit_edge, label %if.then.i152

if.then77.if.end84_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then.i152:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %78) #8
  %79 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr169 = load ptr, ptr %fibh, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then.i152, %if.then77.if.end84_crit_edge
  %80 = phi ptr [ %.pr169, %if.then.i152 ], [ %76, %if.then77.if.end84_crit_edge ]
  %tobool.not.i154 = icmp eq ptr %80, null
  br i1 %tobool.not.i154, label %if.end84.brelse.exit156_crit_edge, label %if.then.i155

if.end84.brelse.exit156_crit_edge:                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit156

if.then.i155:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %80) #8
  br label %brelse.exit156

brelse.exit156:                                   ; preds = %if.then.i155, %if.end84.brelse.exit156_crit_edge
  %81 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %epos, align 4
  %tobool.not.i157 = icmp eq ptr %82, null
  br i1 %tobool.not.i157, label %brelse.exit156.cleanup_crit_edge, label %brelse.exit156.cleanup.sink.split_crit_edge

brelse.exit156.cleanup.sink.split_crit_edge:      ; preds = %brelse.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

brelse.exit156.cleanup_crit_edge:                 ; preds = %brelse.exit156
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end87:                                         ; preds = %land.lhs.true.if.end87_crit_edge, %if.end70.if.end87_crit_edge
  %83 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %f_pos, align 8
  %cmp56 = icmp slt i64 %84, %add
  br i1 %cmp56, label %if.end87.while.body_crit_edge, label %if.end87.while.end_crit_edge

if.end87.while.end_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end87.while.body_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end87.while.end_crit_edge, %if.end55.while.end_crit_edge
  %85 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fibh, align 8
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %cmp90.not = icmp eq ptr %86, %88
  %tobool.not.i160 = icmp eq ptr %88, null
  %or.cond173 = or i1 %cmp90.not, %tobool.not.i160
  br i1 %or.cond173, label %while.end.if.end94_crit_edge, label %if.then.i161

while.end.if.end94_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then.i161:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %88) #8
  %89 = ptrtoint ptr %fibh to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr170 = load ptr, ptr %fibh, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then.i161, %while.end.if.end94_crit_edge
  %90 = phi ptr [ %.pr170, %if.then.i161 ], [ %86, %while.end.if.end94_crit_edge ]
  %tobool.not.i163 = icmp eq ptr %90, null
  br i1 %tobool.not.i163, label %if.end94.brelse.exit165_crit_edge, label %if.then.i164

if.end94.brelse.exit165_crit_edge:                ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %brelse.exit165

if.then.i164:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  call void @__brelse(ptr noundef nonnull %90) #8
  br label %brelse.exit165

brelse.exit165:                                   ; preds = %if.then.i164, %if.end94.brelse.exit165_crit_edge
  %91 = ptrtoint ptr %epos to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %epos, align 4
  %tobool.not.i166 = icmp eq ptr %92, null
  br i1 %tobool.not.i166, label %brelse.exit165.cleanup_crit_edge, label %brelse.exit165.cleanup.sink.split_crit_edge

brelse.exit165.cleanup.sink.split_crit_edge:      ; preds = %brelse.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

brelse.exit165.cleanup_crit_edge:                 ; preds = %brelse.exit165
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %brelse.exit165.cleanup.sink.split_crit_edge, %brelse.exit156.cleanup.sink.split_crit_edge, %brelse.exit147.cleanup.sink.split_crit_edge, %if.else52.cleanup.sink.split_crit_edge, %if.then50.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %57, %if.then50.cleanup.sink.split_crit_edge ], [ %59, %if.else52.cleanup.sink.split_crit_edge ], [ %69, %brelse.exit147.cleanup.sink.split_crit_edge ], [ %82, %brelse.exit156.cleanup.sink.split_crit_edge ], [ %92, %brelse.exit165.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.then50.cleanup.sink.split_crit_edge ], [ 0, %if.else52.cleanup.sink.split_crit_edge ], [ 0, %brelse.exit147.cleanup.sink.split_crit_edge ], [ 0, %brelse.exit156.cleanup.sink.split_crit_edge ], [ 1, %brelse.exit165.cleanup.sink.split_crit_edge ]
  call void @__brelse(ptr noundef nonnull %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %brelse.exit165.cleanup_crit_edge, %brelse.exit156.cleanup_crit_edge, %brelse.exit147.cleanup_crit_edge, %if.else52.cleanup_crit_edge, %if.then50.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then50.cleanup_crit_edge ], [ 0, %if.else52.cleanup_crit_edge ], [ 0, %brelse.exit147.cleanup_crit_edge ], [ 0, %brelse.exit156.cleanup_crit_edge ], [ 1, %brelse.exit165.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %epos) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elen) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %eloc) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %f_pos) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %fibh) #8
  call void @llvm.lifetime.end.p0(i64 38, ptr nonnull %cfi) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_udf_warn(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_special_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udf_get_fileident(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @udf_update_tag(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_tmpfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @udf_export_ops, !1, !"udf_export_ops", i1 false, i1 false}
!1 = !{!"../fs/udf/namei.c", i32 1322, i32 32}
!2 = !{ptr @udf_dir_inode_operations, !3, !"udf_dir_inode_operations", i1 false, i1 false}
!3 = !{!"../fs/udf/namei.c", i32 1329, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/udf/namei.c", i32 862, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @udf_unlink.__UNIQUE_ID_ddebug234, !5, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/buffer_head.h", i32 366, i32 2}
!13 = !{ptr @__func__.udf_rmdir, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/udf/namei.c", i32 820, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2153942536}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"auto-init"}
!28 = !{i64 2148574424, i64 2148574429, i64 2148574442, i64 2148574486, i64 2148574520, i64 2148574541}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2148758684, i64 2148758716, i64 2148758745, i64 2148758779, i64 2148758810, i64 2148758833}
!31 = !{i64 2148847789}
