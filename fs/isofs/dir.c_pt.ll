; ModuleID = '/llk/IR_all_yes/fs/isofs/dir.c_pt.bc'
source_filename = "../fs/isofs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iso_directory_record = type { [1 x i8], [1 x i8], [8 x i8], [8 x i8], [7 x i8], [1 x i8], [1 x i8], [1 x i8], [4 x i8], [1 x i8], [0 x i8] }
%struct.file = type { %union.anon.10, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.10 = type { %struct.callback_head }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.70 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.dir_context = type { ptr, i64 }
%struct.isofs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i16, i16, %struct.kgid_t, %struct.kuid_t, ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
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

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ARCHIMEDES\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%3.3x\00", [26 x i8] zeroinitializer }, align 32
@isofs_dir_operations = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @isofs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@isofs_dir_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @isofs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@do_isofs_readdir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\015iso9660: Corrupted directory entry in block %lu of inode %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_isofs_readdir\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/isofs/dir.c\00", [17 x i8] zeroinitializer }, align 32
@do_isofs_readdir._entry_ptr = internal global ptr @do_isofs_readdir._entry, section ".printk_index", align 4
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c".\00", [30 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 97, i64 110]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 65, i32 19 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 72, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"isofs_dir_operations\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 268, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private constant [18 x i8] c"../fs/isofs/dir.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 152, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 3566, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/fs.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 3571, i32 25 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @do_isofs_readdir._entry, ptr @do_isofs_readdir._entry_ptr, ptr @.str, ptr @.str.1, ptr @isofs_dir_operations, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isofs_dir_operations to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_isofs_readdir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @isofs_name_translate(ptr nocapture noundef readonly %de, ptr nocapture noundef writeonly %new, ptr nocapture readnone %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 10
  %name_len = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 9
  %0 = ptrtoint ptr %name_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name_len, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp92.not = icmp eq i8 %1, 0
  br i1 %cmp92.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %conv, -3
  %sub36 = add nsw i32 %conv, -2
  %add40 = add nsw i32 %conv, -1
  %arrayidx41 = getelementptr i8, ptr %name, i32 %add40
  %add25 = add nsw i32 %conv, -1
  %arrayidx26 = getelementptr i8, ptr %name, i32 %add25
  %add = add nsw i32 %conv, -2
  %arrayidx20 = getelementptr i8, ptr %name, i32 %add
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr i8, ptr %name, i32 %i.093
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %4 = add i8 %3, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %4)
  %5 = icmp ult i8 %4, 26
  %6 = or i8 %3, 32
  %c.0 = select i1 %5, i8 %6, i8 %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.0)
  %cmp14 = icmp eq i8 %c.0, 46
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093, i32 %sub)
  %cmp17 = icmp eq i32 %i.093, %sub
  %or.cond82 = select i1 %cmp14, i1 %cmp17, i1 false
  br i1 %or.cond82, label %land.lhs.true19, label %if.end31

land.lhs.true19:                                  ; preds = %if.end
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %8)
  %cmp22 = icmp eq i8 %8, 59
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %10)
  %cmp28 = icmp eq i8 %10, 49
  br i1 %cmp28, label %land.lhs.true24.for.end_crit_edge, label %land.lhs.true24.for.inc_crit_edge

land.lhs.true24.for.inc_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true24.for.end_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end31:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %c.0)
  %cmp33 = icmp eq i8 %c.0, 59
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093, i32 %sub36)
  %cmp37 = icmp eq i32 %i.093, %sub36
  %or.cond83 = select i1 %cmp33, i1 %cmp37, i1 false
  br i1 %or.cond83, label %land.lhs.true39, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true39:                                  ; preds = %if.end31
  %11 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %12)
  %cmp43 = icmp eq i8 %12, 49
  br i1 %cmp43, label %land.lhs.true39.for.end_crit_edge, label %land.lhs.true39.for.inc_crit_edge

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true39.for.end_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true39.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %land.lhs.true24.for.inc_crit_edge, %land.lhs.true19.for.inc_crit_edge
  %cmp3389 = phi i1 [ true, %land.lhs.true39.for.inc_crit_edge ], [ %cmp33, %if.end31.for.inc_crit_edge ], [ false, %land.lhs.true24.for.inc_crit_edge ], [ false, %land.lhs.true19.for.inc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %c.0)
  %cmp51 = icmp eq i8 %c.0, 47
  %or.cond84 = or i1 %cmp51, %cmp3389
  %c.1 = select i1 %or.cond84, i8 46, i8 %c.0
  %arrayidx55 = getelementptr i8, ptr %new, i32 %i.093
  %13 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %c.1, ptr %arrayidx55, align 1
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true39.for.end_crit_edge, %land.lhs.true24.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %sub36, %land.lhs.true39.for.end_crit_edge ], [ %sub, %land.lhs.true24.for.end_crit_edge ], [ %i.093, %for.body.for.end_crit_edge ], [ %conv, %for.inc.for.end_crit_edge ]
  ret i32 %i.0.lcssa
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_acorn_filename(ptr nocapture noundef readonly %de, ptr nocapture noundef %retname, ptr nocapture readnone %inode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name.i = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 10
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 9
  %0 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name_len.i, align 1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp92.not.i = icmp eq i8 %1, 0
  br i1 %cmp92.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %sub.i = add nsw i32 %conv.i, -3
  %sub36.i = add nsw i32 %conv.i, -2
  %add40.i = add nsw i32 %conv.i, -1
  %arrayidx41.i = getelementptr i8, ptr %name.i, i32 %add40.i
  %arrayidx20.i = getelementptr i8, ptr %name.i, i32 %sub36.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.093.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr i8, ptr %name.i, i32 %i.093.i
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %for.body.i.isofs_name_translate.exit_crit_edge, label %if.end.i

for.body.i.isofs_name_translate.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isofs_name_translate.exit

if.end.i:                                         ; preds = %for.body.i
  %4 = add i8 %3, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %4)
  %5 = icmp ult i8 %4, 26
  %6 = or i8 %3, 32
  %c.0.i = select i1 %5, i8 %6, i8 %3
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.0.i)
  %cmp14.i = icmp eq i8 %c.0.i, 46
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093.i, i32 %sub.i)
  %cmp17.i = icmp eq i32 %i.093.i, %sub.i
  %or.cond82.i = select i1 %cmp14.i, i1 %cmp17.i, i1 false
  br i1 %or.cond82.i, label %land.lhs.true19.i, label %if.end31.i

