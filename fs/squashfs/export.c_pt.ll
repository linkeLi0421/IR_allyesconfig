; ModuleID = '/llk/IR_all_yes/fs/squashfs/export.c_pt.bc'
source_filename = "../fs/squashfs/export.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.export_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.66 = type { i32, i32, i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%union.anon.62 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.59 = type { ptr }
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
%struct.squashfs_sb_info = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i64, i64, i32, i16, i64, i32, i32, i32, i32, i8 }

@squashfs_read_inode_lookup_table.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"squashfs\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"squashfs_read_inode_lookup_table\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fs/squashfs/export.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SQUASHFS: In read_inode_lookup_table, length %d\0A\00", [47 x i8] zeroinitializer }, align 32
@squashfs_export_ops = dso_local constant { %struct.export_operations, [52 x i8] } { %struct.export_operations { ptr null, ptr @squashfs_fh_to_dentry, ptr @squashfs_fh_to_parent, ptr null, ptr @squashfs_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@squashfs_export_iget.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"squashfs_export_iget\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SQUASHFS: Entered squashfs_export_iget\0A\00", [56 x i8] zeroinitializer }, align 32
@squashfs_inode_lookup.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"squashfs_inode_lookup\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SQUASHFS: Entered squashfs_inode_lookup, inode_number = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@squashfs_inode_lookup.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"SQUASHFS: squashfs_inode_lookup, inode = 0x%llx\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 124, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"squashfs_export_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 175, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 72, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 48, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [24 x i8] c"../fs/squashfs/export.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 59, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @squashfs_export_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @squashfs_export_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @squashfs_read_inode_lookup_table(ptr noundef %sb, i64 noundef %lookup_table_start, i64 noundef %next_table, i32 noundef %inodes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %inodes, 3
  %sub = add i32 %mul, 8191
  %div74 = lshr i32 %sub, 13
  %mul1 = shl nuw nsw i32 %div74, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_read_inode_lookup_table.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_read_inode_lookup_table, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_read_inode_lookup_table.__UNIQUE_ID_ddebug207, ptr noundef nonnull @.str.3, i32 noundef %mul1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inodes)
  %cmp = icmp eq i32 %inodes, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %conv = zext i32 %mul1 to i64
  %sub11 = sub i64 %next_table, %lookup_table_start
  call void @__sanitizer_cov_trace_cmp8(i64 %sub11, i64 %conv)
  %cmp12.not = icmp eq i64 %sub11, %conv
  br i1 %cmp12.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = tail call ptr @squashfs_read_table(ptr noundef %sb, i64 noundef %lookup_table_start, i32 noundef %mul1) #4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.cleanup_crit_edge, label %for.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %sub21 = add nsw i32 %div74, -1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %n.0 = phi i32 [ %add24, %for.body.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0, i32 %sub21)
  %exitcond.not = icmp eq i32 %n.0, %sub21
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, ptr %call17, i32 %n.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  %add24 = add i32 %n.0, 1
  %arrayidx25 = getelementptr i64, ptr %call17, i32 %add24
  %3 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx25, align 8
  %5 = tail call i64 @llvm.bswap.i64(i64 %4)
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %2)
  %cmp26.not = icmp ule i64 %5, %2
  %sub28 = sub i64 %5, %2
  call void @__sanitizer_cov_trace_const_cmp8(i64 8194, i64 %sub28)
  %cmp29 = icmp ugt i64 %sub28, 8194
  %or.cond = or i1 %cmp26.not, %cmp29
  br i1 %or.cond, label %for.body.cleanup.sink.split_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.end:                                          ; preds = %for.cond
  %arrayidx35 = getelementptr i64, ptr %call17, i32 %sub21
  %6 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx35, align 8
  %8 = tail call i64 @llvm.bswap.i64(i64 %7)
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %lookup_table_start)
  %cmp36.not = icmp uge i64 %8, %lookup_table_start
  %sub39 = sub i64 %lookup_table_start, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8194, i64 %sub39)
  %cmp40 = icmp ugt i64 %sub39, 8194
  %or.cond75 = or i1 %cmp36.not, %cmp40
  br i1 %or.cond75, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef %call17) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %if.end16.cleanup_crit_edge ], [ %call17, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_read_table(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_fh_to_dentry(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %fh_type, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %switch = icmp ult i32 %0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_len)
  %cmp2 = icmp slt i32 %fh_len, 2
  %or.cond = or i1 %cmp2, %switch
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_export_iget.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fh_to_dentry, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !28

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_export_iget.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.5) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call4.i = tail call fastcc i64 @squashfs_inode_lookup(ptr noundef %sb, i32 noundef %2) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call4.i)
  %cmp.i = icmp sgt i64 %call4.i, -1
  br i1 %cmp.i, label %if.then5.i, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call ptr @squashfs_iget(ptr noundef %sb, i64 noundef %call4.i, i32 noundef %2) #4
  %call7.i = tail call ptr @d_obtain_alias(ptr noundef %call6.i) #4
  br label %return

