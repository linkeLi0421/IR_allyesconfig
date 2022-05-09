; ModuleID = '/llk/IR_all_yes/fs/adfs/dir_fplus.c_pt.bc'
source_filename = "../fs/adfs/dir_fplus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.adfs_dir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.adfs_dir = type { ptr, i32, [4 x ptr], ptr, i32, i32, %union.anon.70, %union.anon.71 }
%union.anon.70 = type { ptr }
%union.anon.71 = type { ptr }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.adfs_bigdirheader = type { i8, [3 x i8], i32, i32, i32, i32, i32, i32, [1 x i8] }
%struct.adfs_bigdirtail = type { i32, i8, [2 x i8], i8 }
%struct.object_info = type { i32, i32, i32, i32, i32, i8, i32, [260 x i8] }
%struct.dir_context = type { ptr, i64 }
%struct.adfs_bigdirentry = type { i32, i32, i32, i32, i32, i32, i32 }

@adfs_fplus_dir_ops = dso_local constant { %struct.adfs_dir_ops, [32 x i8] } { %struct.adfs_dir_ops { ptr @adfs_fplus_read, ptr @adfs_fplus_iterate, ptr @adfs_fplus_setpos, ptr @adfs_fplus_getnext, ptr @adfs_fplus_update, ptr null, ptr null, ptr @adfs_fplus_commit }, [32 x i8] zeroinitializer }, align 32
@__func__.adfs_fplus_read = private unnamed_addr constant [16 x i8] c"adfs_fplus_read\00", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dir %06x has malformed header\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"dir %06x header size %X does not match directory size %X\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dir %06x has malformed tail\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dir %06x checkbyte mismatch\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.adfs_fplus_update = private unnamed_addr constant [18 x i8] c"adfs_fplus_update\00", align 1
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to locate entry to update\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error reading directory entry\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"adfs_fplus_dir_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 280, i32 27 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 119, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 125, i32 16 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 126, i32 5 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 140, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 145, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 242, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [23 x i8] c"../fs/adfs/dir_fplus.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 247, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @adfs_fplus_dir_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adfs_fplus_dir_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fplus_read(ptr noundef %sb, i32 noundef %indaddr, i32 noundef %size, ptr noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 3
  %0 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %s_blocksize, align 16
  %call = tail call i32 @adfs_dir_read_buffers(ptr noundef %sb, i32 noundef %indaddr, i32 noundef %1, ptr noundef %dir) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bhs = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %2 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bhs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %b_data, align 4
  %8 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %8, align 4
  %bigdirsize.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %bigdirsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bigdirsize.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %bigdirversion.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %bigdirversion.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bigdirversion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i:                                  ; preds = %if.end
  %arrayidx3.i = getelementptr %struct.adfs_bigdirheader, ptr %7, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp5.not.i = icmp eq i8 %16, 0
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.out_crit_edge

lor.lhs.false.i.out_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx9.i = getelementptr %struct.adfs_bigdirheader, ptr %7, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp11.not.i = icmp eq i8 %18, 0
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false7.i.out_crit_edge

lor.lhs.false7.i.out_crit_edge:                   ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false13.i:                                ; preds = %lor.lhs.false7.i
  %bigdirstartname.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 2
  %19 = ptrtoint ptr %bigdirstartname.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bigdirstartname.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1396854898, i32 %20)
  %cmp14.not.i = icmp ne i32 %20, 1396854898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %or.cond.i = select i1 %cmp14.not.i, i1 true, i1 %tobool.not.i
  %and.i = and i32 %12, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp ne i32 %and.i, 0
  %or.cond63.i = select i1 %or.cond.i, i1 true, i1 %tobool18.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %12)
  %cmp20.i = icmp ugt i32 %12, 4194304
  %or.cond64.i = select i1 %or.cond63.i, i1 true, i1 %cmp20.i
  br i1 %or.cond64.i, label %lor.lhs.false13.i.out_crit_edge, label %if.end.i