land.lhs.true19.i:                                ; preds = %if.end.i
  %7 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %8)
  %cmp22.i = icmp eq i8 %8, 59
  br i1 %cmp22.i, label %land.lhs.true24.i, label %land.lhs.true19.i.for.inc.i_crit_edge

land.lhs.true19.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true24.i:                                ; preds = %land.lhs.true19.i
  %9 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %10)
  %cmp28.i = icmp eq i8 %10, 49
  br i1 %cmp28.i, label %land.lhs.true24.i.isofs_name_translate.exit_crit_edge, label %land.lhs.true24.i.for.inc.i_crit_edge

land.lhs.true24.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true24.i.isofs_name_translate.exit_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isofs_name_translate.exit

if.end31.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %c.0.i)
  %cmp33.i = icmp eq i8 %c.0.i, 59
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093.i, i32 %sub36.i)
  %cmp37.i = icmp eq i32 %i.093.i, %sub36.i
  %or.cond83.i = select i1 %cmp33.i, i1 %cmp37.i, i1 false
  br i1 %or.cond83.i, label %land.lhs.true39.i, label %if.end31.i.for.inc.i_crit_edge

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true39.i:                                ; preds = %if.end31.i
  %11 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx41.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %12)
  %cmp43.i = icmp eq i8 %12, 49
  br i1 %cmp43.i, label %land.lhs.true39.i.isofs_name_translate.exit_crit_edge, label %land.lhs.true39.i.for.inc.i_crit_edge

land.lhs.true39.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true39.i.isofs_name_translate.exit_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isofs_name_translate.exit

for.inc.i:                                        ; preds = %land.lhs.true39.i.for.inc.i_crit_edge, %if.end31.i.for.inc.i_crit_edge, %land.lhs.true24.i.for.inc.i_crit_edge, %land.lhs.true19.i.for.inc.i_crit_edge
  %cmp3389.i = phi i1 [ true, %land.lhs.true39.i.for.inc.i_crit_edge ], [ %cmp33.i, %if.end31.i.for.inc.i_crit_edge ], [ false, %land.lhs.true24.i.for.inc.i_crit_edge ], [ false, %land.lhs.true19.i.for.inc.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %c.0.i)
  %cmp51.i = icmp eq i8 %c.0.i, 47
  %or.cond84.i = or i1 %cmp51.i, %cmp3389.i
  %c.1.i = select i1 %or.cond84.i, i8 46, i8 %c.0.i
  %arrayidx55.i = getelementptr i8, ptr %retname, i32 %i.093.i
  %13 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %c.1.i, ptr %arrayidx55.i, align 1
  %inc.i = add nuw nsw i32 %i.093.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.isofs_name_translate.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.isofs_name_translate.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isofs_name_translate.exit

isofs_name_translate.exit:                        ; preds = %for.inc.i.isofs_name_translate.exit_crit_edge, %land.lhs.true39.i.isofs_name_translate.exit_crit_edge, %land.lhs.true24.i.isofs_name_translate.exit_crit_edge, %for.body.i.isofs_name_translate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ %sub36.i, %land.lhs.true39.i.isofs_name_translate.exit_crit_edge ], [ %sub.i, %land.lhs.true24.i.isofs_name_translate.exit_crit_edge ], [ %i.093.i, %for.body.i.isofs_name_translate.exit_crit_edge ], [ %conv.i, %for.inc.i.isofs_name_translate.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa.i)
  %cmp = icmp eq i32 %i.0.lcssa.i, 0
  br i1 %cmp, label %isofs_name_translate.exit.cleanup_crit_edge, label %if.end

