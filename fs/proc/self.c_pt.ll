; ModuleID = '/llk/IR_all_yes/fs/proc/self.c_pt.bc'
source_filename = "../fs/proc/self.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.delayed_call = type { ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"self\00", [27 x i8] zeroinitializer }, align 32
@self_inum = internal global i32 0, section ".data..ro_after_init", align 4
@proc_self_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @proc_self_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@proc_setup_self._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013proc_fill_super: can't allocate /proc/self\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"proc_setup_self\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/proc/self.c\00", [17 x i8] zeroinitializer }, align 32
@proc_setup_self._entry_ptr = internal global ptr @proc_setup_self._entry, section ".printk_index", align 4
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 63, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [18 x i8] c"../fs/proc/self.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 25, i32 16 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @proc_setup_self._entry, ptr @proc_setup_self._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proc_setup_self._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @proc_setup_self(ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %s_root = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_root, align 64
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #8
  %6 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_root, align 64
  %call3 = tail call ptr @d_alloc_name(ptr noundef %7, ptr noundef nonnull @.str) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %entry
  %call4 = tail call ptr @new_inode(ptr noundef %s) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else, label %if.else14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dput(ptr noundef nonnull %call3) #8
  br label %do.end

do.end:                                           ; preds = %if.else, %entry.do.end_crit_edge
  tail call void @up_write(ptr noundef %i_rwsem.i) #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %if.end15

if.else14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @self_inum, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 11
  %9 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %i_ino, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 16
  %i_atime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 15
  %i_ctime = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef nonnull %call4) #8
  %10 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  %11 = call ptr @memcpy(ptr %i_atime, ptr %i_ctime, i32 16)
  %12 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %13 = ptrtoint ptr %call4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -24065, ptr %call4, align 8
  %i_uid = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 2
  %14 = ptrtoint ptr %i_uid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %i_uid, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 3
  %15 = ptrtoint ptr %i_gid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %i_gid, align 8
  %i_op = getelementptr inbounds %struct.inode, ptr %call4, i32 0, i32 7
  %16 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @proc_self_inode_operations, ptr %i_op, align 8
  call void @d_add(ptr noundef nonnull %call3, ptr noundef nonnull %call4) #8
  call void @up_write(ptr noundef %i_rwsem.i) #8
  %proc_self = getelementptr inbounds %struct.proc_fs_info, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %proc_self to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3, ptr %proc_self, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %do.end
  %ret.137 = phi i32 [ 0, %if.else14 ], [ -12, %do.end ]
  ret i32 %ret.137
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_self_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_alloc_inum(ptr noundef nonnull @self_inum) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_alloc_inum(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @proc_self_get_link(ptr noundef readnone %dentry, ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %done) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !14) #8
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %call.i = tail call i32 @__task_pid_nr_ns(ptr noundef %9, i32 noundef 1, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %dentry, null
  %cond = select i1 %tobool4.not, i32 2592, i32 3264
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef %cond, i32 noundef 11) #12
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then10, label %if.end15, !prof !24

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %spec.select = select i1 %tobool4.not, ptr inttoptr (i32 -10 to ptr), ptr inttoptr (i32 -12 to ptr)
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.4, i32 noundef %call.i)
  %11 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @kfree_link, ptr %done, align 4
  %arg2.i = getelementptr inbounds %struct.delayed_call, ptr %done, i32 0, i32 1
  %12 = ptrtoint ptr %arg2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i, ptr %arg2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end15 ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.then10 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/proc/self.c", i32 44, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/proc/self.c", i32 63, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @proc_setup_self._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @proc_setup_self._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @self_inum, !9, !"self_inum", i1 false, i1 false}
!9 = !{!"../fs/proc/self.c", i32 34, i32 17}
!10 = !{ptr @proc_self_inode_operations, !11, !"proc_self_inode_operations", i1 false, i1 false}
!11 = !{!"../fs/proc/self.c", i32 30, i32 38}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/proc/self.c", i32 25, i32 16}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
