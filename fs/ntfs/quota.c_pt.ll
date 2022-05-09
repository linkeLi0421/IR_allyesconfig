; ModuleID = '/llk/IR_all_yes/fs/ntfs/quota.c_pt.bc'
source_filename = "../fs/ntfs/quota.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ntfs_volume = type { ptr, i64, i32, %struct.kuid_t, %struct.kgid_t, i16, i16, i8, i8, i16, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, i64, i64, i64, i64, i32, ptr, i32, ptr, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.rw_semaphore, ptr, i32, ptr, ptr, %struct.rw_semaphore, ptr, i16, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.ntfs_index_context = type { ptr, ptr, ptr, i16, i8, ptr, ptr, ptr, ptr, ptr }
%struct.QUOTA_CONTROL_ENTRY = type <{ i32, i32, i64, i64, i64, i64, i64, %struct.SID }>
%struct.SID = type { i8, i8, %union.SID_IDENTIFIER_AUTHORITY, [1 x i32] }
%union.SID_IDENTIFIER_AUTHORITY = type { %struct.anon.84 }
%struct.anon.84 = type <{ i16, i32 }>
%struct.ntfs_attr_search_ctx = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr }
%struct._ntfs_inode = type { %struct.rwlock_t, i64, i64, i32, i32, i16, %struct.atomic_t, ptr, i32, ptr, i32, %struct.runlist, %struct.mutex, ptr, i32, i32, ptr, %struct.runlist, %union.anon.73, %struct.mutex, i32, %union.anon.76 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.runlist = type { ptr, %struct.rw_semaphore }
%union.anon.73 = type { %struct.anon.75 }
%struct.anon.75 = type { i64, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.76 = type { ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/ntfs/quota.c\00", [16 x i8] zeroinitializer }, align 32
@__func__.ntfs_mark_quotas_out_of_date = private unnamed_addr constant [29 x i8] c"ntfs_mark_quotas_out_of_date\00", align 1
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Entering.\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Quota inodes are not open.\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get index context.\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Quota defaults entry is not present.\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Lookup of quota defaults entry failed.\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Quota defaults entry size is invalid.  Run chkdsk.\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Quota defaults entry version 0x%x is not supported.\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Quota defaults flags = 0x%x.\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Done.\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 30, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 34, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 40, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 49, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 54, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 60, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 64, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [19 x i8] c"../fs/ntfs/quota.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 94, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ntfs_mark_quotas_out_of_date(ptr noundef %vol) local_unnamed_addr #0 align 64 {
entry:
  %qid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qid) #5
  %0 = ptrtoint ptr %qid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16777216, ptr %qid, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 30, ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef nonnull @.str.1) #5
  %flags.i = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 2
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.end:                                           ; preds = %entry
  %quota_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 49
  %4 = ptrtoint ptr %quota_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %quota_ino, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %quota_q_ino = getelementptr inbounds %struct.ntfs_volume, ptr %vol, i32 0, i32 50
  %6 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quota_q_ino, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %8 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %9, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #5
  %10 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quota_q_ino, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -528
  %call8 = tail call ptr @ntfs_index_ctx_get(ptr noundef %add.ptr.i) #5
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vol, align 8
  tail call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %13, ptr noundef nonnull @.str.3) #5
  br label %if.end45

if.end12:                                         ; preds = %if.end4
  %call13 = call i32 @ntfs_index_lookup(ptr noundef nonnull %qid, i32 noundef 4, ptr noundef nonnull %call8) #5
  %14 = zext i32 %call13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call13, label %if.else [
    i32 0, label %if.end20
    i32 -2, label %if.then16
  ]

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %16, ptr noundef nonnull @.str.4) #5
  br label %if.then44

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %18, ptr noundef nonnull @.str.5) #5
  br label %if.then44

if.end20:                                         ; preds = %if.end12
  %data_len = getelementptr inbounds %struct.ntfs_index_context, ptr %call8, i32 0, i32 3
  %19 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %20)
  %cmp21 = icmp ult i16 %20, 48
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %22, ptr noundef nonnull @.str.6) #5
  br label %if.then44

if.end25:                                         ; preds = %if.end20
  %data = getelementptr inbounds %struct.ntfs_index_context, ptr %call8, i32 0, i32 2
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %26)
  %cmp26.not = icmp eq i32 %26, 33554432
  br i1 %cmp26.not, label %if.end31, label %if.then28

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %vol to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vol, align 8
  call void (ptr, ptr, ptr, ...) @__ntfs_error(ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef %29, ptr noundef nonnull @.str.7, i32 noundef %27) #5
  br label %if.then44