isofs_name_translate.exit.cleanup_crit_edge:      ; preds = %isofs_name_translate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %isofs_name_translate.exit
  %14 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %name_len.i, align 1
  %conv = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv, 33
  %and = and i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %inc = add nuw nsw i32 %conv, 34
  %spec.select = select i1 %tobool.not, i32 %add, i32 %inc
  %16 = ptrtoint ptr %de to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %de, align 1
  %conv4 = zext i8 %17 to i32
  %sub = sub nsw i32 %conv4, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub)
  %cmp5.not = icmp eq i32 %sub, 32
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %de, i32 %spec.select
  %call9 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(11) @.str, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %retname to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %retname, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %19)
  %cmp14 = icmp eq i8 %19, 95
  br i1 %cmp14, label %land.lhs.true, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end12
  %arrayidx16 = getelementptr i8, ptr %add.ptr, i32 19
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp19.not = icmp eq i8 %22, 0
  br i1 %cmp19.not, label %land.lhs.true.if.end22_crit_edge, label %if.then21

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %retname to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %retname, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %land.lhs.true.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  %flags = getelementptr inbounds %struct.iso_directory_record, ptr %de, i32 0, i32 5
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp26 = icmp eq i8 %26, 0
  br i1 %cmp26, label %land.lhs.true28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end22
  %arrayidx29 = getelementptr i8, ptr %add.ptr, i32 13
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp31 = icmp eq i8 %28, -1
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %arrayidx34 = getelementptr i8, ptr %add.ptr, i32 12
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %30)
  %cmp37 = icmp ugt i8 %30, -17
  br i1 %cmp37, label %if.then39, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx40 = getelementptr i8, ptr %retname, i32 %i.0.lcssa.i
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 44, ptr %arrayidx40, align 1
  %add.ptr42 = getelementptr i8, ptr %arrayidx40, i32 1
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %34 = and i8 %33, 15
  %and45 = zext i8 %34 to i32
  %shl = shl nuw nsw i32 %and45, 8
  %arrayidx46 = getelementptr i8, ptr %add.ptr, i32 11
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %36 to i32
  %or = or i32 %shl, %conv47
  %call48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr42, ptr noundef nonnull @.str.1, i32 noundef %or)
  %add49 = add i32 %i.0.lcssa.i, 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %land.lhs.true33.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %isofs_name_translate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %isofs_name_translate.exit.cleanup_crit_edge ], [ %i.0.lcssa.i, %if.end.cleanup_crit_edge ], [ %i.0.lcssa.i, %if.end8.cleanup_crit_edge ], [ %add49, %if.then39 ], [ %i.0.lcssa.i, %land.lhs.true33.cleanup_crit_edge ], [ %i.0.lcssa.i, %land.lhs.true28.cleanup_crit_edge ], [ %i.0.lcssa.i, %if.end22.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isofs_readdir(ptr nocapture noundef readonly %file, ptr noundef %ctx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = inttoptr i32 %call1 to ptr
  %add.ptr = getelementptr i8, ptr %2, i32 1024
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %s_blocksize.i, align 16
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %s_blocksize_bits.i, align 4
  %pos.i = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %sub.i = add i32 %6, -1
  %sh_prom.i = zext i8 %8 to i64
  %i_size.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %pos.i, align 8
  %11 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %i_size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp356.i = icmp slt i64 %10, %12
  br i1 %cmp356.i, label %while.body.lr.ph.i, label %if.end.do_isofs_readdir.exit_crit_edge

if.end.do_isofs_readdir.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_isofs_readdir.exit

while.body.lr.ph.i:                               ; preds = %if.end
  %shr.i = ashr i64 %10, %sh_prom.i
  %conv6.i = trunc i64 %shr.i to i32
  %conv5.i = zext i8 %8 to i32
  %13 = trunc i64 %10 to i32
  %conv3.i = and i32 %sub.i, %13
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %14 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %s_fs_info.i.i, align 16
  %sub.i.i = add nsw i32 %conv5.i, -5
  %s_high_sierra.i = getelementptr inbounds %struct.isofs_sb_info, ptr %15, i32 0, i32 11
  %s_joliet_level.i = getelementptr inbounds %struct.isofs_sb_info, ptr %15, i32 0, i32 7
  %s_mapping.i = getelementptr inbounds %struct.isofs_sb_info, ptr %15, i32 0, i32 8
  %dentry.i312.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup189.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %first_de.0361.i = phi i32 [ 1, %while.body.lr.ph.i ], [ %first_de.1.i, %cleanup189.i.while.body.i_crit_edge ]
  %bh.0360.i = phi ptr [ null, %while.body.lr.ph.i ], [ %bh.5.i, %cleanup189.i.while.body.i_crit_edge ]
  %inode_number.0359.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inode_number.2.i, %cleanup189.i.while.body.i_crit_edge ]
  %offset.0358.i = phi i32 [ %conv3.i, %while.body.lr.ph.i ], [ %offset.2.i, %cleanup189.i.while.body.i_crit_edge ]
  %block.0357.i = phi i32 [ %conv6.i, %while.body.lr.ph.i ], [ %block.2.i, %cleanup189.i.while.body.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %bh.0360.i, null
  br i1 %tobool.not.i, label %if.then.i, label %while.body.i.if.end13.i_crit_edge

while.body.i.if.end13.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i:                                        ; preds = %while.body.i
  %conv9.i = zext i32 %block.0357.i to i64
  %call10.i = tail call ptr @isofs_bread(ptr noundef %1, i64 noundef %conv9.i) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.then.i.do_isofs_readdir.exit_crit_edge, label %if.then.i.if.end13.i_crit_edge

if.then.i.if.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then.i.do_isofs_readdir.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_isofs_readdir.exit

if.end13.i:                                       ; preds = %if.then.i.if.end13.i_crit_edge, %while.body.i.if.end13.i_crit_edge
  %bh.1.i = phi ptr [ %bh.0360.i, %while.body.i.if.end13.i_crit_edge ], [ %call10.i, %if.then.i.if.end13.i_crit_edge ]
  %b_data.i = getelementptr inbounds %struct.buffer_head, ptr %bh.1.i, i32 0, i32 5
  %16 = ptrtoint ptr %b_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %b_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %offset.0358.i
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i, align 1
  %conv14.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp15.i = icmp eq i8 %19, 0
  br i1 %cmp15.i, label %brelse.exit.i, label %if.end26.i

brelse.exit.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__brelse(ptr noundef nonnull %bh.1.i) #8
  %20 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos.i, align 8
  %add.i = add i64 %21, 2048
  %and19.i = and i64 %add.i, -2048
  store i64 %and19.i, ptr %pos.i, align 8
  %shr24.i = ashr i64 %and19.i, %sh_prom.i
  %conv25.i = trunc i64 %shr24.i to i32
  br label %cleanup189.i

if.end26.i:                                       ; preds = %if.end13.i
  %add27.i = add i32 %offset.0358.i, %conv14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add27.i)
  %cmp28.not.i = icmp ugt i32 %6, %add27.i
  br i1 %cmp28.not.i, label %if.end26.i.if.end45.i_crit_edge, label %brelse.exit305.i

if.end26.i.if.end45.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

brelse.exit305.i:                                 ; preds = %if.end26.i
  %sub31.i = sub i32 %6, %add27.i
  %add32.i = add i32 %sub31.i, %conv14.i
  %22 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %add32.i)
  %and34.i = and i32 %add27.i, %sub.i
  %inc.i = add i32 %block.0357.i, 1
  tail call void @__brelse(ptr noundef nonnull %bh.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %brelse.exit305.i.if.end45.i_crit_edge, label %if.then36.i

brelse.exit305.i.if.end45.i_crit_edge:            ; preds = %brelse.exit305.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then36.i:                                      ; preds = %brelse.exit305.i
  %conv37.i = zext i32 %inc.i to i64
  %call38.i = tail call ptr @isofs_bread(ptr noundef %1, i64 noundef %conv37.i) #8
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.then36.i.do_isofs_readdir.exit_crit_edge, label %if.end41.i

if.then36.i.do_isofs_readdir.exit_crit_edge:      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_isofs_readdir.exit

if.end41.i:                                       ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr42.i = getelementptr i8, ptr %add.ptr, i32 %add32.i
  %b_data43.i = getelementptr inbounds %struct.buffer_head, ptr %call38.i, i32 0, i32 5
  %23 = ptrtoint ptr %b_data43.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data43.i, align 4
  %25 = call ptr @memcpy(ptr %add.ptr42.i, ptr %24, i32 %and34.i)
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end41.i, %brelse.exit305.i.if.end45.i_crit_edge, %if.end26.i.if.end45.i_crit_edge
  %block.1.i = phi i32 [ %block.0357.i, %if.end26.i.if.end45.i_crit_edge ], [ %inc.i, %if.end41.i ], [ %inc.i, %brelse.exit305.i.if.end45.i_crit_edge ]
  %offset.1.i = phi i32 [ %add27.i, %if.end26.i.if.end45.i_crit_edge ], [ %and34.i, %if.end41.i ], [ 0, %brelse.exit305.i.if.end45.i_crit_edge ]
  %bh.4.i = phi ptr [ %bh.1.i, %if.end26.i.if.end45.i_crit_edge ], [ %call38.i, %if.end41.i ], [ null, %brelse.exit305.i.if.end45.i_crit_edge ]
  %de.1.i = phi ptr [ %add.ptr.i, %if.end26.i.if.end45.i_crit_edge ], [ %add.ptr, %if.end41.i ], [ %add.ptr, %brelse.exit305.i.if.end45.i_crit_edge ]
  %name_len.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 9
  %26 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %name_len.i, align 1
  %conv46.i = zext i8 %27 to i32
  %add47.i = add nuw nsw i32 %conv46.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %add47.i, i32 %conv14.i)
  %cmp48.i = icmp ugt i32 %add47.i, %conv14.i
  br i1 %cmp48.i, label %do.end.i, label %if.end52.i