lor.lhs.false13.i.out_crit_edge:                  ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false13.i
  %sub.i = add nsw i32 %12, -36
  %bigdirnamelen.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bigdirnamelen.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %add.i = add i32 %23, 3
  %and22.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and22.i)
  %cmp23.i = icmp ult i32 %sub.i, %and22.i
  br i1 %cmp23.i, label %if.end.i.out_crit_edge, label %if.end26.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26.i:                                       ; preds = %if.end.i
  %sub27.i = sub i32 %sub.i, %and22.i
  %bigdirnamesize.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %bigdirnamesize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bigdirnamesize.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27.i, i32 %26)
  %cmp28.i = icmp ult i32 %sub27.i, %26
  br i1 %cmp28.i, label %if.end26.i.out_crit_edge, label %if.end31.i

if.end26.i.out_crit_edge:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end31.i:                                       ; preds = %if.end26.i
  %bigdirentries.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %bigdirentries.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bigdirentries.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 149796, i32 %29)
  %cmp33.i = icmp ugt i32 %29, 149796
  br i1 %cmp33.i, label %if.end31.i.out_crit_edge, label %lor.lhs.false35.i

if.end31.i.out_crit_edge:                         ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false35.i:                                ; preds = %if.end31.i
  %sub32.i = sub i32 %sub27.i, %26
  %mul.i = mul nuw nsw i32 %29, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub32.i)
  %cmp36.i = icmp ugt i32 %mul.i, %sub32.i
  br i1 %cmp36.i, label %lor.lhs.false35.i.out_crit_edge, label %if.end4

lor.lhs.false35.i.out_crit_edge:                  ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool5.not = icmp eq i32 %size, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %size)
  %cmp.not = icmp eq i32 %12, %size
  %or.cond = select i1 %tobool5.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @adfs_msg(ptr noundef %sb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %indaddr, i32 noundef %12, i32 noundef %size) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %call8 = tail call i32 @adfs_dir_read_buffers(ptr noundef %sb, i32 noundef %indaddr, i32 noundef %12, ptr noundef %dir) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %30 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bhs, align 4
  %nr_buffers = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 1
  %32 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_buffers, align 4
  %sub = add i32 %33, -1
  %arrayidx13 = getelementptr ptr, ptr %31, i32 %sub
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx13, align 4
  %b_data14 = getelementptr inbounds %struct.buffer_head, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %b_data14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %b_data14, align 4
  %38 = ptrtoint ptr %s_blocksize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_blocksize, align 16
  %sub16 = add i32 %39, -8
  %add.ptr = getelementptr i8, ptr %37, i32 %sub16
  %40 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %40, align 4
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1870030190, i32 %43)
  %cmp.not.i65 = icmp eq i32 %43, 1870030190
  br i1 %cmp.not.i65, label %lor.lhs.false.i66, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false.i66:                                ; preds = %if.end11
  %bigdirendmasseq.i = getelementptr inbounds %struct.adfs_bigdirtail, ptr %add.ptr, i32 0, i32 1
  %44 = ptrtoint ptr %bigdirendmasseq.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bigdirendmasseq.i, align 4
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %47)
  %cmp2.not.i = icmp eq i8 %45, %47
  br i1 %cmp2.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i66.out_crit_edge

lor.lhs.false.i66.out_crit_edge:                  ; preds = %lor.lhs.false.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i66
  %reserved.i = getelementptr inbounds %struct.adfs_bigdirtail, ptr %add.ptr, i32 0, i32 2
  %48 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp6.not.i = icmp eq i8 %49, 0
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false4.i.out_crit_edge

lor.lhs.false4.i.out_crit_edge:                   ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false4.i
  %arrayidx10.i = getelementptr %struct.adfs_bigdirtail, ptr %add.ptr, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp12.not.i = icmp eq i8 %51, 0
  br i1 %cmp12.not.i, label %if.end20, label %lor.lhs.false8.i.out_crit_edge

lor.lhs.false8.i.out_crit_edge:                   ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end20:                                         ; preds = %lor.lhs.false8.i
  %call21 = tail call fastcc zeroext i8 @adfs_fplus_checkbyte(ptr noundef %dir)
  %bigdircheckbyte = getelementptr inbounds %struct.adfs_bigdirtail, ptr %add.ptr, i32 0, i32 3
  %52 = ptrtoint ptr %bigdircheckbyte to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bigdircheckbyte, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call21, i8 %53)
  %cmp23.not = icmp eq i8 %call21, %53
  br i1 %cmp23.not, label %if.end26, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %bigdirparent = getelementptr inbounds %struct.adfs_bigdirheader, ptr %7, i32 0, i32 7
  %54 = ptrtoint ptr %bigdirparent to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bigdirparent, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %parent_id = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 5
  %57 = ptrtoint ptr %parent_id to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %parent_id, align 4
  br label %cleanup

