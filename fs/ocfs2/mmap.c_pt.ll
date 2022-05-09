; ModuleID = '/llk/IR_all_yes/fs/ocfs2/mmap.c_pt.bc'
source_filename = "../fs/ocfs2/mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.65 }
%struct.atomic_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.14, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.sigset_t = type { [2 x i32] }
%struct.vm_fault = type { %struct.anon.16, i32, ptr, ptr, %union.anon.17, ptr, ptr, ptr, ptr, ptr }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%union.anon.17 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.72, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.57, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.57 = type { %struct.atomic_t }

@__func__.ocfs2_mmap = private unnamed_addr constant [11 x i8] c"ocfs2_mmap\00", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@ocfs2_file_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ocfs2_fault, ptr null, ptr null, ptr null, ptr @ocfs2_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__tracepoint_ocfs2_fault = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/ocfs2/ocfs2_trace.h\00", [41 x i8] zeroinitializer }, align 32
@trace_ocfs2_fault.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__func__.ocfs2_page_mkwrite = private unnamed_addr constant [19 x i8] c"ocfs2_page_mkwrite\00", align 1
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/linux/percpu-rwsem.h\00", [35 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_sync_is_idle.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcu_sync.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"suspicious rcu_sync_is_idle() usage\00", [60 x i8] zeroinitializer }, align 32
@__func__.__ocfs2_page_mkwrite = private unnamed_addr constant [21 x i8] c"__ocfs2_page_mkwrite\00", align 1
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 524289, i64 4294966784, i64 4294967174, i64 4294967268, i64 4294967292]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 169, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"ocfs2_file_vm_ops\00", align 1
@___asan_gen_.15 = private constant [19 x i8] c"../fs/ocfs2/mmap.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 157, i32 42 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"../fs/ocfs2/ocfs2_trace.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 1249, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 108, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"../include/linux/percpu-rwsem.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 49, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcu_sync.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 34, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 260, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @ocfs2_file_vm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocfs2_file_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocfs2_mmap(ptr nocapture noundef readonly %file, ptr nocapture noundef writeonly %vma) local_unnamed_addr #0 align 64 {
entry:
  %lock_level = alloca i32, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock_level) #6
  %0 = ptrtoint ptr %lock_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %lock_level, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %1 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %f_inode.i, align 8
  %f_path = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1
  %3 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path, align 8
  %call1 = call i32 @ocfs2_inode_lock_atime(ptr noundef %2, ptr noundef %4, ptr noundef nonnull %lock_level, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %5 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %do.body [
    i32 -512, label %if.then.out_crit_edge
    i32 -4, label %if.then.out_crit_edge25
    i32 -28, label %if.then.out_crit_edge26
    i32 -122, label %if.then.out_crit_edge27
  ]

if.then.out_crit_edge27:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge26:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge25:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %6 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call1 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_mmap, i32 noundef 169, ptr noundef nonnull @.str, i64 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %out

if.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_inode.i, align 8
  %9 = ptrtoint ptr %lock_level to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lock_level, align 4
  call void @ocfs2_inode_unlock(ptr noundef %8, i32 noundef %10) #6
  br label %out

out:                                              ; preds = %if.end13, %do.body, %if.then.out_crit_edge, %if.then.out_crit_edge25, %if.then.out_crit_edge26, %if.then.out_crit_edge27
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %11 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ocfs2_file_vm_ops, ptr %vm_ops, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock_level) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_atime(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mlog_printk(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_inode_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_fault(ptr noundef %vmf) #0 align 64 {
entry:
  %oldset = alloca %struct.sigset_t, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldset) #6
  %2 = ptrtoint ptr %oldset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %oldset, align 4, !annotation !37
  %3 = getelementptr inbounds [2 x i32], ptr %oldset, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !37
  call void @ocfs2_block_signals(ptr noundef nonnull %oldset) #6
  %call = call i32 @filemap_fault(ptr noundef %vmf) #6
  call void @ocfs2_unblock_signals(ptr noundef nonnull %oldset) #6
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vm_file, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 18
  %7 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %f_mapping, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 -1608
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %13 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %page, align 4
  %pgoff = getelementptr inbounds %struct.anon.16, ptr %vmf, i32 0, i32 2
  %15 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pgoff, align 4
  call fastcc void @trace_ocfs2_fault(i64 noundef %12, ptr noundef %1, ptr noundef %14, i32 noundef %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldset) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ocfs2_page_mkwrite(ptr nocapture noundef readonly %vmf) #0 align 64 {
entry:
  %locked_page.i = alloca ptr, align 4
  %fsdata.i = alloca ptr, align 4
  %_m.i = alloca i64, align 8
  %di_bh = alloca ptr, align 4
  %oldset = alloca %struct.sigset_t, align 4
  %_m = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page1 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %0 = ptrtoint ptr %page1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page1, align 4
  %2 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %di_bh) #6
  %8 = ptrtoint ptr %di_bh to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %di_bh, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldset) #6
  %9 = ptrtoint ptr %oldset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %oldset, align 4, !annotation !37
  %10 = getelementptr inbounds [2 x i32], ptr %oldset, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4, !annotation !37
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %12 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i = getelementptr %struct.super_block, ptr %13, i32 0, i32 32, i32 2, i32 1
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 49) #6
  %dep_map.i.i.i = getelementptr %struct.super_block, ptr %13, i32 0, i32 32, i32 2, i32 1, i32 5
  %14 = tail call ptr @llvm.returnaddress(i32 0) #6
  %15 = ptrtoint ptr %14 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef %15) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %call.i.i.i.i = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge

entry.rcu_sync_is_idle.exit.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %entry
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b8.i.i.i.i = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i, label %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @.str.6) #6
  br label %rcu_sync_is_idle.exit.i.i.i

rcu_sync_is_idle.exit.i.i.i:                      ; preds = %if.then.i.i.i.i, %land.lhs.true3.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_sync_is_idle.exit.i.i.i_crit_edge, %entry.rcu_sync_is_idle.exit.i.i.i_crit_edge
  %20 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %add.ptr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool7.not.i.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool7.not.i.i.i.i, label %do.body7.i.i.i, label %if.else.i.i.i, !prof !39

do.body7.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %read_count.i.i.i = getelementptr %struct.super_block, ptr %13, i32 0, i32 32, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %read_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read_count.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add21.i.i.i = add i32 %34, 1
  store i32 %add21.i.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !41
  %and.i.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then41.i.i.i, label %do.body7.i.i.i.do.end43.i.i.i_crit_edge, !prof !42

do.body7.i.i.i.do.end43.i.i.i_crit_edge:          ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43.i.i.i

if.then41.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end43.i.i.i

do.end43.i.i.i:                                   ; preds = %if.then41.i.i.i, %do.body7.i.i.i.do.end43.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #6, !srcloc !43
  br label %sb_start_pagefault.exit

if.else.i.i.i:                                    ; preds = %rcu_sync_is_idle.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call50.i.i.i = tail call zeroext i1 @__percpu_down_read(ptr noundef %add.ptr1.i.i, i1 noundef zeroext false) #6
  br label %sb_start_pagefault.exit

sb_start_pagefault.exit:                          ; preds = %if.else.i.i.i, %do.end43.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %36 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i58.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i58.i.i.i to ptr
  %preempt_count.i.i59.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i59.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i59.i.i.i, align 4
  %sub.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i59.i.i.i, align 4
  call void @ocfs2_block_signals(ptr noundef nonnull %oldset) #6
  %call2 = call i32 @ocfs2_inode_lock_full_nested(ptr noundef %7, ptr noundef nonnull %di_bh, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %sb_start_pagefault.exit
  %40 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call2, label %do.body [
    i32 -512, label %if.then.if.end13_crit_edge
    i32 -4, label %if.then.if.end13_crit_edge73
    i32 -28, label %if.then.if.end13_crit_edge74
    i32 -122, label %if.then.if.end13_crit_edge75
  ]

if.then.if.end13_crit_edge75:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then.if.end13_crit_edge74:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then.if.end13_crit_edge73:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m) #6
  %41 = ptrtoint ptr %_m to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 1152921504606846976, ptr %_m, align 8
  %conv = sext i32 %call2 to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m, ptr noundef nonnull @__func__.ocfs2_page_mkwrite, i32 noundef 132, ptr noundef nonnull @.str, i64 noundef %conv) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m) #6
  br label %if.end13