do.end.i:                                         ; preds = %if.end45.i
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i_ino.i, align 8
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %block.1.i, i32 noundef %29) #11
  %tobool.not.i306.i = icmp eq ptr %bh.4.i, null
  br i1 %tobool.not.i306.i, label %do.end.i.do_isofs_readdir.exit_crit_edge, label %do.end.i.cleanup195.sink.split.i_crit_edge

do.end.i.cleanup195.sink.split.i_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup195.sink.split.i

do.end.i.do_isofs_readdir.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_isofs_readdir.exit

if.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_de.0361.i)
  %tobool53.not.i = icmp eq i32 %first_de.0361.i, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end57.i_crit_edge, label %if.then54.i

if.end52.i.if.end57.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then54.i:                                      ; preds = %if.end52.i
  %flags.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags.i.i, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i309.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i309.i, label %if.then54.i.isofs_normalize_block_and_offset.exit.i_crit_edge, label %if.then.i310.i

if.then54.i.isofs_normalize_block_and_offset.exit.i_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %isofs_normalize_block_and_offset.exit.i

if.then.i310.i:                                   ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  %extent.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 2
  %33 = ptrtoint ptr %extent.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %extent.i.i, align 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  %ext_attr_length.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 1
  %36 = ptrtoint ptr %ext_attr_length.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ext_attr_length.i.i, align 1
  %conv.i.i.i = zext i8 %37 to i32
  %add.i.i = add i32 %35, %conv.i.i.i
  br label %isofs_normalize_block_and_offset.exit.i