out:                                              ; preds = %if.end20.out_crit_edge, %lor.lhs.false8.i.out_crit_edge, %lor.lhs.false4.i.out_crit_edge, %lor.lhs.false.i66.out_crit_edge, %if.end11.out_crit_edge, %lor.lhs.false35.i.out_crit_edge, %if.end31.i.out_crit_edge, %if.end26.i.out_crit_edge, %if.end.i.out_crit_edge, %lor.lhs.false13.i.out_crit_edge, %lor.lhs.false7.i.out_crit_edge, %lor.lhs.false.i.out_crit_edge, %if.end.out_crit_edge
  %.str.4.sink = phi ptr [ @.str, %lor.lhs.false35.i.out_crit_edge ], [ @.str, %lor.lhs.false13.i.out_crit_edge ], [ @.str, %lor.lhs.false7.i.out_crit_edge ], [ @.str, %lor.lhs.false.i.out_crit_edge ], [ @.str, %if.end.out_crit_edge ], [ @.str, %if.end.i.out_crit_edge ], [ @.str, %if.end26.i.out_crit_edge ], [ @.str, %if.end31.i.out_crit_edge ], [ @.str.3, %lor.lhs.false4.i.out_crit_edge ], [ @.str.3, %lor.lhs.false.i66.out_crit_edge ], [ @.str.3, %if.end11.out_crit_edge ], [ @.str.3, %lor.lhs.false8.i.out_crit_edge ], [ @.str.4, %if.end20.out_crit_edge ]
  %ret.0 = phi i32 [ -5, %lor.lhs.false35.i.out_crit_edge ], [ -5, %lor.lhs.false13.i.out_crit_edge ], [ -5, %lor.lhs.false7.i.out_crit_edge ], [ -5, %lor.lhs.false.i.out_crit_edge ], [ -5, %if.end.out_crit_edge ], [ -5, %if.end.i.out_crit_edge ], [ -5, %if.end26.i.out_crit_edge ], [ -5, %if.end31.i.out_crit_edge ], [ -5, %lor.lhs.false4.i.out_crit_edge ], [ -5, %lor.lhs.false.i66.out_crit_edge ], [ -5, %if.end11.out_crit_edge ], [ -5, %lor.lhs.false8.i.out_crit_edge ], [ 0, %if.end20.out_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %sb, ptr noundef nonnull @__func__.adfs_fplus_read, ptr noundef nonnull %.str.4.sink, i32 noundef %indaddr) #7
  tail call void @adfs_dir_relse(ptr noundef %dir) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end26, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end26 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fplus_iterate(ptr noundef %dir, ptr noundef %ctx) #0 align 64 {
entry:
  %obj = alloca %struct.object_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %obj) #7
  %0 = call ptr @memset(ptr %obj, i32 255, i32 288)
  %pos = getelementptr inbounds %struct.dir_context, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %pos, align 8
  %sub = add i64 %2, -2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %tobool.not = icmp ult i64 %sub, 4294967296
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %sub to i32
  %3 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bigdirentries.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %bigdirentries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bigdirentries.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp.not.i = icmp ult i32 %8, %conv
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %adfs_fplus_setpos.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

adfs_fplus_setpos.exit:                           ; preds = %if.end
  %pos.i = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 4
  %9 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %pos.i, align 4
  %name = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 7
  %name_len = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  %call620 = call i32 @adfs_fplus_getnext(ptr noundef %dir, ptr noundef nonnull %obj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call620)
  %tobool7.not21 = icmp eq i32 %call620, 0
  br i1 %tobool7.not21, label %while.body.lr.ph, label %adfs_fplus_setpos.exit.cleanup_crit_edge