return:                                           ; preds = %if.then5.i, %do.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %call7.i, %if.then5.i ], [ inttoptr (i32 -2 to ptr), %do.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_fh_to_parent(ptr noundef %sb, ptr nocapture noundef readonly %fid, i32 noundef %fh_len, i32 noundef %fh_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %fh_type)
  %cmp.not = icmp ne i32 %fh_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fh_len)
  %cmp1 = icmp slt i32 %fh_len, 4
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %parent_ino = getelementptr inbounds %struct.anon.66, ptr %fid, i32 0, i32 2
  %0 = ptrtoint ptr %parent_ino to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_ino, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_export_iget.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_fh_to_parent, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !28

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_export_iget.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.5) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call4.i = tail call fastcc i64 @squashfs_inode_lookup(ptr noundef %sb, i32 noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call4.i)
  %cmp.i = icmp sgt i64 %call4.i, -1
  br i1 %cmp.i, label %if.then5.i, label %do.end.i.return_crit_edge

do.end.i.return_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call ptr @squashfs_iget(ptr noundef %sb, i64 noundef %call4.i, i32 noundef %1) #4
  %call7.i = tail call ptr @d_obtain_alias(ptr noundef %call6.i) #4
  br label %return

return:                                           ; preds = %if.then5.i, %do.end.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %call7.i, %if.then5.i ], [ inttoptr (i32 -2 to ptr), %do.end.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @squashfs_get_parent(ptr nocapture noundef readonly %child) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %child, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %parent = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_sb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_export_iget.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_get_parent, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !28

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_export_iget.__UNIQUE_ID_ddebug206, ptr noundef nonnull @.str.5) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %call4.i = tail call fastcc i64 @squashfs_inode_lookup(ptr noundef %5, i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call4.i)
  %cmp.i = icmp sgt i64 %call4.i, -1
  br i1 %cmp.i, label %if.then5.i, label %do.end.i.squashfs_export_iget.exit_crit_edge

do.end.i.squashfs_export_iget.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %squashfs_export_iget.exit

if.then5.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call ptr @squashfs_iget(ptr noundef %5, i64 noundef %call4.i, i32 noundef %3) #4
  %call7.i = tail call ptr @d_obtain_alias(ptr noundef %call6.i) #4
  br label %squashfs_export_iget.exit

squashfs_export_iget.exit:                        ; preds = %if.then5.i, %do.end.i.squashfs_export_iget.exit_crit_edge
  %dentry.0.i = phi ptr [ %call7.i, %if.then5.i ], [ inttoptr (i32 -2 to ptr), %do.end.i.squashfs_export_iget.exit_crit_edge ]
  ret ptr %dentry.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @squashfs_inode_lookup(ptr noundef %sb, i32 noundef %ino_num) unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %start = alloca i64, align 8
  %ino = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  %sub = add i32 %ino_num, -1
  %mul = shl i32 %sub, 3
  %div41 = lshr i32 %mul, 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %rem = and i32 %mul, 8184
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %rem, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ino) #4
  %3 = ptrtoint ptr %ino to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %ino, align 8, !annotation !29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_inode_lookup.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_inode_lookup, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !28

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_inode_lookup.__UNIQUE_ID_ddebug204, ptr noundef nonnull @.str.7, i32 noundef %ino_num) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ino_num)
  %cmp = icmp eq i32 %ino_num, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %inodes = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %inodes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inodes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp6.not = icmp ult i32 %sub, %5
  br i1 %cmp6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %inode_lookup_table = getelementptr inbounds %struct.squashfs_sb_info, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %inode_lookup_table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %inode_lookup_table, align 4
  %arrayidx = getelementptr i64, ptr %7, i32 %div41
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx, align 8
  %10 = tail call i64 @llvm.bswap.i64(i64 %9)
  %11 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %start, align 8
  %call9 = call i32 @squashfs_read_metadata(ptr noundef %sb, ptr noundef nonnull %ino, ptr noundef nonnull %start, ptr noundef nonnull %offset, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %do.body13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %conv = sext i32 %call9 to i64
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @squashfs_inode_lookup.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@squashfs_inode_lookup, %if.then25)) #4
          to label %do.end28 [label %if.then25], !srcloc !28

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ino, align 8
  %14 = call i64 @llvm.bswap.i64(i64 %13)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @squashfs_inode_lookup.__UNIQUE_ID_ddebug205, ptr noundef nonnull @.str.8, i64 noundef %14) #4
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %15 = ptrtoint ptr %ino to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ino, align 8
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then11, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %if.then11 ], [ %17, %do.end28 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ino) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @squashfs_iget(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @squashfs_read_metadata(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/squashfs/export.c", i32 124, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @squashfs_read_inode_lookup_table.__UNIQUE_ID_ddebug207, !1, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!6 = !{ptr @squashfs_export_ops, !7, !"squashfs_export_ops", i1 false, i1 false}
!7 = !{!"../fs/squashfs/export.c", i32 175, i32 32}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/squashfs/export.c", i32 72, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @squashfs_export_iget.__UNIQUE_ID_ddebug206, !9, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/squashfs/export.c", i32 48, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @squashfs_inode_lookup.__UNIQUE_ID_ddebug204, !13, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/squashfs/export.c", i32 59, i32 2}
!18 = !{ptr @squashfs_inode_lookup.__UNIQUE_ID_ddebug205, !17, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 2148479767, i64 2148479772, i64 2148479785, i64 2148479829, i64 2148479863, i64 2148479884}
!29 = !{!"auto-init"}