if.end13:                                         ; preds = %do.body, %if.then.if.end13_crit_edge, %if.then.if.end13_crit_edge73, %if.then.if.end13_crit_edge74, %if.then.if.end13_crit_edge75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call2)
  %cmp.i = icmp eq i32 %call2, -12
  %..i = select i1 %cmp.i, i32 1, i32 2
  br label %out

if.end15:                                         ; preds = %sb_start_pagefault.exit
  %ip_alloc_sem = getelementptr i8, ptr %7, i32 -424
  call void @down_write(ptr noundef %ip_alloc_sem) #6
  %42 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vmf, align 4
  %vm_file18 = getelementptr inbounds %struct.vm_area_struct, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %vm_file18 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vm_file18, align 4
  %46 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %di_bh, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %45, i32 0, i32 2
  %48 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %f_inode.i.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_mapping.i, align 8
  %index.i.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %locked_page.i) #6
  %54 = ptrtoint ptr %locked_page.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %locked_page.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fsdata.i) #6
  %55 = ptrtoint ptr %fsdata.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -1 to ptr), ptr %fsdata.i, align 4, !annotation !37
  %i_size_seqcount.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 23
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 23, i32 1
  %i_size18.i.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 14
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %if.end15
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %and.i.i.i.i38 = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i38)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i38, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_off() #6
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %15) #6
  call void @trace_hardirqs_on() #6
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %15) #6
  call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %15) #6
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %57 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !41
  %and.i.i.i.i.i39 = and i32 %57, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i39)
  %tobool32.not.i.i.i40 = icmp eq i32 %and.i.i.i.i.i39, 0
  br i1 %tobool32.not.i.i.i40, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !42

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #6, !srcloc !43
  %58 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and29.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool.not30.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool.not30.i.i, label %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !46
  %60 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %and.i.i = and i32 %61, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %59, %seqcount_lockdep_reader_access.exit.i.i.while.end.i.i_crit_edge ], [ %61, %do.end.i.i.while.end.i.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !47
  %62 = ptrtoint ptr %i_size18.i.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %i_size18.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !48
  %64 = ptrtoint ptr %i_size_seqcount.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %i_size_seqcount.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq i32 %65, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %i_size_read.exit.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

i_size_read.exit.i:                               ; preds = %while.end.i.i
  %conv.i.i = zext i32 %53 to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %sub.i = add i64 %63, -1
  %66 = lshr i64 %sub.i, 12
  %conv.i = trunc i64 %66 to i32
  %mapping3.i = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %mapping3.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mapping3.i, align 4
  %69 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i_mapping.i, align 8
  %cmp.not.i = icmp eq ptr %68, %70
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %i_size_read.exit.i.__ocfs2_page_mkwrite.exit_crit_edge

i_size_read.exit.i.__ocfs2_page_mkwrite.exit_crit_edge: ; preds = %i_size_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ocfs2_page_mkwrite.exit

lor.lhs.false.i:                                  ; preds = %i_size_read.exit.i
  %71 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  %and.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i89.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i89.i, label %if.end.i.i.i, label %if.then.i.i90.i, !prof !39

if.then.i.i90.i:                                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add i32 %73, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i90.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i90.i ], [ %74, %if.end.i.i.i ]
  %75 = inttoptr i32 %retval.0.i.i.i to ptr
  %76 = getelementptr inbounds %struct.page, ptr %75, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %76, align 4
  %and.i.i.i.i91.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i91.i)
  %tobool.not.i.i.i.i41 = icmp eq i32 %and.i.i.i.i91.i, 0
  br i1 %tobool.not.i.i.i.i41, label %folio_flags.exit.i.i.i, label %if.then.i.i.i.i42, !prof !39

if.then.i.i.i.i42:                                ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dump_page(ptr noundef %75, ptr noundef nonnull @.str.7) #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #6, !srcloc !49
  unreachable

folio_flags.exit.i.i.i:                           ; preds = %_compound_head.exit.i.i
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %75, align 4
  %81 = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.i.not.i.i = icmp eq i32 %81, 0
  br i1 %tobool.i.not.i.i, label %folio_flags.exit.i.i.i.__ocfs2_page_mkwrite.exit_crit_edge, label %PageUptodate.exit.i

