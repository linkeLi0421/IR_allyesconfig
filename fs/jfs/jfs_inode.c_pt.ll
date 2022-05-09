; ModuleID = '/llk/IR_all_yes/fs/jfs/jfs_inode.c_pt.bc'
source_filename = "../fs/jfs/jfs_inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
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
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
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
%struct.jfs_sb_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i16, i16, i16, i16, i16, i32, i32, %struct.pxd_t, %struct.pxd_t, %struct.pxd_t, %struct.uuid_t, %struct.uuid_t, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i32, i32 }
%struct.pxd_t = type { i32, i32 }

@jfsloglevel = external dso_local local_unnamed_addr global i32, align 4
@ialloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ialloc: new_inode returned NULL!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ialloc\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/jfs/jfs_inode.c\00", [45 x i8] zeroinitializer }, align 32
@ialloc._entry_ptr = internal global ptr @ialloc._entry, section ".printk_index", align 4
@ialloc._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014ialloc: diAlloc returned %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@ialloc._entry_ptr.5 = internal global ptr @ialloc._entry.3, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@ialloc._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016ialloc returns inode = 0x%p\0A\00", [33 x i8] zeroinitializer }, align 32
@ialloc._entry_ptr.8 = internal global ptr @ialloc._entry.6, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 50, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 58, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [22 x i8] c"../fs/jfs/jfs_inode.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 120, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @ialloc._entry, ptr @ialloc._entry.3, ptr @ialloc._entry.6, ptr @ialloc._entry_ptr, ptr @ialloc._entry_ptr.5, ptr @ialloc._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ialloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ialloc._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ialloc._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @jfs_set_inode_flags(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mode2 = getelementptr i8, ptr %inode, i32 -844
  %0 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode2, align 4
  %and = lshr i32 %1, 22
  %2 = and i32 %and, 12
  %and6 = lshr i32 %1, 18
  %3 = and i32 %and6, 2
  %4 = or i32 %2, %3
  %and11 = lshr i32 %1, 14
  %5 = and i32 %and11, 64
  %6 = or i32 %4, %5
  %and16 = lshr i32 %1, 21
  %7 = and i32 %and16, 1
  %8 = or i32 %6, %7
  tail call void @inode_set_flags(ptr noundef %inode, i32 noundef %8, i32 noundef 79) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ialloc(ptr noundef %parent, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp65 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %parent, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %call = tail call ptr @new_inode(ptr noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %2 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %3 = and i16 %mode, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %3)
  %cmp9 = icmp eq i16 %3, 16384
  %call11 = tail call i32 @diAlloc(ptr noundef %parent, i1 noundef zeroext %cmp9, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end26, label %do.body14

do.body14:                                        ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %4 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp15 = icmp sgt i32 %4, 1
  br i1 %cmp15, label %do.end20, label %do.body14.fail_put_crit_edge

do.body14.fail_put_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_put

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call11) #7
  br label %fail_put

if.end26:                                         ; preds = %if.end7
  %call27 = tail call i32 @insert_inode_locked(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.fail_put_crit_edge, label %if.end31

if.end26.fail_put_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_put

if.end31:                                         ; preds = %if.end26
  tail call void @inode_init_owner(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call, ptr noundef %parent, i16 noundef zeroext %mode) #4
  %saved_uid = getelementptr i8, ptr %call, i32 -840
  %i_uid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %i_uid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_uid, align 4
  %7 = ptrtoint ptr %saved_uid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %saved_uid, align 8
  %saved_gid = getelementptr i8, ptr %call, i32 -836
  %i_gid = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i_gid, align 8
  %10 = ptrtoint ptr %saved_gid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %saved_gid, align 4
  %call32 = tail call i32 @dquot_initialize(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.fail_drop_crit_edge

if.end31.fail_drop_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_drop

if.end35:                                         ; preds = %if.end31
  %call36 = tail call i32 @dquot_alloc_inode(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.fail_drop_crit_edge

if.end35.fail_drop_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_drop

if.end39:                                         ; preds = %if.end35
  %mode2 = getelementptr i8, ptr %parent, i32 -844
  %11 = ptrtoint ptr %mode2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode2, align 4
  %and41 = and i32 %12, 63438848
  %mode242 = getelementptr i8, ptr %call, i32 -844
  br i1 %cmp9, label %if.then47, label %if.else

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %and41, 536870912
  br label %if.end61.sink.split

if.else:                                          ; preds = %if.end39
  %or52 = or i32 %and41, 393216
  %13 = ptrtoint ptr %mode242 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or52, ptr %mode242, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %3)
  %cmp55 = icmp eq i16 %3, -24576
  br i1 %cmp55, label %if.then57, label %if.else.if.end61_crit_edge

if.else.if.end61_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %and59 = and i32 %or52, 13500416
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %if.then57, %if.then47
  %and59.sink = phi i32 [ %and59, %if.then57 ], [ %or, %if.then47 ]
  %14 = ptrtoint ptr %mode242 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and59.sink, ptr %mode242, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %if.else.if.end61_crit_edge
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call, align 8
  %conv62 = zext i16 %16 to i32
  %17 = ptrtoint ptr %mode242 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode242, align 4
  %or64 = or i32 %18, %conv62
  store i32 %or64, ptr %mode242, align 4
  %i_blocks = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 22
  %19 = ptrtoint ptr %i_blocks to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %i_blocks, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp65) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp65, ptr noundef nonnull %call) #4
  %20 = call ptr @memcpy(ptr %i_ctime, ptr %tmp65, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp65) #4
  %21 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %22 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %23 = ptrtoint ptr %i_ctime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %i_ctime, align 8
  %otime = getelementptr i8, ptr %call, i32 -792
  %25 = ptrtoint ptr %otime to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %otime, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %26 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s_fs_info.i, align 16
  %gengen = getelementptr inbounds %struct.jfs_sb_info, ptr %27, i32 0, i32 21
  %28 = ptrtoint ptr %gengen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gengen, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %gengen, align 4
  %i_generation = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 49
  %30 = ptrtoint ptr %i_generation to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %i_generation, align 8
  %cflag = getelementptr i8, ptr %call, i32 -768
  %31 = ptrtoint ptr %cflag to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %cflag, align 8
  %acl = getelementptr i8, ptr %call, i32 -824
  %next_index = getelementptr i8, ptr %call, i32 -784
  %bxflag = getelementptr i8, ptr %call, i32 -752
  %32 = ptrtoint ptr %bxflag to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %bxflag, align 8
  %blid = getelementptr i8, ptr %call, i32 -748
  %33 = ptrtoint ptr %blid to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %blid, align 4
  %atlhead = getelementptr i8, ptr %call, i32 -746
  %34 = ptrtoint ptr %atlhead to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %atlhead, align 2
  %atltail = getelementptr i8, ptr %call, i32 -744
  %35 = ptrtoint ptr %atltail to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %atltail, align 8
  %xtlid = getelementptr i8, ptr %call, i32 -404
  %36 = ptrtoint ptr %xtlid to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %xtlid, align 4
  %37 = call ptr @memset(ptr %acl, i32 0, i32 32)
  %38 = call ptr @memset(ptr %next_index, i32 0, i32 12)
  %39 = ptrtoint ptr %mode242 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode242, align 4
  %and.i = lshr i32 %40, 22
  %41 = and i32 %and.i, 12
  %and6.i = lshr i32 %40, 18
  %42 = and i32 %and6.i, 2
  %43 = or i32 %41, %42
  %and11.i = lshr i32 %40, 14
  %44 = and i32 %and11.i, 64
  %45 = or i32 %43, %44
  %and16.i = lshr i32 %40, 21
  %46 = and i32 %and16.i, 1
  %47 = or i32 %45, %46
  call void @inode_set_flags(ptr noundef nonnull %call, i32 noundef %47, i32 noundef 79) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jfsloglevel to i32))
  %48 = load i32, ptr @jfsloglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp69 = icmp sgt i32 %48, 3
  br i1 %cmp69, label %do.end74, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end74:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call) #7
  br label %cleanup