adfs_fplus_setpos.exit.cleanup_crit_edge:         ; preds = %adfs_fplus_setpos.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %adfs_fplus_setpos.exit
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end11.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %name_len, align 4
  %12 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %indaddr, align 4
  %conv8 = zext i32 %13 to i64
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 8
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  %call.i = call i32 %15(ptr noundef %ctx, ptr noundef %name, i32 noundef %11, i64 noundef %17, i64 noundef %conv8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end11, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %pos, align 8
  %call6 = call i32 @adfs_fplus_getnext(ptr noundef %dir, ptr noundef nonnull %obj)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11.while.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.while.body_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %while.body.cleanup_crit_edge, %adfs_fplus_setpos.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %obj) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adfs_fplus_setpos(ptr nocapture noundef %dir, i32 noundef %fpos) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bigdirentries = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %bigdirentries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bigdirentries, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %fpos)
  %cmp.not = icmp ult i32 %5, %fpos
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pos = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %fpos, ptr %pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -2, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fplus_getnext(ptr noundef %dir, ptr noundef %obj) #0 align 64 {
entry:
  %bde = alloca %struct.adfs_bigdirentry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bde) #7
  %3 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 1
  %4 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 2
  %5 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 3
  %6 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 4
  %7 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 5
  %8 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 6
  %pos = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 4
  %9 = call ptr @memset(ptr %bde, i32 255, i32 28)
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pos, align 4
  %bigdirentries = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %bigdirentries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bigdirentries, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp.not = icmp ult i32 %11, %14
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bigdirnamelen.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bigdirnamelen.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = add i32 %17, 31
  %add1.i = and i32 %18, -4
  %mul.i = mul i32 %11, 28
  %add2.i = add i32 %add1.i, %mul.i
  %call2 = call i32 @adfs_dir_copyfrom(ptr noundef nonnull %bde, ptr noundef %dir, i32 noundef %add2.i, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %19 = ptrtoint ptr %bde to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bde, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %loadaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %22 = ptrtoint ptr %loadaddr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %loadaddr, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %execaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %26 = ptrtoint ptr %execaddr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %execaddr, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 4
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  %size = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %30 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %size, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  %34 = ptrtoint ptr %indaddr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %indaddr, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %6, align 4
  %37 = lshr i32 %36, 24
  %conv = trunc i32 %37 to i8
  %attr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %38 = ptrtoint ptr %attr to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %attr, align 4
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %7, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %name_len = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 6
  %42 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %name_len, align 4
  %43 = ptrtoint ptr %bigdirentries to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bigdirentries, align 4
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bigdirnamelen.i, align 4
  %48 = call i32 @llvm.bswap.i32(i32 %47) #7
  %49 = add i32 %48, 31
  %add1.i40 = and i32 %49, -4
  %mul.i41 = mul i32 %45, 28
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %8, align 4
  %52 = call i32 @llvm.bswap.i32(i32 %51)
  %add2.i42 = add i32 %52, %mul.i41
  %add = add i32 %add2.i42, %add1.i40
  %name = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 7
  %call8 = call i32 @adfs_dir_copyfrom(ptr noundef %name, ptr noundef %dir, i32 noundef %add, i32 noundef %41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @adfs_object_fixup(ptr noundef %dir, ptr noundef %obj) #7
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pos, align 4
  %add13 = add i32 %54, 1
  store i32 %add13, ptr %pos, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -2, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call8, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bde) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fplus_update(ptr noundef %dir, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  %bde = alloca %struct.adfs_bigdirentry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bde) #7
  %3 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 1
  %4 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 2
  %5 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 3
  %6 = getelementptr inbounds %struct.adfs_bigdirentry, ptr %bde, i32 0, i32 4
  %bigdirnamelen.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 3
  %7 = call ptr @memset(ptr %bde, i32 255, i32 28)
  %8 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bigdirnamelen.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %11 = add i32 %10, 31
  %add1.i = and i32 %11, -4
  %sub = add i32 %add1.i, -28
  %bigdirentries = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %bigdirentries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bigdirentries, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %mul.i = mul i32 %14, 28
  %add2.i = add i32 %add1.i, %mul.i
  %indaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ %sub, %entry ], [ %add, %do.cond.do.body_crit_edge ]
  %add = add i32 %offset.0, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add2.i)
  %cmp.not = icmp slt i32 %add, %add2.i
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dir, align 4
  call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %16, ptr noundef nonnull @__func__.adfs_fplus_update, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call2 = call i32 @adfs_dir_copyfrom(ptr noundef nonnull %bde, ptr noundef %dir, i32 noundef %add, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.cond, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dir, align 4
  call void (ptr, ptr, ptr, ...) @__adfs_error(ptr noundef %18, ptr noundef nonnull @__func__.adfs_fplus_update, ptr noundef nonnull @.str.6) #7
  br label %cleanup

do.cond:                                          ; preds = %if.end
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %indaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %indaddr, align 4
  %cmp6.not = icmp eq i32 %21, %23
  br i1 %cmp6.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  %loadaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 2
  %24 = ptrtoint ptr %loadaddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %loadaddr, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %bde to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %bde, align 4
  %execaddr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 3
  %28 = ptrtoint ptr %execaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %execaddr, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %3, align 4
  %size = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 4
  %32 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  %attr = getelementptr inbounds %struct.object_info, ptr %obj, i32 0, i32 5
  %36 = ptrtoint ptr %attr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %attr, align 4
  %conv = zext i8 %37 to i32
  %38 = shl nuw i32 %conv, 24
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %6, align 4
  %call9 = call i32 @adfs_dir_copyto(ptr noundef %dir, i32 noundef %add, ptr noundef nonnull %bde, i32 noundef 28) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -2, %if.then3 ], [ %call9, %do.end ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bde) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adfs_fplus_commit(ptr nocapture noundef readonly %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  %add = add i8 %4, 1
  store i8 %add, ptr %2, align 4
  %5 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bigdirendmasseq = getelementptr inbounds %struct.adfs_bigdirtail, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %bigdirendmasseq to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bigdirendmasseq, align 4
  %add3 = add i8 %9, 1
  store i8 %add3, ptr %bigdirendmasseq, align 4
  %call = tail call fastcc zeroext i8 @adfs_fplus_checkbyte(ptr noundef %dir)
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %bigdircheckbyte = getelementptr inbounds %struct.adfs_bigdirtail, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bigdircheckbyte to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %call, ptr %bigdircheckbyte, align 1
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %0, align 4
  %bigdirsize.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %bigdirsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bigdirsize.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %bigdirversion.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %bigdirversion.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bigdirversion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx3.i = getelementptr %struct.adfs_bigdirheader, ptr %14, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp5.not.i = icmp eq i8 %21, 0
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %arrayidx9.i = getelementptr %struct.adfs_bigdirheader, ptr %14, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp11.not.i = icmp eq i8 %23, 0
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false7.i.if.end_crit_edge

lor.lhs.false7.i.if.end_crit_edge:                ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false13.i:                                ; preds = %lor.lhs.false7.i
  %bigdirstartname.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 2
  %24 = ptrtoint ptr %bigdirstartname.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bigdirstartname.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1396854898, i32 %25)
  %cmp14.not.i = icmp ne i32 %25, 1396854898
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %or.cond.i = select i1 %cmp14.not.i, i1 true, i1 %tobool.not.i
  %and.i = and i32 %17, 2047
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp ne i32 %and.i, 0
  %or.cond63.i = select i1 %or.cond.i, i1 true, i1 %tobool18.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %17)
  %cmp20.i = icmp ugt i32 %17, 4194304
  %or.cond64.i = select i1 %or.cond63.i, i1 true, i1 %cmp20.i
  br i1 %or.cond64.i, label %lor.lhs.false13.i.if.end_crit_edge, label %if.end.i