isofs_normalize_block_and_offset.exit.i:          ; preds = %if.then.i310.i, %if.then54.i.isofs_normalize_block_and_offset.exit.i_crit_edge
  %block_saved.0.i = phi i32 [ %block.0357.i, %if.then54.i.isofs_normalize_block_and_offset.exit.i_crit_edge ], [ %add.i.i, %if.then.i310.i ]
  %offset_saved.0.i = phi i32 [ %offset.0358.i, %if.then54.i.isofs_normalize_block_and_offset.exit.i_crit_edge ], [ 0, %if.then.i310.i ]
  %shl.i.i = shl i32 %block_saved.0.i, %sub.i.i
  %shr.i.i = lshr i32 %offset_saved.0.i, 5
  %or.i.i = or i32 %shr.i.i, %shl.i.i
  br label %if.end57.i

if.end57.i:                                       ; preds = %isofs_normalize_block_and_offset.exit.i, %if.end52.i.if.end57.i_crit_edge
  %inode_number.1.i = phi i32 [ %or.i.i, %isofs_normalize_block_and_offset.exit.i ], [ %inode_number.0359.i, %if.end52.i.if.end57.i_crit_edge ]
  %38 = ptrtoint ptr %s_high_sierra.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %s_high_sierra.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 15
  %bf.cast.i = zext i16 %bf.lshr.i to i32
  %sub58.i = sub nsw i32 0, %bf.cast.i
  %arrayidx59.i = getelementptr %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 5, i32 %sub58.i
  %39 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx59.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %tobool62.not.i = icmp sgt i8 %40, -1
  br i1 %tobool62.not.i, label %if.end67.i, label %if.then63.i

if.then63.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv64.i = zext i8 %19 to i64
  %41 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %pos.i, align 8
  %add66.i = add i64 %42, %conv64.i
  store i64 %add66.i, ptr %pos.i, align 8
  br label %cleanup189.i

if.end67.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp71.i = icmp eq i8 %27, 1
  br i1 %cmp71.i, label %land.lhs.true.i, label %if.end67.i.if.end103.i_crit_edge

if.end67.i.if.end103.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

land.lhs.true.i:                                  ; preds = %if.end67.i
  %name.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 10
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %name.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %44, label %land.lhs.true.i.if.end103.i_crit_edge [
    i8 0, label %if.then77.i
    i8 1, label %if.then96.i
  ]

land.lhs.true.i.if.end103.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103.i

