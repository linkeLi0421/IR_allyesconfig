; ModuleID = '/llk/IR_all_yes/fs/isofs/export.c_pt.bc'
source_filename = "../fs/isofs/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
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
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.72 = type { ptr }
%struct.isofs_fid = type { i32, i16, i16, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
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
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }

@isofs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr @isofs_export_encode_fh, ptr @isofs_fh_to_dentry, ptr @isofs_fh_to_parent, ptr null, ptr @isofs_export_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@isofs_export_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013isofs: isofs_export_get_parent(): child is not a directory!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"isofs_export_get_parent\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/isofs/export.c\00", [46 x i8] zeroinitializer }, align 32
@isofs_export_get_parent._entry_ptr = internal global ptr @isofs_export_get_parent._entry, section ".printk_index", align 4
@isofs_export_get_parent._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013isofs: isofs_export_get_parent(): child directory not normalized!\0A\00", [59 x i8] zeroinitializer }, align 32
@isofs_export_get_parent._entry_ptr.5 = internal global ptr @isofs_export_get_parent._entry.3, section ".printk_index", align 4
@isofs_export_get_parent._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013isofs: Unable to find the \22..\22 directory for NFS.\0A\00", [43 x i8] zeroinitializer }, align 32
@isofs_export_get_parent._entry_ptr.8 = internal global ptr @isofs_export_get_parent._entry.6, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"isofs_export_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 188, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 56, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 66, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [21 x i8] c"../fs/isofs/export.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 93, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @isofs_export_get_parent._entry, ptr @isofs_export_get_parent._entry.3, ptr @isofs_export_get_parent._entry.6, ptr @isofs_export_get_parent._entry_ptr, ptr @isofs_export_get_parent._entry_ptr.5, ptr @isofs_export_get_parent._entry_ptr.8, ptr @isofs_export_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_export_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_export_get_parent._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_export_get_parent._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @isofs_export_encode_fh(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %fh32, ptr nocapture noundef %max_len, ptr noundef readonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -32
  %0 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_len, align 4
  %tobool.not = icmp eq ptr %parent, null
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp slt i32 %1, 5
  %or.cond = select i1 %tobool.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %if.else.cleanup_crit_edge, label %if.end3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.else
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %4 = ptrtoint ptr %fh32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fh32, align 4
  %i_iget5_offset = getelementptr i8, ptr %inode, i32 -28
  %5 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_iget5_offset, align 4
  %conv = trunc i32 %6 to i16
  %arrayidx4 = getelementptr i16, ptr %fh32, i32 2
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr i16, ptr %fh32, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx5, align 2
  %i_generation = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 49
  %9 = ptrtoint ptr %i_generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_generation, align 8
  %arrayidx6 = getelementptr i32, ptr %fh32, i32 2
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx6, align 4
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.then8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i38 = getelementptr i8, ptr %parent, i32 -32
  %12 = ptrtoint ptr %add.ptr.i38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i38, align 8
  %arrayidx11 = getelementptr i32, ptr %fh32, i32 3
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx11, align 4
  %i_iget5_offset12 = getelementptr i8, ptr %parent, i32 -28
  %15 = ptrtoint ptr %i_iget5_offset12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i_iget5_offset12, align 4
  %conv13 = trunc i32 %16 to i16
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv13, ptr %arrayidx5, align 2
  %i_generation15 = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 49
  %18 = ptrtoint ptr %i_generation15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i_generation15, align 8
  %arrayidx16 = getelementptr i32, ptr %fh32, i32 4
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end3.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %len.0.sink = phi i32 [ 5, %entry.cleanup_crit_edge ], [ 3, %if.else.cleanup_crit_edge ], [ 5, %if.then8 ], [ 3, %if.end3.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 255, %entry.cleanup_crit_edge ], [ 255, %if.else.cleanup_crit_edge ], [ 2, %if.then8 ], [ 1, %if.end3.cleanup_crit_edge ]
  %21 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %len.0.sink, ptr %max_len, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @isofs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fh_len)
  %cmp = icmp slt i32 %fh_len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type)
  %cmp1 = icmp sgt i32 %fh_type, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fid, align 4
  %generation = getelementptr inbounds %struct.isofs_fid, ptr %fid, i32 0, i32 3
  %2 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %offset = getelementptr inbounds %struct.isofs_fid, ptr %fid, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset, align 4
  %conv = zext i16 %5 to i32
  %call.i.i = tail call ptr @__isofs_iget(ptr noundef %sb, i32 noundef %1, i32 noundef %conv, i32 noundef 0) #5
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 49
  %6 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp6.not.i = icmp eq i32 %7, %3
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef %call.i.i) #5
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  %call10.i = tail call ptr @d_obtain_alias(ptr noundef %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then7.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then7.i ], [ %call10.i, %if.end9.i ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @isofs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fh_len)
  %cmp = icmp sgt i32 %fh_len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type)
  %cmp1.not = icmp eq i32 %fh_type, 2
  %or.cond = and i1 %cmp, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp2 = icmp ugt i32 %fh_len, 2
  br i1 %cmp2, label %cond.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end:                                         ; preds = %if.end
  %parent_block = getelementptr inbounds %struct.isofs_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %parent_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_block, align 4
  %parent_offset = getelementptr inbounds %struct.isofs_fid, ptr %fid, i32 0, i32 2
  %2 = ptrtoint ptr %parent_offset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %parent_offset, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp3 = icmp ugt i32 %fh_len, 4
  br i1 %cmp3, label %cond.true5, label %cond.end.cond.end7_crit_edge

cond.end.cond.end7_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end7