lor.lhs.false13.i.if.end_crit_edge:               ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false13.i
  %sub.i = add nsw i32 %17, -36
  %bigdirnamelen.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 3
  %26 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bigdirnamelen.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %add.i = add i32 %28, 3
  %and22.i = and i32 %add.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %and22.i)
  %cmp23.i = icmp ult i32 %sub.i, %and22.i
  br i1 %cmp23.i, label %if.end.i.if.end_crit_edge, label %if.end26.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end26.i:                                       ; preds = %if.end.i
  %sub27.i = sub i32 %sub.i, %and22.i
  %bigdirnamesize.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 6
  %29 = ptrtoint ptr %bigdirnamesize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bigdirnamesize.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27.i, i32 %31)
  %cmp28.i = icmp ult i32 %sub27.i, %31
  br i1 %cmp28.i, label %if.end26.i.if.end_crit_edge, label %if.end31.i

if.end26.i.if.end_crit_edge:                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end31.i:                                       ; preds = %if.end26.i
  %bigdirentries.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %14, i32 0, i32 5
  %32 = ptrtoint ptr %bigdirentries.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bigdirentries.i, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 149796, i32 %34)
  %cmp33.i = icmp ugt i32 %34, 149796
  br i1 %cmp33.i, label %if.end31.i.if.end_crit_edge, label %lor.lhs.false35.i