fail_drop:                                        ; preds = %if.end35.fail_drop_crit_edge, %if.end31.fail_drop_crit_edge
  %rc.0 = phi i32 [ %call32, %if.end31.fail_drop_crit_edge ], [ %call36, %if.end35.fail_drop_crit_edge ]
  tail call void @dquot_drop(ptr noundef nonnull %call) #4
  %i_flags = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 4
  %49 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i_flags, align 4
  %or80 = or i32 %50, 32
  store i32 %or80, ptr %i_flags, align 4
  tail call void @clear_nlink(ptr noundef nonnull %call) #4
  tail call void @discard_new_inode(ptr noundef nonnull %call) #4
  %51 = inttoptr i32 %rc.0 to ptr
  br label %cleanup

fail_put:                                         ; preds = %if.end26.fail_put_crit_edge, %do.end20, %do.body14.fail_put_crit_edge
  %rc.1 = phi i32 [ %call11, %do.end20 ], [ %call11, %do.body14.fail_put_crit_edge ], [ -22, %if.end26.fail_put_crit_edge ]
  tail call void @iput(ptr noundef nonnull %call) #4
  %52 = inttoptr i32 %rc.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail_put, %fail_drop, %do.end74, %if.end61.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %52, %fail_put ], [ %51, %fail_drop ], [ %call, %do.end74 ], [ %call, %if.end61.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @diAlloc(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @insert_inode_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_owner(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dquot_alloc_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dquot_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @discard_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/jfs/jfs_inode.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ialloc._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ialloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/jfs/jfs_inode.c", i32 58, i32 3}
!8 = !{ptr @ialloc._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ialloc._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/jfs/jfs_inode.c", i32 120, i32 2}
!12 = !{ptr @ialloc._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ialloc._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