if.end31:                                         ; preds = %if.end25
  %flags = getelementptr inbounds %struct.QUOTA_CONTROL_ENTRY, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %flags, align 1
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef nonnull @.str.8, i32 noundef %32) #5
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %flags, align 1
  %and = and i32 %34, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp ne i32 %and, 0
  %and37 = and i32 %34, 1342701568
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = or i1 %tobool33.not, %tobool38.not
  br i1 %or.cond, label %if.end31.set_done_crit_edge, label %if.end40

if.end31.set_done_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_done

if.end40:                                         ; preds = %if.end31
  %or = or i32 %34, 131072
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %or, ptr %flags, align 1
  %is_in_root.i = getelementptr inbounds %struct.ntfs_index_context, ptr %call8, i32 0, i32 4
  %36 = ptrtoint ptr %is_in_root.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_in_root.i, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %actx.i = getelementptr inbounds %struct.ntfs_index_context, ptr %call8, i32 0, i32 6
  %38 = ptrtoint ptr %actx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %actx.i, align 4
  %ntfs_ino.i = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ntfs_ino.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ntfs_ino.i, align 4
  %page.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %41, i32 0, i32 13
  br label %ntfs_index_entry_flush_dcache_page.exit

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %page.i = getelementptr inbounds %struct.ntfs_index_context, ptr %call8, i32 0, i32 9
  br label %ntfs_index_entry_flush_dcache_page.exit

ntfs_index_entry_flush_dcache_page.exit:          ; preds = %if.else.i, %if.then.i
  %.sink.in.i = phi ptr [ %page.i, %if.else.i ], [ %page.i.i, %if.then.i ]
  %42 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  call void @flush_dcache_page(ptr noundef %.sink.i) #5
  call fastcc void @ntfs_index_entry_mark_dirty(ptr noundef nonnull %call8)
  br label %set_done

set_done:                                         ; preds = %ntfs_index_entry_flush_dcache_page.exit, %if.end31.set_done_crit_edge
  call void @ntfs_index_ctx_put(ptr noundef nonnull %call8) #5
  %43 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %quota_q_ino, align 8
  %i_rwsem.i81 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i81) #5
  call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #5
  br label %done

done:                                             ; preds = %set_done, %entry.done_crit_edge
  call void (ptr, i32, ptr, ptr, ...) @__ntfs_debug(ptr noundef nonnull @.str, i32 noundef 94, ptr noundef nonnull @__func__.ntfs_mark_quotas_out_of_date, ptr noundef nonnull @.str.9) #5
  br label %cleanup

if.then44:                                        ; preds = %if.then28, %if.then23, %if.else, %if.then16
  call void @ntfs_index_ctx_put(ptr noundef nonnull %call8) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.then10
  %45 = ptrtoint ptr %quota_q_ino to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %quota_q_ino, align 8
  %i_rwsem.i83 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 25
  call void @up_write(ptr noundef %i_rwsem.i83) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %done, %if.then3
  %retval.0 = phi i1 [ true, %done ], [ false, %if.end45 ], [ false, %if.then3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qid) #5
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ntfs_error(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ntfs_index_ctx_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ntfs_index_lookup(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ntfs_index_entry_mark_dirty(ptr nocapture noundef readonly %ictx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %is_in_root = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 4
  %0 = ptrtoint ptr %is_in_root to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_in_root, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %actx = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 6
  %2 = ptrtoint ptr %actx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actx, align 4
  %ntfs_ino = getelementptr inbounds %struct.ntfs_attr_search_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ntfs_ino to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ntfs_ino, align 4
  %state.i.i = getelementptr inbounds %struct._ntfs_inode, ptr %5, i32 0, i32 3
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mark_mft_record_dirty(ptr noundef %5) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %page = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 9
  %6 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %page, align 4
  %ia = getelementptr inbounds %struct.ntfs_index_context, ptr %ictx, i32 0, i32 8
  %8 = ptrtoint ptr %ia to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ia, align 4
  %call = tail call ptr @page_address(ptr noundef %7) #5
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @mark_ntfs_record_dirty(ptr noundef %7, i32 noundef %sub.ptr.sub) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntfs_index_ctx_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_ntfs_record_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_mft_record_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ntfs/quota.c", i32 30, i32 2}
!2 = !{ptr @__func__.ntfs_mark_quotas_out_of_date, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/ntfs/quota.c", i32 34, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/ntfs/quota.c", i32 40, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/ntfs/quota.c", i32 46, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/ntfs/quota.c", i32 49, i32 4}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/ntfs/quota.c", i32 54, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/ntfs/quota.c", i32 60, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/ntfs/quota.c", i32 64, i32 2}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/ntfs/quota.c", i32 94, i32 2}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