if.end31.i.if.end_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false35.i:                                ; preds = %if.end31.i
  %sub32.i = sub i32 %sub27.i, %31
  %mul.i = mul nuw nsw i32 %34, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub32.i)
  %cmp36.i = icmp ugt i32 %mul.i, %sub32.i
  br i1 %cmp36.i, label %lor.lhs.false35.i.if.end_crit_edge, label %if.then

lor.lhs.false35.i.if.end_crit_edge:               ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false35.i
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %5, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1870030190, i32 %38)
  %cmp.not.i15 = icmp eq i32 %38, 1870030190
  br i1 %cmp.not.i15, label %lor.lhs.false.i16, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i16:                                ; preds = %if.then
  %bigdirendmasseq.i = getelementptr inbounds %struct.adfs_bigdirtail, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %bigdirendmasseq.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bigdirendmasseq.i, align 4
  %41 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %14, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp2.not.i = icmp eq i8 %40, %42
  br i1 %cmp2.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i16.if.end_crit_edge

lor.lhs.false.i16.if.end_crit_edge:               ; preds = %lor.lhs.false.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i16
  %reserved.i = getelementptr inbounds %struct.adfs_bigdirtail, ptr %36, i32 0, i32 2
  %43 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reserved.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp6.not.i = icmp eq i8 %44, 0
  br i1 %cmp6.not.i, label %lor.lhs.false8.i, label %lor.lhs.false4.i.if.end_crit_edge