folio_flags.exit.i.i.i.__ocfs2_page_mkwrite.exit_crit_edge: ; preds = %folio_flags.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ocfs2_page_mkwrite.exit

PageUptodate.exit.i:                              ; preds = %folio_flags.exit.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !50
  %82 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %index.i.i, align 4
  %conv.i93.i = zext i32 %83 to i64
  %shl.i94.i = shl nuw nsw i64 %conv.i93.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shl.i94.i, i64 %63)
  %cmp9.not.i = icmp slt i64 %shl.i94.i, %63
  br i1 %cmp9.not.i, label %if.end.i, label %PageUptodate.exit.i.__ocfs2_page_mkwrite.exit_crit_edge

PageUptodate.exit.i.__ocfs2_page_mkwrite.exit_crit_edge: ; preds = %PageUptodate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ocfs2_page_mkwrite.exit

if.end.i:                                         ; preds = %PageUptodate.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv.i)
  %cmp11.i = icmp eq i32 %83, %conv.i
  %84 = trunc i64 %sub.i to i32
  %85 = and i32 %84, 4095
  %conv15.i = add nuw nsw i32 %85, 1
  %len.0.i = select i1 %cmp11.i, i32 %conv15.i, i32 4096
  %call17.i = call i32 @ocfs2_write_begin_nolock(ptr noundef %51, i64 noundef %shl.i.i, i32 noundef %len.0.i, i32 noundef 2, ptr noundef nonnull %locked_page.i, ptr noundef nonnull %fsdata.i, ptr noundef %47, ptr noundef %1) #6
  %86 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %call17.i, label %do.body.i [
    i32 0, label %if.end45.i
    i32 -28, label %if.end.i.if.end43.i_crit_edge
    i32 -512, label %if.end.i.if.end43.i_crit_edge76
    i32 -4, label %if.end.i.if.end43.i_crit_edge77
    i32 524289, label %if.end.i.if.end43.i_crit_edge78
    i32 -122, label %if.end.i.if.end43.i_crit_edge79
  ]

if.end.i.if.end43.i_crit_edge79:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end.i.if.end43.i_crit_edge78:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end.i.if.end43.i_crit_edge77:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end.i.if.end43.i_crit_edge76:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.end.i.if.end43.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_m.i) #6
  %87 = ptrtoint ptr %_m.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 1152921504606846976, ptr %_m.i, align 8
  %conv40.i = sext i32 %call17.i to i64
  call void (ptr, ptr, i32, ptr, ...) @__mlog_printk(ptr noundef nonnull %_m.i, ptr noundef nonnull @__func__.__ocfs2_page_mkwrite, i32 noundef 97, ptr noundef nonnull @.str, i64 noundef %conv40.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_m.i) #6
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.body.i, %if.end.i.if.end43.i_crit_edge, %if.end.i.if.end43.i_crit_edge76, %if.end.i.if.end43.i_crit_edge77, %if.end.i.if.end43.i_crit_edge78, %if.end.i.if.end43.i_crit_edge79
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call17.i)
  %cmp.i.i = icmp eq i32 %call17.i, -12
  %..i.i = select i1 %cmp.i.i, i32 1, i32 2
  br label %__ocfs2_page_mkwrite.exit

if.end45.i:                                       ; preds = %if.end.i
  %88 = ptrtoint ptr %locked_page.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %locked_page.i, align 4
  %tobool46.not.i = icmp eq ptr %89, null
  br i1 %tobool46.not.i, label %if.end45.i.__ocfs2_page_mkwrite.exit_crit_edge, label %if.end48.i

if.end45.i.__ocfs2_page_mkwrite.exit_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ocfs2_page_mkwrite.exit

if.end48.i:                                       ; preds = %if.end45.i
  %90 = ptrtoint ptr %fsdata.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fsdata.i, align 4
  %call49.i = call i32 @ocfs2_write_end_nolock(ptr noundef %51, i64 noundef %shl.i.i, i32 noundef %len.0.i, i32 noundef %len.0.i, ptr noundef %91) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call49.i, i32 %len.0.i)
  %cmp51.not.i = icmp eq i32 %call49.i, %len.0.i
  br i1 %cmp51.not.i, label %if.end48.i.__ocfs2_page_mkwrite.exit_crit_edge, label %do.body56.i, !prof !39