if.then77.i:                                      ; preds = %land.lhs.true.i
  %46 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx, align 8
  %48 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %pos.i, align 8
  %50 = ptrtoint ptr %dentry.i312.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dentry.i312.i, align 4
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %d_inode.i.i, align 8
  %i_ino.i.i = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %i_ino.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %i_ino.i.i, align 8
  %conv.i.i = zext i32 %55 to i64
  %call.i.i = tail call i32 %47(ptr noundef %ctx, ptr noundef nonnull @.str.5, i32 noundef 1, i64 noundef %49, i64 noundef %conv.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end80.i, label %if.then77.i.while.end.i_crit_edge

if.then77.i.while.end.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end80.i:                                       ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv81.i = zext i8 %19 to i64
  %56 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %pos.i, align 8
  %add83.i = add i64 %57, %conv81.i
  store i64 %add83.i, ptr %pos.i, align 8
  br label %cleanup189.i

if.then96.i:                                      ; preds = %land.lhs.true.i
  %58 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx, align 8
  %60 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %pos.i, align 8
  %62 = ptrtoint ptr %dentry.i312.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dentry.i312.i, align 4
  %d_lockref.i.i.i = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i.i.i) #8
  %d_parent.i.i.i = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %d_parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %d_parent.i.i.i, align 8
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %d_inode.i.i.i, align 8
  %i_ino.i.i.i = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %i_ino.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %i_ino.i.i.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i.i) #8
  %conv.i313.i = zext i32 %69 to i64
  %call1.i.i = tail call i32 %59(ptr noundef %ctx, ptr noundef nonnull @.str.6, i32 noundef 2, i64 noundef %61, i64 noundef %conv.i313.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i314.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i314.i, label %if.end99.i, label %if.then96.i.while.end.i_crit_edge

if.then96.i.while.end.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end99.i:                                       ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv100.i = zext i8 %19 to i64
  %70 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %pos.i, align 8
  %add102.i = add i64 %71, %conv100.i
  store i64 %add102.i, ptr %pos.i, align 8
  br label %cleanup189.i

if.end103.i:                                      ; preds = %land.lhs.true.i.if.end103.i_crit_edge, %if.end67.i.if.end103.i_crit_edge
  %72 = and i16 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool107.not.i = icmp eq i16 %72, 0
  %73 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool118.not.i = icmp eq i8 %73, 0
  %or.cond.i = select i1 %tobool107.not.i, i1 true, i1 %tobool118.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i, label %if.end103.i.if.then135.i_crit_edge

if.end103.i.if.then135.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then135.i

lor.lhs.false.i:                                  ; preds = %if.end103.i
  %74 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool123.not.i = icmp ne i16 %74, 0
  %75 = and i8 %40, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool134.not.i = icmp eq i8 %75, 0
  %or.cond355.i = select i1 %tobool123.not.i, i1 true, i1 %tobool134.not.i
  br i1 %or.cond355.i, label %if.end139.i, label %lor.lhs.false.i.if.then135.i_crit_edge

lor.lhs.false.i.if.then135.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then135.i

if.then135.i:                                     ; preds = %lor.lhs.false.i.if.then135.i_crit_edge, %if.end103.i.if.then135.i_crit_edge
  %conv136.i = zext i8 %19 to i64
  %76 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %pos.i, align 8
  %add138.i = add i64 %77, %conv136.i
  store i64 %add138.i, ptr %pos.i, align 8
  br label %cleanup189.i

if.end139.i:                                      ; preds = %lor.lhs.false.i
  %78 = and i16 %bf.load.i, 24576
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool144.not.i = icmp eq i16 %78, 0
  br i1 %tobool144.not.i, label %if.end139.i.if.then153.i_crit_edge, label %if.then145.i

if.end139.i.if.then153.i_crit_edge:               ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153.i

if.then145.i:                                     ; preds = %if.end139.i
  %call146.i = tail call i32 @get_rock_ridge_filename(ptr noundef %de.1.i, ptr noundef nonnull %2, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.not.i = icmp eq i32 %call146.i, 0
  br i1 %cmp147.not.i, label %if.then145.i.if.then153.i_crit_edge, label %if.then145.i.if.end177.i_crit_edge

if.then145.i.if.end177.i_crit_edge:               ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.then145.i.if.then153.i_crit_edge:              ; preds = %if.then145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then153.i

if.then153.i:                                     ; preds = %if.then145.i.if.then153.i_crit_edge, %if.end139.i.if.then153.i_crit_edge
  %79 = ptrtoint ptr %s_joliet_level.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %s_joliet_level.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool154.not.i = icmp eq i8 %80, 0
  br i1 %tobool154.not.i, label %if.else.i, label %if.then155.i

if.then155.i:                                     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #10
  %call156.i = tail call i32 @get_joliet_filename(ptr noundef %de.1.i, ptr noundef nonnull %2, ptr noundef %1) #8
  br label %if.end177.i

if.else.i:                                        ; preds = %if.then153.i
  %81 = ptrtoint ptr %s_mapping.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %s_mapping.i, align 1
  %83 = zext i8 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %82, label %if.else169.i [
    i8 97, label %if.then160.i
    i8 110, label %if.then167.i
  ]

if.then160.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call161.i = tail call i32 @get_acorn_filename(ptr noundef %de.1.i, ptr noundef nonnull %2, ptr undef) #8
  br label %if.end177.i

if.then167.i:                                     ; preds = %if.else.i
  %name.i.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 10
  %84 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %name_len.i, align 1
  %conv.i315.i = zext i8 %85 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %cmp92.not.i.i = icmp eq i8 %85, 0
  br i1 %cmp92.not.i.i, label %if.then167.i.if.end185.i_crit_edge, label %for.body.lr.ph.i.i

if.then167.i.if.end185.i_crit_edge:               ; preds = %if.then167.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.i

for.body.lr.ph.i.i:                               ; preds = %if.then167.i
  %sub.i316.i = add nsw i32 %conv.i315.i, -3
  %sub36.i.i = add nsw i32 %conv.i315.i, -2
  %add40.i.i = add nsw i32 %conv.i315.i, -1
  %arrayidx41.i.i = getelementptr i8, ptr %name.i.i, i32 %add40.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %name.i.i, i32 %sub36.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.093.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr i8, ptr %name.i.i, i32 %i.093.i.i
  %86 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i318.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i318.i, label %for.body.i.i.if.end177.i_crit_edge, label %if.end.i.i

for.body.i.i.if.end177.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %88 = add i8 %87, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %88)
  %89 = icmp ult i8 %88, 26
  %90 = or i8 %87, 32
  %c.0.i.i = select i1 %89, i8 %90, i8 %87
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %c.0.i.i)
  %cmp14.i.i = icmp eq i8 %c.0.i.i, 46
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093.i.i, i32 %sub.i316.i)
  %cmp17.i.i = icmp eq i32 %i.093.i.i, %sub.i316.i
  %or.cond82.i.i = select i1 %cmp14.i.i, i1 %cmp17.i.i, i1 false
  br i1 %or.cond82.i.i, label %land.lhs.true19.i.i, label %if.end31.i.i

land.lhs.true19.i.i:                              ; preds = %if.end.i.i
  %91 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx20.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %92)
  %cmp22.i.i = icmp eq i8 %92, 59
  br i1 %cmp22.i.i, label %land.lhs.true24.i.i, label %land.lhs.true19.i.i.for.inc.i.i_crit_edge

land.lhs.true19.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true24.i.i:                              ; preds = %land.lhs.true19.i.i
  %93 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx41.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %94)
  %cmp28.i.i = icmp eq i8 %94, 49
  br i1 %cmp28.i.i, label %land.lhs.true24.i.i.if.end177.i_crit_edge, label %land.lhs.true24.i.i.for.inc.i.i_crit_edge

land.lhs.true24.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true24.i.i.if.end177.i_crit_edge:        ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.end31.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %c.0.i.i)
  %cmp33.i.i = icmp eq i8 %c.0.i.i, 59
  call void @__sanitizer_cov_trace_cmp4(i32 %i.093.i.i, i32 %sub36.i.i)
  %cmp37.i.i = icmp eq i32 %i.093.i.i, %sub36.i.i
  %or.cond83.i.i = select i1 %cmp33.i.i, i1 %cmp37.i.i, i1 false
  br i1 %or.cond83.i.i, label %land.lhs.true39.i.i, label %if.end31.i.i.for.inc.i.i_crit_edge