lor.lhs.false4.i.if.end_crit_edge:                ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx10.i = getelementptr %struct.adfs_bigdirtail, ptr %36, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp12.not.i = icmp eq i8 %46, 0
  %spec.select.i17 = select i1 %cmp12.not.i, i32 0, i32 -5
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false8.i, %lor.lhs.false4.i.if.end_crit_edge, %lor.lhs.false.i16.if.end_crit_edge, %if.then.if.end_crit_edge, %lor.lhs.false35.i.if.end_crit_edge, %if.end31.i.if.end_crit_edge, %if.end26.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %lor.lhs.false13.i.if.end_crit_edge, %lor.lhs.false7.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -5, %lor.lhs.false4.i.if.end_crit_edge ], [ -5, %lor.lhs.false.i16.if.end_crit_edge ], [ -5, %if.then.if.end_crit_edge ], [ %spec.select.i17, %lor.lhs.false8.i ], [ -5, %lor.lhs.false13.i.if.end_crit_edge ], [ -5, %lor.lhs.false7.i.if.end_crit_edge ], [ -5, %lor.lhs.false.i.if.end_crit_edge ], [ -5, %entry.if.end_crit_edge ], [ -5, %if.end.i.if.end_crit_edge ], [ -5, %if.end26.i.if.end_crit_edge ], [ -5, %if.end31.i.if.end_crit_edge ], [ -5, %lor.lhs.false35.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_read_buffers(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__adfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @adfs_fplus_checkbyte(ptr nocapture noundef readonly %dir) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 6
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %bigdirentries = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %bigdirentries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bigdirentries, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %bigdirnamelen.i = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %bigdirnamelen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bigdirnamelen.i, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = add i32 %11, 31
  %add1.i = and i32 %12, -4
  %mul.i = mul i32 %8, 28
  %bigdirnamesize = getelementptr inbounds %struct.adfs_bigdirheader, ptr %2, i32 0, i32 6
  %13 = ptrtoint ptr %bigdirnamesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bigdirnamesize, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %add2.i = add i32 %15, %mul.i
  %add = add i32 %add2.i, %add1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not62 = icmp eq i32 %add, 0
  br i1 %tobool.not62, label %entry.for.end10_crit_edge, label %for.body.lr.ph

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.body.lr.ph:                                   ; preds = %entry
  %bhs = getelementptr inbounds %struct.adfs_dir, ptr %dir, i32 0, i32 3
  %16 = ptrtoint ptr %bhs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bhs, align 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %dircheck.065 = phi i32 [ 0, %for.body.lr.ph ], [ %dircheck.1.lcssa, %for.end.for.body_crit_edge ]
  %bi.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %end.063 = phi i32 [ %add, %for.body.lr.ph ], [ %sub, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %17, i32 %bi.064
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %b_size = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %b_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_size, align 8
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %end.063)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp458.not = icmp eq i32 %22, 0
  br i1 %cmp458.not, label %for.body.for.end_crit_edge, label %for.body5.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body5.preheader:                              ; preds = %for.body
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %19, i32 0, i32 5
  %23 = ptrtoint ptr %b_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %b_data, align 4
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.preheader
  %dircheck.161 = phi i32 [ %xor, %for.body5.for.body5_crit_edge ], [ %dircheck.065, %for.body5.preheader ]
  %bp.060 = phi ptr [ %incdec.ptr, %for.body5.for.body5_crit_edge ], [ %24, %for.body5.preheader ]
  %i.059 = phi i32 [ %add8, %for.body5.for.body5_crit_edge ], [ 0, %for.body5.preheader ]
  %or.i = tail call i32 @llvm.fshl.i32(i32 %dircheck.161, i32 %dircheck.161, i32 19) #7
  %incdec.ptr = getelementptr i32, ptr %bp.060, i32 1
  %25 = ptrtoint ptr %bp.060 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bp.060, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %xor = xor i32 %27, %or.i
  %add8 = add i32 %i.059, 4
  %cmp4 = icmp ult i32 %add8, %22
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.body.for.end_crit_edge
  %dircheck.1.lcssa = phi i32 [ %dircheck.065, %for.body.for.end_crit_edge ], [ %xor, %for.body5.for.end_crit_edge ]
  %sub = sub i32 %end.063, %22
  %inc = add i32 %bi.064, 1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %for.end.for.end10_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.for.end10_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.end10:                                        ; preds = %for.end.for.end10_crit_edge, %entry.for.end10_crit_edge
  %dircheck.0.lcssa = phi i32 [ 0, %entry.for.end10_crit_edge ], [ %dircheck.1.lcssa, %for.end.for.end10_crit_edge ]
  %or.i54 = tail call i32 @llvm.fshl.i32(i32 %dircheck.0.lcssa, i32 %dircheck.0.lcssa, i32 19) #7
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %5, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %xor12 = xor i32 %30, %or.i54
  %or.i55 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 19) #7
  %bigdirendmasseq = getelementptr inbounds %struct.adfs_bigdirtail, ptr %5, i32 0, i32 1
  %31 = ptrtoint ptr %bigdirendmasseq to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bigdirendmasseq, align 4
  %conv = zext i8 %32 to i32
  %xor14 = xor i32 %or.i55, %conv
  %or.i56 = tail call i32 @llvm.fshl.i32(i32 %xor14, i32 %or.i55, i32 19) #7
  %reserved = getelementptr inbounds %struct.adfs_bigdirtail, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %reserved, align 1
  %conv17 = zext i8 %34 to i32
  %xor18 = xor i32 %or.i56, %conv17
  %or.i57 = tail call i32 @llvm.fshl.i32(i32 %xor18, i32 %or.i56, i32 19) #7
  %arrayidx21 = getelementptr %struct.adfs_bigdirtail, ptr %5, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %36 to i32
  %xor23 = xor i32 %or.i57, %conv22
  %shr = lshr i32 %or.i57, 8
  %xor24 = xor i32 %xor23, %shr
  %shr25 = lshr i32 %or.i57, 16
  %xor26 = xor i32 %xor24, %shr25
  %shr27 = lshr i32 %or.i57, 24
  %xor28 = xor i32 %xor26, %shr27
  %conv29 = trunc i32 %xor28 to i8
  ret i8 %conv29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_dir_relse(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_copyfrom(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @adfs_object_fixup(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adfs_dir_copyto(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @adfs_fplus_dir_ops, !1, !"adfs_fplus_dir_ops", i1 false, i1 false}
!1 = !{!"../fs/adfs/dir_fplus.c", i32 280, i32 27}
!2 = !{ptr @__func__.adfs_fplus_read, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/adfs/dir_fplus.c", i32 119, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/adfs/dir_fplus.c", i32 125, i32 16}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/adfs/dir_fplus.c", i32 126, i32 5}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/adfs/dir_fplus.c", i32 140, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/adfs/dir_fplus.c", i32 145, i32 3}
!13 = !{ptr @__func__.adfs_fplus_update, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/adfs/dir_fplus.c", i32 242, i32 4}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/adfs/dir_fplus.c", i32 247, i32 4}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