if.end48.i.__ocfs2_page_mkwrite.exit_crit_edge:   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ocfs2_page_mkwrite.exit

do.body56.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/ocfs2/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

__ocfs2_page_mkwrite.exit:                        ; preds = %if.end48.i.__ocfs2_page_mkwrite.exit_crit_edge, %if.end45.i.__ocfs2_page_mkwrite.exit_crit_edge, %if.end43.i, %PageUptodate.exit.i.__ocfs2_page_mkwrite.exit_crit_edge, %folio_flags.exit.i.i.i.__ocfs2_page_mkwrite.exit_crit_edge, %i_size_read.exit.i.__ocfs2_page_mkwrite.exit_crit_edge
  %ret.0.i = phi i32 [ 256, %i_size_read.exit.i.__ocfs2_page_mkwrite.exit_crit_edge ], [ 256, %PageUptodate.exit.i.__ocfs2_page_mkwrite.exit_crit_edge ], [ %..i.i, %if.end43.i ], [ 256, %if.end45.i.__ocfs2_page_mkwrite.exit_crit_edge ], [ 512, %if.end48.i.__ocfs2_page_mkwrite.exit_crit_edge ], [ 256, %folio_flags.exit.i.i.i.__ocfs2_page_mkwrite.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fsdata.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %locked_page.i) #6
  call void @up_write(ptr noundef %ip_alloc_sem) #6
  %92 = ptrtoint ptr %di_bh to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %di_bh, align 4
  %tobool.not.i = icmp eq ptr %93, null
  br i1 %tobool.not.i, label %__ocfs2_page_mkwrite.exit.brelse.exit_crit_edge, label %if.then.i

__ocfs2_page_mkwrite.exit.brelse.exit_crit_edge:  ; preds = %__ocfs2_page_mkwrite.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %brelse.exit

if.then.i:                                        ; preds = %__ocfs2_page_mkwrite.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__brelse(ptr noundef nonnull %93) #6
  br label %brelse.exit

brelse.exit:                                      ; preds = %if.then.i, %__ocfs2_page_mkwrite.exit.brelse.exit_crit_edge
  call void @ocfs2_inode_unlock(ptr noundef %7, i32 noundef 1) #6
  br label %out

out:                                              ; preds = %brelse.exit, %if.end13
  %ret.0 = phi i32 [ %..i, %if.end13 ], [ %ret.0.i, %brelse.exit ]
  call void @ocfs2_unblock_signals(ptr noundef nonnull %oldset) #6
  %94 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %i_sb, align 4
  %add.ptr1.i.i45 = getelementptr %struct.super_block, ptr %95, i32 0, i32 32, i32 2, i32 1
  %dep_map.i.i.i46 = getelementptr %struct.super_block, ptr %95, i32 0, i32 32, i32 2, i32 1, i32 5
  call void @lock_release(ptr noundef %dep_map.i.i.i46, i32 noundef %15) #6
  %96 = call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i.i.i47 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i.i.i.i.i47 to ptr
  %preempt_count.i.i.i.i.i48 = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %preempt_count.i.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %preempt_count.i.i.i.i.i48, align 4
  %add.i.i.i.i49 = add i32 %99, 1
  store volatile i32 %add.i.i.i.i49, ptr %preempt_count.i.i.i.i.i48, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !52
  %call.i.i.i.i50 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i50)
  %tobool.not.i.i.i.i51 = icmp eq i32 %call.i.i.i.i50, 0
  br i1 %tobool.not.i.i.i.i51, label %land.lhs.true.i.i.i.i54, label %out.rcu_sync_is_idle.exit.i.i.i59_crit_edge

out.rcu_sync_is_idle.exit.i.i.i59_crit_edge:      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i59

land.lhs.true.i.i.i.i54:                          ; preds = %out
  %call1.i.i.i.i52 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i52)
  %tobool2.not.i.i.i.i53 = icmp eq i32 %call1.i.i.i.i52, 0
  br i1 %tobool2.not.i.i.i.i53, label %land.lhs.true.i.i.i.i54.rcu_sync_is_idle.exit.i.i.i59_crit_edge, label %land.lhs.true3.i.i.i.i56