if.end31.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true39.i.i:                              ; preds = %if.end31.i.i
  %95 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx41.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %96)
  %cmp43.i.i = icmp eq i8 %96, 49
  br i1 %cmp43.i.i, label %land.lhs.true39.i.i.if.end177.i_crit_edge, label %land.lhs.true39.i.i.for.inc.i.i_crit_edge

land.lhs.true39.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true39.i.i.if.end177.i_crit_edge:        ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

for.inc.i.i:                                      ; preds = %land.lhs.true39.i.i.for.inc.i.i_crit_edge, %if.end31.i.i.for.inc.i.i_crit_edge, %land.lhs.true24.i.i.for.inc.i.i_crit_edge, %land.lhs.true19.i.i.for.inc.i.i_crit_edge
  %cmp3389.i.i = phi i1 [ true, %land.lhs.true39.i.i.for.inc.i.i_crit_edge ], [ %cmp33.i.i, %if.end31.i.i.for.inc.i.i_crit_edge ], [ false, %land.lhs.true24.i.i.for.inc.i.i_crit_edge ], [ false, %land.lhs.true19.i.i.for.inc.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %c.0.i.i)
  %cmp51.i.i = icmp eq i8 %c.0.i.i, 47
  %or.cond84.i.i = or i1 %cmp51.i.i, %cmp3389.i.i
  %c.1.i.i = select i1 %or.cond84.i.i, i8 46, i8 %c.0.i.i
  %arrayidx55.i.i = getelementptr i8, ptr %2, i32 %i.093.i.i
  %97 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %c.1.i.i, ptr %arrayidx55.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.093.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i315.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end177.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.end177.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end177.i

if.else169.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %name170.i = getelementptr inbounds %struct.iso_directory_record, ptr %de.1.i, i32 0, i32 10
  %98 = ptrtoint ptr %name_len.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %name_len.i, align 1
  %conv173.i = zext i8 %99 to i32
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.else169.i, %for.inc.i.i.if.end177.i_crit_edge, %land.lhs.true39.i.i.if.end177.i_crit_edge, %land.lhs.true24.i.i.if.end177.i_crit_edge, %for.body.i.i.if.end177.i_crit_edge, %if.then160.i, %if.then155.i, %if.then145.i.if.end177.i_crit_edge
  %len.1.i = phi i32 [ %call156.i, %if.then155.i ], [ %call161.i, %if.then160.i ], [ %conv173.i, %if.else169.i ], [ %call146.i, %if.then145.i.if.end177.i_crit_edge ], [ %sub36.i.i, %land.lhs.true39.i.i.if.end177.i_crit_edge ], [ %sub.i316.i, %land.lhs.true24.i.i.if.end177.i_crit_edge ], [ %i.093.i.i, %for.body.i.i.if.end177.i_crit_edge ], [ %conv.i315.i, %for.inc.i.i.if.end177.i_crit_edge ]
  %p.2.i = phi ptr [ %2, %if.then155.i ], [ %2, %if.then160.i ], [ %name170.i, %if.else169.i ], [ %2, %if.then145.i.if.end177.i_crit_edge ], [ %2, %for.body.i.i.if.end177.i_crit_edge ], [ %2, %land.lhs.true24.i.i.if.end177.i_crit_edge ], [ %2, %land.lhs.true39.i.i.if.end177.i_crit_edge ], [ %2, %for.inc.i.i.if.end177.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i)
  %cmp178.i = icmp sgt i32 %len.1.i, 0
  br i1 %cmp178.i, label %if.then180.i, label %if.end177.i.if.end185.i_crit_edge

if.end177.i.if.end185.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.i

if.then180.i:                                     ; preds = %if.end177.i
  %conv181.i = zext i32 %inode_number.1.i to i64
  %100 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ctx, align 8
  %102 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %pos.i, align 8
  %call.i320.i = tail call i32 %101(ptr noundef %ctx, ptr noundef %p.2.i, i32 noundef %len.1.i, i64 noundef %103, i64 noundef %conv181.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320.i)
  %cmp.i321.i = icmp eq i32 %call.i320.i, 0
  br i1 %cmp.i321.i, label %if.then180.i.if.end185.i_crit_edge, label %if.then180.i.while.end.i_crit_edge

if.then180.i.while.end.i_crit_edge:               ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.then180.i.if.end185.i_crit_edge:               ; preds = %if.then180.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then180.i.if.end185.i_crit_edge, %if.end177.i.if.end185.i_crit_edge, %if.then167.i.if.end185.i_crit_edge
  %conv186.i = zext i8 %19 to i64
  %104 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %pos.i, align 8
  %add188.i = add i64 %105, %conv186.i
  store i64 %add188.i, ptr %pos.i, align 8
  br label %cleanup189.i