cond.true5:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent_generation = getelementptr inbounds %struct.isofs_fid, ptr %fid, i32 0, i32 5
  %4 = ptrtoint ptr %parent_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_generation, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true5, %cond.end.cond.end7_crit_edge
  %cond8 = phi i32 [ %5, %cond.true5 ], [ 0, %cond.end.cond.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %cond.end7.cleanup_crit_edge, label %if.end.i

cond.end7.cleanup_crit_edge:                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %cond.end7
  %call.i.i = tail call ptr @__isofs_iget(ptr noundef %sb, i32 noundef %1, i32 noundef %conv, i32 noundef 0) #5
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond8)
  %tobool.not.i = icmp eq i32 %cond8, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call.i.i, i32 0, i32 49
  %6 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i_generation.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %cond8)
  %cmp6.not.i = icmp eq i32 %7, %cond8
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iput(ptr noundef %call.i.i) #5
  br label %cleanup

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %if.end5.i.if.end9.i_crit_edge
  %call10.i = tail call ptr @d_obtain_alias(ptr noundef %call.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.then7.i, %if.end.i.cleanup_crit_edge, %cond.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.then7.i ], [ %call10.i, %if.end9.i ], [ inttoptr (i32 -116 to ptr), %cond.end7.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -116 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @isofs_export_get_parent(ptr nocapture noundef readonly %child) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %4)
  %cmp = icmp eq i16 %4, 16384
  br i1 %cmp, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end43

if.end:                                           ; preds = %entry
  %i_iget5_offset = getelementptr i8, ptr %1, i32 -28
  %5 = ptrtoint ptr %i_iget5_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_iget5_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5.not = icmp eq i32 %6, 0
  br i1 %cmp5.not, label %if.end14, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %if.end43

if.end14:                                         ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb, align 4
  %conv15 = zext i32 %8 to i64
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_bdev.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s_blocksize.i, align 16
  %call.i = tail call ptr @__bread_gfp(ptr noundef %12, i64 noundef %conv15, i32 noundef %14, i32 noundef 8) #5
  %cmp17 = icmp eq ptr %call.i, null
  br i1 %cmp17, label %if.end14.if.end43_crit_edge, label %if.end21

if.end14.if.end43_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end21:                                         ; preds = %if.end14
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %b_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv.i = zext i8 %18 to i32
  %add.ptr = getelementptr i8, ptr %16, i32 %conv.i
  %name_len = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 9
  %19 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %name_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp26.not = icmp eq i8 %20, 1
  br i1 %cmp26.not, label %lor.lhs.false, label %if.end21.do.end34_crit_edge

if.end21.do.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

lor.lhs.false:                                    ; preds = %if.end21
  %name = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 10
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp29.not = icmp eq i8 %22, 1
  br i1 %cmp29.not, label %if.end38, label %lor.lhs.false.do.end34_crit_edge

lor.lhs.false.do.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

do.end34:                                         ; preds = %lor.lhs.false.do.end34_crit_edge, %if.end21.do.end34_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %brelse.exit

if.end38:                                         ; preds = %lor.lhs.false
  %flags.i = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 5
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end38.isofs_normalize_block_and_offset.exit_crit_edge, label %if.then.i

if.end38.isofs_normalize_block_and_offset.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %isofs_normalize_block_and_offset.exit

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %extent.i = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 2
  %26 = ptrtoint ptr %extent.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %extent.i, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %ext_attr_length.i = getelementptr inbounds %struct.iso_directory_record, ptr %add.ptr, i32 0, i32 1
  %29 = ptrtoint ptr %ext_attr_length.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ext_attr_length.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %add.i = add i32 %28, %conv.i.i
  br label %isofs_normalize_block_and_offset.exit

isofs_normalize_block_and_offset.exit:            ; preds = %if.then.i, %if.end38.isofs_normalize_block_and_offset.exit_crit_edge
  %parent_block.0 = phi i32 [ %8, %if.end38.isofs_normalize_block_and_offset.exit_crit_edge ], [ %add.i, %if.then.i ]
  %parent_offset.0 = phi i32 [ %conv.i, %if.end38.isofs_normalize_block_and_offset.exit_crit_edge ], [ 0, %if.then.i ]
  %31 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i_sb, align 4
  %call.i56 = tail call ptr @__isofs_iget(ptr noundef %32, i32 noundef %parent_block.0, i32 noundef %parent_offset.0, i32 noundef 0) #5
  %call41 = tail call ptr @d_obtain_alias(ptr noundef %call.i56) #5
  br label %brelse.exit

brelse.exit:                                      ; preds = %isofs_normalize_block_and_offset.exit, %do.end34
  %rv.0 = phi ptr [ inttoptr (i32 -13 to ptr), %do.end34 ], [ %call41, %isofs_normalize_block_and_offset.exit ]
  tail call void @__brelse(ptr noundef nonnull %call.i) #5
  br label %if.end43

if.end43:                                         ; preds = %brelse.exit, %if.end14.if.end43_crit_edge, %do.end10, %do.end
  %rv.062 = phi ptr [ %rv.0, %brelse.exit ], [ inttoptr (i32 -13 to ptr), %do.end10 ], [ inttoptr (i32 -13 to ptr), %do.end ], [ inttoptr (i32 -13 to ptr), %if.end14.if.end43_crit_edge ]
  ret ptr %rv.062
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__isofs_iget(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @isofs_export_ops, !1, !"isofs_export_ops", i1 false, i1 false}
!1 = !{!"../fs/isofs/export.c", i32 188, i32 32}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/isofs/export.c", i32 56, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @isofs_export_get_parent._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @isofs_export_get_parent._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/isofs/export.c", i32 66, i32 3}
!10 = !{ptr @isofs_export_get_parent._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @isofs_export_get_parent._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/isofs/export.c", i32 93, i32 3}
!14 = !{ptr @isofs_export_get_parent._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @isofs_export_get_parent._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