land.lhs.true.i.i.i.i54.rcu_sync_is_idle.exit.i.i.i59_crit_edge: ; preds = %land.lhs.true.i.i.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i59

land.lhs.true3.i.i.i.i56:                         ; preds = %land.lhs.true.i.i.i.i54
  %.b8.i.i.i.i55 = load i1, ptr @rcu_sync_is_idle.__warned, align 1
  br i1 %.b8.i.i.i.i55, label %land.lhs.true3.i.i.i.i56.rcu_sync_is_idle.exit.i.i.i59_crit_edge, label %if.then.i.i.i.i57

land.lhs.true3.i.i.i.i56.rcu_sync_is_idle.exit.i.i.i59_crit_edge: ; preds = %land.lhs.true3.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_sync_is_idle.exit.i.i.i59

if.then.i.i.i.i57:                                ; preds = %land.lhs.true3.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_sync_is_idle.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 35, ptr noundef nonnull @.str.6) #6
  br label %rcu_sync_is_idle.exit.i.i.i59

rcu_sync_is_idle.exit.i.i.i59:                    ; preds = %if.then.i.i.i.i57, %land.lhs.true3.i.i.i.i56.rcu_sync_is_idle.exit.i.i.i59_crit_edge, %land.lhs.true.i.i.i.i54.rcu_sync_is_idle.exit.i.i.i59_crit_edge, %out.rcu_sync_is_idle.exit.i.i.i59_crit_edge
  %100 = ptrtoint ptr %add.ptr1.i.i45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile i32, ptr %add.ptr1.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool7.not.i.i.i.i58 = icmp eq i32 %101, 0
  br i1 %tobool7.not.i.i.i.i58, label %do.body3.i.i.i, label %do.end49.i.i.i, !prof !39

do.body3.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i59
  %102 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %read_count.i.i.i60 = getelementptr %struct.super_block, ptr %95, i32 0, i32 32, i32 2, i32 1, i32 1
  %103 = ptrtoint ptr %read_count.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read_count.i.i.i60, align 4
  %105 = ptrtoint ptr %104 to i32
  %106 = call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i61 = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i61 to ptr
  %cpu.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %cpu.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cpu.i.i.i62, align 4
  %arrayidx.i.i.i63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i.i63, align 4
  %add.i.i.i64 = add i32 %111, %105
  %112 = inttoptr i32 %add.i.i.i64 to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %add17.i.i.i = add i32 %114, -1
  store i32 %add17.i.i.i, ptr %112, align 4
  %115 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !41
  %and.i.i.i.i.i65 = and i32 %115, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i65)
  %tobool28.not.i.i.i = icmp eq i32 %and.i.i.i.i.i65, 0
  br i1 %tobool28.not.i.i.i, label %if.then37.i.i.i, label %do.body3.i.i.i.do.end39.i.i.i_crit_edge, !prof !42

do.body3.i.i.i.do.end39.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39.i.i.i

if.then37.i.i.i:                                  ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end39.i.i.i

do.end39.i.i.i:                                   ; preds = %if.then37.i.i.i, %do.body3.i.i.i.do.end39.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %102) #6, !srcloc !43
  br label %sb_end_pagefault.exit

do.end49.i.i.i:                                   ; preds = %rcu_sync_is_idle.exit.i.i.i59
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !40
  %read_count75.i.i.i = getelementptr %struct.super_block, ptr %95, i32 0, i32 32, i32 2, i32 1, i32 1
  %117 = ptrtoint ptr %read_count75.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %read_count75.i.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i122.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i122.i.i.i to ptr
  %cpu78.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %cpu78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cpu78.i.i.i, align 4
  %arrayidx79.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx79.i.i.i, align 4
  %add80.i.i.i = add i32 %125, %119
  %126 = inttoptr i32 %add80.i.i.i to ptr
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %126, align 4
  %add81.i.i.i = add i32 %128, -1
  store i32 %add81.i.i.i, ptr %126, align 4
  %129 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !41
  %and.i.i123.i.i.i = and i32 %129, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i123.i.i.i)
  %tobool92.not.i.i.i = icmp eq i32 %and.i.i123.i.i.i, 0
  br i1 %tobool92.not.i.i.i, label %if.then101.i.i.i, label %do.end49.i.i.i.do.end104.i.i.i_crit_edge, !prof !42