cleanup189.i:                                     ; preds = %if.end185.i, %if.then135.i, %if.end99.i, %if.end80.i, %if.then63.i, %brelse.exit.i
  %block.2.i = phi i32 [ %conv25.i, %brelse.exit.i ], [ %block.1.i, %if.then63.i ], [ %block.1.i, %if.end80.i ], [ %block.1.i, %if.end99.i ], [ %block.1.i, %if.then135.i ], [ %block.1.i, %if.end185.i ]
  %offset.2.i = phi i32 [ 0, %brelse.exit.i ], [ %offset.1.i, %if.then63.i ], [ %offset.1.i, %if.end80.i ], [ %offset.1.i, %if.end99.i ], [ %offset.1.i, %if.then135.i ], [ %offset.1.i, %if.end185.i ]
  %inode_number.2.i = phi i32 [ %inode_number.0359.i, %brelse.exit.i ], [ %inode_number.1.i, %if.then63.i ], [ %inode_number.1.i, %if.end80.i ], [ %inode_number.1.i, %if.end99.i ], [ %inode_number.1.i, %if.then135.i ], [ %inode_number.1.i, %if.end185.i ]
  %bh.5.i = phi ptr [ null, %brelse.exit.i ], [ %bh.4.i, %if.then63.i ], [ %bh.4.i, %if.end80.i ], [ %bh.4.i, %if.end99.i ], [ %bh.4.i, %if.then135.i ], [ %bh.4.i, %if.end185.i ]
  %first_de.1.i = phi i32 [ %first_de.0361.i, %brelse.exit.i ], [ 0, %if.then63.i ], [ 1, %if.end80.i ], [ 1, %if.end99.i ], [ 1, %if.then135.i ], [ 1, %if.end185.i ]
  %106 = ptrtoint ptr %pos.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %pos.i, align 8
  %108 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %i_size.i, align 8
  %cmp.i = icmp slt i64 %107, %109
  br i1 %cmp.i, label %cleanup189.i.while.body.i_crit_edge, label %cleanup189.i.while.end.i_crit_edge

cleanup189.i.while.end.i_crit_edge:               ; preds = %cleanup189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

cleanup189.i.while.body.i_crit_edge:              ; preds = %cleanup189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup189.i.while.end.i_crit_edge, %if.then180.i.while.end.i_crit_edge, %if.then96.i.while.end.i_crit_edge, %if.then77.i.while.end.i_crit_edge
  %bh.6.i = phi ptr [ %bh.5.i, %cleanup189.i.while.end.i_crit_edge ], [ %bh.4.i, %if.then77.i.while.end.i_crit_edge ], [ %bh.4.i, %if.then96.i.while.end.i_crit_edge ], [ %bh.4.i, %if.then180.i.while.end.i_crit_edge ]
  %tobool192.not.i = icmp eq ptr %bh.6.i, null
  br i1 %tobool192.not.i, label %while.end.i.do_isofs_readdir.exit_crit_edge, label %while.end.i.cleanup195.sink.split.i_crit_edge

while.end.i.cleanup195.sink.split.i_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup195.sink.split.i

while.end.i.do_isofs_readdir.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_isofs_readdir.exit

cleanup195.sink.split.i:                          ; preds = %while.end.i.cleanup195.sink.split.i_crit_edge, %do.end.i.cleanup195.sink.split.i_crit_edge
  %bh.4.lcssa.sink.i = phi ptr [ %bh.4.i, %do.end.i.cleanup195.sink.split.i_crit_edge ], [ %bh.6.i, %while.end.i.cleanup195.sink.split.i_crit_edge ]
  %retval.4.ph.i = phi i32 [ -5, %do.end.i.cleanup195.sink.split.i_crit_edge ], [ 0, %while.end.i.cleanup195.sink.split.i_crit_edge ]
  tail call void @__brelse(ptr noundef nonnull %bh.4.lcssa.sink.i) #8
  br label %do_isofs_readdir.exit

do_isofs_readdir.exit:                            ; preds = %cleanup195.sink.split.i, %while.end.i.do_isofs_readdir.exit_crit_edge, %do.end.i.do_isofs_readdir.exit_crit_edge, %if.then36.i.do_isofs_readdir.exit_crit_edge, %if.then.i.do_isofs_readdir.exit_crit_edge, %if.end.do_isofs_readdir.exit_crit_edge
  %retval.4.i = phi i32 [ 0, %while.end.i.do_isofs_readdir.exit_crit_edge ], [ -5, %do.end.i.do_isofs_readdir.exit_crit_edge ], [ 0, %if.end.do_isofs_readdir.exit_crit_edge ], [ %retval.4.ph.i, %cleanup195.sink.split.i ], [ 0, %if.then36.i.do_isofs_readdir.exit_crit_edge ], [ 0, %if.then.i.do_isofs_readdir.exit_crit_edge ]
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %do_isofs_readdir.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.4.i, %do_isofs_readdir.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isofs_lookup(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @isofs_bread(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_rock_ridge_filename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_joliet_filename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

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

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/isofs/dir.c", i32 65, i32 19}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/isofs/dir.c", i32 72, i32 32}
!4 = !{ptr @isofs_dir_operations, !5, !"isofs_dir_operations", i1 false, i1 false}
!5 = !{!"../fs/isofs/dir.c", i32 268, i32 30}
!6 = !{ptr @isofs_dir_inode_operations, !7, !"isofs_dir_inode_operations", i1 false, i1 false}
!7 = !{!"../fs/isofs/dir.c", i32 278, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/isofs/dir.c", i32 152, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @do_isofs_readdir._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @do_isofs_readdir._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/fs.h", i32 3566, i32 25}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/fs.h", i32 3571, i32 25}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