do.end49.i.i.i.do.end104.i.i.i_crit_edge:         ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end104.i.i.i

if.then101.i.i.i:                                 ; preds = %do.end49.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end104.i.i.i

do.end104.i.i.i:                                  ; preds = %if.then101.i.i.i, %do.end49.i.i.i.do.end104.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #6, !srcloc !43
  %writer.i.i.i = getelementptr %struct.super_block, ptr %95, i32 0, i32 32, i32 2, i32 1, i32 2
  %call111.i.i.i = call i32 @rcuwait_wake_up(ptr noundef %writer.i.i.i) #6
  br label %sb_end_pagefault.exit

sb_end_pagefault.exit:                            ; preds = %do.end104.i.i.i, %do.end39.i.i.i
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !54
  %130 = call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i120.i.i.i = and i32 %130, -16384
  %131 = inttoptr i32 %and.i.i.i120.i.i.i to ptr
  %preempt_count.i.i121.i.i.i = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %preempt_count.i.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %preempt_count.i.i121.i.i.i, align 4
  %sub.i.i.i.i66 = add i32 %133, -1
  store volatile i32 %sub.i.i.i.i66, ptr %preempt_count.i.i121.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldset) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %di_bh) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_block_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fault(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ocfs2_unblock_signals(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ocfs2_fault(i64 noundef %ino, ptr noundef %area, ptr noundef %page, i32 noundef %pgoff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_fault, i32 0, i32 1), ptr blockaddress(@trace_ocfs2_fault, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !55

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !39

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !56
  %call42 = tail call i32 @__traceiter_ocfs2_fault(ptr noundef null, i64 noundef %ino, ptr noundef %area, ptr noundef %page, i32 noundef %pgoff) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !57
  %13 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !39

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_fault, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ocfs2_fault, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ocfs2_fault.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_ocfs2_fault.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1267, ptr noundef nonnull @.str.2) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !59
  %31 = tail call i32 @llvm.read_register.i32(metadata !27) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ocfs2_fault(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_inode_lock_full_nested(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_begin_nolock(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocfs2_write_end_nolock(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brelse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !12, !13, !15, !17, !19, !20, !21, !23, !25}
!llvm.named.register.sp = !{!27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__func__.ocfs2_mmap, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/ocfs2/mmap.c", i32 169, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ocfs2_file_vm_ops, !4, !"ocfs2_file_vm_ops", i1 false, i1 false}
!4 = !{!"../fs/ocfs2/mmap.c", i32 157, i32 42}
!5 = distinct !{null, !6, !"__already_done", i1 false, i1 false}
!6 = !{!"../fs/ocfs2/ocfs2_trace.h", i32 1249, i32 1}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__func__.ocfs2_page_mkwrite, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/ocfs2/mmap.c", i32 132, i32 3}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/percpu-rwsem.h", i32 49, i32 2}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcu_sync.h", i32 34, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.__ocfs2_page_mkwrite, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/ocfs2/mmap.c", i32 97, i32 4}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!27 = !{!"sp"}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
!38 = !{i64 2152337797}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 1059335, i64 1059396}
!41 = !{i64 1062067}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 1062352}
!44 = !{i64 2152346647}
!45 = !{i64 2152497486}
!46 = !{i64 2152497328}
!47 = !{i64 2152497656}
!48 = !{i64 2150083470}
!49 = !{i64 2150563400, i64 2150563891, i64 2150563437, i64 2150563493, i64 2150563527, i64 2150563551, i64 2150563592, i64 2150563613, i64 2150563641, i64 2150563675}
!50 = !{i64 2151313292}
!51 = !{i64 2161111053, i64 2161111533, i64 2161111090, i64 2161111146, i64 2161111180, i64 2161111204, i64 2161111245, i64 2161111266, i64 2161111294, i64 2161111328}
!52 = !{i64 2152356601}
!53 = !{i64 2152366096}
!54 = !{i64 2152375573}
!55 = !{i64 2148479253, i64 2148479258, i64 2148479271, i64 2148479315, i64 2148479349, i64 2148479370}
!56 = !{i64 2156994833}
!57 = !{i64 2156995062}
!58 = !{i64 2149475660}
!59 = !{i64 2149476696}
