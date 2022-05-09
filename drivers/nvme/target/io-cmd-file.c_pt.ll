; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/io-cmd-file.c_pt.bc'
source_filename = "../drivers/nvme/target/io-cmd-file.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.nvmet_ns = type { %struct.percpu_ref, ptr, ptr, i8, i32, i32, i64, [16 x i8], %struct.uuid_t, i32, i8, i8, ptr, ptr, %struct.config_group, %struct.config_group, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i8 }
%struct.percpu_ref = type { i32, ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.78 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.23, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.23 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_rw_command = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvme_dsm_cmd = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i32, i32, [4 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.21 }
%union.anon.20 = type { ptr }
%union.anon.21 = type { i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.nvme_dsm_range = type { i32, i32, i64 }
%struct.nvme_write_zeroes_cmd = type { i8, i8, i16, i32, i64, i64, %union.nvme_data_ptr, i64, i16, i16, i32, i32, i16, i16 }

@buffered_io_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_file_ns_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013nvmet: failed to open file %s: (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmet_file_ns_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/nvme/target/io-cmd-file.c\00", [62 x i8] zeroinitializer }, align 32
@nvmet_file_ns_enable._entry_ptr = internal global ptr @nvmet_file_ns_enable._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvmet-bvec\00", [21 x i8] zeroinitializer }, align 32
@nvmet_file_execute_io.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvmet_file_execute_io.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvmet_file_execute_io.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvmet_file_submit_buffered_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&req->f.work)\00", [32 x i8] zeroinitializer }, align 32
@nvmet_file_execute_flush.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_file_execute_dsm.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nvmet_file_execute_write_zeroes.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 4294966767, i64 4294967201, i64 4294967285]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 54, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 71, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 239, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 294, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 354, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private constant [37 x i8] c"../drivers/nvme/target/io-cmd-file.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 384, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nvmet_file_ns_enable._entry, ptr @nvmet_file_ns_enable._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nvmet_file_submit_buffered_io.__key, ptr @.str.6, ptr @nvmet_file_execute_flush.__key, ptr @nvmet_file_execute_dsm.__key, ptr @nvmet_file_execute_write_zeroes.__key], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_file_ns_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_file_submit_buffered_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_file_execute_flush.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_file_execute_dsm.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_file_execute_write_zeroes.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_file_ns_revalidate(ptr nocapture noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %stat = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat) #6
  %0 = call ptr @memset(ptr %stat, i32 255, i32 144)
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 2
  %1 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %file, align 4
  %f_path = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %call = call i32 @vfs_getattr(ptr noundef %f_path, ptr noundef nonnull %stat, i32 noundef 512, i32 noundef 8192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %size = getelementptr inbounds %struct.kstat, ptr %stat, i32 0, i32 11
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  %size1 = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 6
  %5 = ptrtoint ptr %size1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %size1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_file_ns_disable(ptr nocapture noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %buffered_io = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 10
  %2 = ptrtoint ptr %buffered_io to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buffered_io, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @buffered_io_wq to i32))
  %4 = load ptr, ptr @buffered_io_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %bvec_pool = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 17
  %5 = ptrtoint ptr %bvec_pool to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bvec_pool, align 8
  tail call void @mempool_destroy(ptr noundef %6) #6
  %7 = ptrtoint ptr %bvec_pool to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bvec_pool, align 8
  %bvec_cache = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 18
  %8 = ptrtoint ptr %bvec_cache to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bvec_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %9) #6
  %10 = ptrtoint ptr %bvec_cache to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %bvec_cache, align 4
  %11 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file, align 4
  tail call void @fput(ptr noundef %12) #6
  %13 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %file, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_file_ns_enable(ptr nocapture noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %stat.i = alloca %struct.kstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buffered_io = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 10
  %0 = ptrtoint ptr %buffered_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buffered_io, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i32 196610, i32 131074
  %device_path = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 13
  %2 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_path, align 4
  %call = tail call ptr @filp_open(ptr noundef %3, i32 noundef %spec.select, i16 noundef zeroext 0) #6
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 2
  %4 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %file, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call to i32
  %6 = ptrtoint ptr %device_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_path, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7, i32 noundef %5) #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %stat.i) #6
  %8 = call ptr @memset(ptr %stat.i, i32 255, i32 144)
  %f_path.i = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  %call.i = call i32 @vfs_getattr(ptr noundef %f_path.i, ptr noundef nonnull %stat.i, i32 noundef 512, i32 noundef 8192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end13, label %nvmet_file_ns_revalidate.exit

nvmet_file_ns_revalidate.exit:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #6
  br label %err

if.end13:                                         ; preds = %if.end9
  %size.i = getelementptr inbounds %struct.kstat, ptr %stat.i, i32 0, i32 11
  %9 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %size.i, align 8
  %size1.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 6
  %11 = ptrtoint ptr %size1.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %size1.i, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %stat.i) #6
  %12 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %f_inode.i, align 8
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i_blkbits, align 2
  %18 = call i8 @llvm.umin.i8(i8 %17, i8 12)
  %cond = zext i8 %18 to i32
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 5
  %19 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %blksize_shift, align 8
  %call21 = call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 192, i32 noundef 0, i32 noundef 8192, ptr noundef null) #6
  %bvec_cache = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 18
  %20 = ptrtoint ptr %bvec_cache to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %bvec_cache, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end13.err_crit_edge, label %if.end25

if.end13.err_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end25:                                         ; preds = %if.end13
  %call27 = call ptr @mempool_create(i32 noundef 16, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call21) #6
  %bvec_pool = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 17
  %21 = ptrtoint ptr %bvec_pool to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call27, ptr %bvec_pool, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %if.end25.err_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

err:                                              ; preds = %if.end25.err_crit_edge, %if.end13.err_crit_edge, %nvmet_file_ns_revalidate.exit
  %ret.0 = phi i32 [ %call.i, %nvmet_file_ns_revalidate.exit ], [ -12, %if.end13.err_crit_edge ], [ -12, %if.end25.err_crit_edge ]
  %size = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 6
  %22 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %size, align 8
  %blksize_shift32 = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 5
  %23 = ptrtoint ptr %blksize_shift32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %blksize_shift32, align 8
  %24 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %file, align 4
  %tobool.not.i59 = icmp eq ptr %25, null
  br i1 %tobool.not.i59, label %err.cleanup_crit_edge, label %if.then.i60

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i60:                                      ; preds = %err
  %26 = ptrtoint ptr %buffered_io to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buffered_io, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %if.then.i60.if.end.i_crit_edge, label %if.then2.i

if.then.i60.if.end.i_crit_edge:                   ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @buffered_io_wq to i32))
  %28 = load ptr, ptr @buffered_io_wq, align 4
  call void @flush_workqueue(ptr noundef %28) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i60.if.end.i_crit_edge
  %bvec_pool.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 17
  %29 = ptrtoint ptr %bvec_pool.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bvec_pool.i, align 8
  call void @mempool_destroy(ptr noundef %30) #6
  %31 = ptrtoint ptr %bvec_pool.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %bvec_pool.i, align 8
  %bvec_cache.i = getelementptr inbounds %struct.nvmet_ns, ptr %ns, i32 0, i32 18
  %32 = ptrtoint ptr %bvec_cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bvec_cache.i, align 4
  call void @kmem_cache_destroy(ptr noundef %33) #6
  %34 = ptrtoint ptr %bvec_cache.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %bvec_cache.i, align 4
  %35 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %file, align 4
  call void @fput(ptr noundef %36) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i, %if.then3
  %retval.0.ph = phi i32 [ %ret.0, %if.end.i ], [ %5, %if.then3 ]
  %37 = ptrtoint ptr %file to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %file, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25.cleanup_crit_edge ], [ %ret.0, %err.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_file_flush(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns, align 8
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file, align 4
  %call = tail call i32 @vfs_fsync(ptr noundef %3, i32 noundef 1) #6
  %call1 = tail call zeroext i16 @errno_to_nvme_status(ptr noundef %req, i32 noundef %call) #6
  ret i16 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @errno_to_nvme_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_file_parse_io_cmd(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default [
    i8 2, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge12
    i8 0, label %sw.bb1
    i8 9, label %sw.bb3
    i8 8, label %sw.bb5
  ]

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %5 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvmet_file_execute_rw, ptr %execute, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %execute2 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %6 = ptrtoint ptr %execute2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvmet_file_execute_flush, ptr %execute2, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %execute4 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %7 = ptrtoint ptr %execute4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvmet_file_execute_dsm, ptr %execute4, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %execute6 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %8 = ptrtoint ptr %execute6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvmet_file_execute_write_zeroes, ptr %execute6, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i16 @nvmet_report_invalid_opcode(ptr noundef %req) #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i16 [ %call, %sw.default ], [ 0, %sw.bb5 ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_execute_rw(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_cnt = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_cnt, align 8
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 8
  %length.i = getelementptr inbounds %struct.nvme_rw_command, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %length.i, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #6
  %conv.i = zext i16 %6 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %ns.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns.i, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blksize_shift.i, align 8
  %shl.i = shl i32 %add.i, %10
  %call1 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %shl.i) #6
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext 0) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp sgt i32 %1, 8
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end5
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.then6.if.end9_crit_edge, label %if.end7.i, !prof !33

if.then6.if.end9_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end7.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %15 = extractvalue { i32, i1 } %13, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #10
  br label %if.end9

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %inline_bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 7
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end7.i, %if.then6.if.end9_crit_edge
  %inline_bvec.sink = phi ptr [ %inline_bvec, %if.else ], [ %call8.i, %if.end7.i ], [ null, %if.then6.if.end9_crit_edge ]
  %bvec8 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  %16 = ptrtoint ptr %bvec8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %inline_bvec.sink, ptr %bvec8, align 8
  %17 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8
  %tobool11.not = icmp eq ptr %inline_bvec.sink, null
  br i1 %tobool11.not, label %if.end20.thread, label %if.end20, !prof !33

if.end20:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %17, align 8
  %19 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ns.i, align 8
  %buffered_io = getelementptr inbounds %struct.nvmet_ns, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %buffered_io to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buffered_io, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %if.end20.if.else40_crit_edge, label %land.lhs.true

if.end20.if.else40_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else40

if.end20.thread:                                  ; preds = %if.end9
  %bvec10 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  %23 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ns.i, align 8
  %bvec_pool = getelementptr inbounds %struct.nvmet_ns, ptr %24, i32 0, i32 17
  %25 = ptrtoint ptr %bvec_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bvec_pool, align 8
  %call16 = tail call noalias ptr @mempool_alloc(ptr noundef %26, i32 noundef 3264) #6
  %27 = ptrtoint ptr %bvec10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call16, ptr %bvec10, align 8
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %17, align 8
  %29 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ns.i, align 8
  %buffered_io64 = getelementptr inbounds %struct.nvmet_ns, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %buffered_io64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buffered_io64, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool22.not65 = icmp eq i8 %32, 0
  br i1 %tobool22.not65, label %if.end20.thread.if.else40_crit_edge, label %if.end20.thread.if.end39_crit_edge

if.end20.thread.if.end39_crit_edge:               ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end20.thread.if.else40_crit_edge:              ; preds = %if.end20.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else40

land.lhs.true:                                    ; preds = %if.end20
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %20, i32 0, i32 2
  %33 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %file, align 4
  %f_mode = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %f_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %f_mode, align 8
  %and = and i32 %36, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %land.lhs.true.if.end39_crit_edge, label %land.lhs.true36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true36:                                  ; preds = %land.lhs.true
  %call37 = tail call fastcc zeroext i1 @nvmet_file_execute_io(ptr noundef %req, i32 noundef 8)
  br i1 %call37, label %land.lhs.true36.cleanup_crit_edge, label %land.lhs.true36.if.end39_crit_edge

land.lhs.true36.if.end39_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %land.lhs.true36.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end20.thread.if.end39_crit_edge
  %work.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #6
  %37 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %work.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvmet_file_submit_buffered_io.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 12
  %38 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry4.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry4.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 13
  %40 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nvmet_file_buffered_io_work, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @buffered_io_wq to i32))
  %41 = load ptr, ptr @buffered_io_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work.i) #6
  br label %cleanup

if.else40:                                        ; preds = %if.end20.thread.if.else40_crit_edge, %if.end20.if.else40_crit_edge
  %call41 = tail call fastcc zeroext i1 @nvmet_file_execute_io(ptr noundef %req, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.else40, %if.end39, %land.lhs.true36.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_execute_flush(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #6
  br i1 %call, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvmet_file_execute_flush.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 12
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry4, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 13
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmet_file_flush_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #6
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_execute_dsm(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %nr.i = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr.i, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %add.i = shl i32 %4, 4
  %mul.i = add i32 %add.i, 16
  %call1 = tail call zeroext i1 @nvmet_check_data_len_lte(ptr noundef %req, i32 noundef %mul.i) #6
  br i1 %call1, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvmet_file_execute_dsm.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry5 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 12
  %6 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry5, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 13
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvmet_file_dsm_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work) #6
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_execute_write_zeroes(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #6
  br i1 %call, label %do.body, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %0 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %work, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @nvmet_file_execute_write_zeroes.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry4 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 12
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry4, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 13
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nvmet_file_write_zeroes_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #6
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_report_invalid_opcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nvmet_file_execute_io(ptr noundef %req, i32 noundef %ki_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_cnt = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 9
  %0 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_cnt, align 8
  %2 = getelementptr %struct.nvmet_req, ptr %req, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp sgt i32 %1, 16
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 8
  %slba = getelementptr inbounds %struct.nvme_rw_command, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %slba, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8)
  %ns = getelementptr %struct.nvmet_req, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns, align 8
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksize_shift, align 8
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 %9, %sh_prom
  %transfer_len = getelementptr %struct.nvmet_req, ptr %req, i32 0, i32 11
  %14 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transfer_len, align 8
  %conv = zext i32 %15 to i64
  %add = add i64 %shl, %conv
  %size = getelementptr inbounds %struct.nvmet_ns, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %17)
  %cmp2 = icmp sgt i64 %add, %17
  br i1 %cmp2, label %entry.cleanup.sink.split.sink.split_crit_edge, label %if.end7, !prof !33

entry.cleanup.sink.split.sink.split_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.end7:                                          ; preds = %entry
  %iocb = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 2
  %18 = call ptr @memset(ptr %iocb, i32 0, i32 40)
  %19 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10303 = icmp sgt i32 %20, 0
  br i1 %cmp10303, label %for.body.lr.ph, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end7
  %sg8 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 5
  %21 = ptrtoint ptr %sg8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg8, align 4
  %bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %for.body.lr.ph
  %nr_bvec.0310 = phi i32 [ %1, %for.body.lr.ph ], [ %sub, %if.end87.for.body_crit_edge ]
  %bv_cnt.0309 = phi i32 [ 0, %for.body.lr.ph ], [ %bv_cnt.1, %if.end87.for.body_crit_edge ]
  %len.0308 = phi i32 [ 0, %for.body.lr.ph ], [ %len.1, %if.end87.for.body_crit_edge ]
  %total_len.0307 = phi i32 [ 0, %for.body.lr.ph ], [ %add18, %if.end87.for.body_crit_edge ]
  %sg.0306 = phi ptr [ %22, %for.body.lr.ph ], [ %call89, %if.end87.for.body_crit_edge ]
  %i.0305 = phi i32 [ 0, %for.body.lr.ph ], [ %inc88, %if.end87.for.body_crit_edge ]
  %pos.0304 = phi i64 [ %shl, %for.body.lr.ph ], [ %pos.1, %if.end87.for.body_crit_edge ]
  %23 = ptrtoint ptr %sg.0306 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sg.0306, align 4
  %and.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %nvmet_file_init_bvec.exit, label %do.body2.i.i, !prof !34

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !35
  unreachable

nvmet_file_init_bvec.exit:                        ; preds = %for.body
  %25 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bvec, align 8
  %arrayidx = getelementptr %struct.bio_vec, ptr %26, i32 %bv_cnt.0309
  %and.i.i = and i32 %24, -4
  %27 = inttoptr i32 %and.i.i to ptr
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %arrayidx, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0306, i32 0, i32 1
  %29 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %26, i32 %bv_cnt.0309, i32 2
  %31 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %bv_offset.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0306, i32 0, i32 2
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %26, i32 %bv_cnt.0309, i32 1
  %34 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %bv_len.i, align 4
  %35 = load ptr, ptr %bvec, align 8
  %bv_len = getelementptr %struct.bio_vec, ptr %35, i32 %bv_cnt.0309, i32 1
  %36 = ptrtoint ptr %bv_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_len, align 4
  %add14 = add i32 %37, %len.0308
  %add18 = add i32 %37, %total_len.0307
  %inc = add i32 %bv_cnt.0309, 1
  %sub = add i32 %nr_bvec.0310, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp19 = icmp slt i32 %sub, 0
  br i1 %cmp19, label %land.rhs, label %nvmet_file_init_bvec.exit.if.end58_crit_edge

nvmet_file_init_bvec.exit.if.end58_crit_edge:     ; preds = %nvmet_file_init_bvec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

land.rhs:                                         ; preds = %nvmet_file_init_bvec.exit
  %.b293 = load i1, ptr @nvmet_file_execute_io.__already_done, align 1
  br i1 %.b293, label %land.rhs.if.end58_crit_edge, label %if.then36, !prof !34

land.rhs.if.end58_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nvmet_file_execute_io.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 173, i32 noundef 9, ptr noundef null) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then36, %land.rhs.if.end58_crit_edge, %nvmet_file_init_bvec.exit.if.end58_crit_edge
  br i1 %or.cond, label %land.lhs.true73, label %if.end58.if.end87_crit_edge, !prof !33

if.end58.if.end87_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

land.lhs.true73:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp75 = icmp eq i32 %sub, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %inc)
  %cmp77 = icmp eq i32 %inc, 16
  %or.cond294 = select i1 %cmp75, i1 true, i1 %cmp77
  br i1 %or.cond294, label %if.then79, label %land.lhs.true73.if.end87_crit_edge

land.lhs.true73.if.end87_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then79:                                        ; preds = %land.lhs.true73
  %call80 = tail call fastcc i32 @nvmet_file_submit_bvec(ptr noundef %req, i64 noundef %pos.0304, i32 noundef %inc, i32 noundef %add14, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then79.complete_crit_edge, label %if.end84

if.then79.complete_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

if.end84:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  %conv85 = zext i32 %add14 to i64
  %add86 = add i64 %pos.0304, %conv85
  br label %if.end87

if.end87:                                         ; preds = %if.end84, %land.lhs.true73.if.end87_crit_edge, %if.end58.if.end87_crit_edge
  %pos.1 = phi i64 [ %add86, %if.end84 ], [ %pos.0304, %if.end58.if.end87_crit_edge ], [ %pos.0304, %land.lhs.true73.if.end87_crit_edge ]
  %len.1 = phi i32 [ 0, %if.end84 ], [ %add14, %if.end58.if.end87_crit_edge ], [ %add14, %land.lhs.true73.if.end87_crit_edge ]
  %bv_cnt.1 = phi i32 [ 0, %if.end84 ], [ %inc, %if.end58.if.end87_crit_edge ], [ %inc, %land.lhs.true73.if.end87_crit_edge ]
  %inc88 = add nuw nsw i32 %i.0305, 1
  %call89 = tail call ptr @sg_next(ptr noundef %sg.0306) #6
  %38 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sg_cnt, align 8
  %cmp10 = icmp slt i32 %inc88, %39
  br i1 %cmp10, label %if.end87.for.body_crit_edge, label %if.end87.for.end_crit_edge

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end87.for.end_crit_edge, %if.end7.for.end_crit_edge
  %pos.0.lcssa = phi i64 [ %shl, %if.end7.for.end_crit_edge ], [ %pos.1, %if.end87.for.end_crit_edge ]
  %total_len.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %add18, %if.end87.for.end_crit_edge ]
  %bv_cnt.0.lcssa = phi i32 [ 0, %if.end7.for.end_crit_edge ], [ %bv_cnt.1, %if.end87.for.end_crit_edge ]
  %40 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %total_len.0.lcssa, i32 %41)
  %cmp92.not = icmp eq i32 %total_len.0.lcssa, %41
  br i1 %cmp92.not, label %if.end149, label %land.rhs101

land.rhs101:                                      ; preds = %for.end
  %.b289292 = load i1, ptr @nvmet_file_execute_io.__already_done.4, align 1
  br i1 %.b289292, label %land.rhs101.complete_crit_edge, label %land.rhs101.complete.sink.split_crit_edge, !prof !34

land.rhs101.complete.sink.split_crit_edge:        ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete.sink.split

land.rhs101.complete_crit_edge:                   ; preds = %land.rhs101
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

if.end149:                                        ; preds = %for.end
  br i1 %or.cond, label %if.end149.complete_crit_edge, label %if.end158, !prof !33

if.end149.complete_crit_edge:                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

if.end158:                                        ; preds = %if.end149
  %and = and i32 %ki_flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool159.not = icmp eq i32 %and, 0
  br i1 %tobool159.not, label %if.then160, label %if.end158.if.end162_crit_edge

if.end158.if.end162_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  %ki_complete = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 8
  %42 = ptrtoint ptr %ki_complete to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nvmet_file_io_done, ptr %ki_complete, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.end158.if.end162_crit_edge
  %call163 = tail call fastcc i32 @nvmet_file_submit_bvec(ptr noundef %req, i64 noundef %pos.0.lcssa, i32 noundef %bv_cnt.0.lcssa, i32 noundef %total_len.0.lcssa, i32 noundef %ki_flags)
  %43 = zext i32 %call163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call163, label %if.end162.complete_crit_edge [
    i32 -529, label %if.end162.cleanup_crit_edge
    i32 -11, label %sw.bb164
    i32 -95, label %sw.bb226
  ]

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end162.complete_crit_edge:                     ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

sw.bb164:                                         ; preds = %if.end162
  br i1 %tobool159.not, label %land.rhs177, label %sw.bb164.cleanup_crit_edge

sw.bb164.cleanup_crit_edge:                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs177:                                      ; preds = %sw.bb164
  %.b290291 = load i1, ptr @nvmet_file_execute_io.__already_done.5, align 1
  br i1 %.b290291, label %land.rhs177.complete_crit_edge, label %land.rhs177.complete.sink.split_crit_edge, !prof !34

land.rhs177.complete.sink.split_crit_edge:        ; preds = %land.rhs177
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete.sink.split

land.rhs177.complete_crit_edge:                   ; preds = %land.rhs177
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

sw.bb226:                                         ; preds = %if.end162
  br i1 %tobool159.not, label %sw.bb226.complete_crit_edge, label %sw.bb226.cleanup_crit_edge

sw.bb226.cleanup_crit_edge:                       ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb226.complete_crit_edge:                      ; preds = %sw.bb226
  call void @__sanitizer_cov_trace_pc() #8
  br label %complete

complete.sink.split:                              ; preds = %land.rhs177.complete.sink.split_crit_edge, %land.rhs101.complete.sink.split_crit_edge
  %nvmet_file_execute_io.__already_done.5.sink = phi ptr [ @nvmet_file_execute_io.__already_done.4, %land.rhs101.complete.sink.split_crit_edge ], [ @nvmet_file_execute_io.__already_done.5, %land.rhs177.complete.sink.split_crit_edge ]
  %.sink = phi i32 [ 188, %land.rhs101.complete.sink.split_crit_edge ], [ 211, %land.rhs177.complete.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -5, %land.rhs101.complete.sink.split_crit_edge ], [ -11, %land.rhs177.complete.sink.split_crit_edge ]
  %44 = ptrtoint ptr %nvmet_file_execute_io.__already_done.5.sink to i32
  call void @__asan_store1_noabort(i32 %44)
  store i1 true, ptr %nvmet_file_execute_io.__already_done.5.sink, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #6
  br label %complete

complete:                                         ; preds = %complete.sink.split, %sw.bb226.complete_crit_edge, %land.rhs177.complete_crit_edge, %if.end162.complete_crit_edge, %if.end149.complete_crit_edge, %land.rhs101.complete_crit_edge, %if.then79.complete_crit_edge
  %ret.0 = phi i32 [ %call163, %if.end162.complete_crit_edge ], [ -95, %sw.bb226.complete_crit_edge ], [ %total_len.0.lcssa, %if.end149.complete_crit_edge ], [ -11, %land.rhs177.complete_crit_edge ], [ -5, %land.rhs101.complete_crit_edge ], [ %ret.0.ph, %complete.sink.split ], [ %call80, %if.then79.complete_crit_edge ]
  %bvec.i = getelementptr %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  %45 = ptrtoint ptr %bvec.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bvec.i, align 8
  %inline_bvec.i = getelementptr %struct.nvmet_req, ptr %req, i32 0, i32 7
  %cmp.not.i = icmp eq ptr %46, %inline_bvec.i
  br i1 %cmp.not.i, label %complete.if.end8.i_crit_edge, label %if.then.i

complete.if.end8.i_crit_edge:                     ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then.i:                                        ; preds = %complete
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %2, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp1.i = icmp eq i8 %48, 0
  br i1 %cmp1.i, label %if.then5.i, label %if.else.i, !prof !34

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %46) #6
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ns, align 8
  %bvec_pool.i = getelementptr inbounds %struct.nvmet_ns, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %bvec_pool.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bvec_pool.i, align 8
  tail call void @mempool_free(ptr noundef %46, ptr noundef %52) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then5.i, %complete.if.end8.i_crit_edge
  %53 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %ret.0)
  %cmp9.not.i = icmp eq i32 %54, %ret.0
  br i1 %cmp9.not.i, label %if.end8.i.cleanup.sink.split_crit_edge, label %if.end8.i.cleanup.sink.split.sink.split_crit_edge, !prof !34

if.end8.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.end8.i.cleanup.sink.split_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end8.i.cleanup.sink.split.sink.split_crit_edge, %entry.cleanup.sink.split.sink.split_crit_edge
  %ret.0.sink = phi i32 [ -28, %entry.cleanup.sink.split.sink.split_crit_edge ], [ %ret.0, %if.end8.i.cleanup.sink.split.sink.split_crit_edge ]
  %call.i = tail call zeroext i16 @errno_to_nvme_status(ptr noundef %req, i32 noundef %ret.0.sink) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end8.i.cleanup.sink.split_crit_edge
  %status.0.i.sink = phi i16 [ 0, %if.end8.i.cleanup.sink.split_crit_edge ], [ %call.i, %cleanup.sink.split.sink.split ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0.i.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb226.cleanup_crit_edge, %sw.bb164.cleanup_crit_edge, %if.end162.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end162.cleanup_crit_edge ], [ false, %sw.bb226.cleanup_crit_edge ], [ false, %sw.bb164.cleanup_crit_edge ], [ true, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvmet_file_submit_bvec(ptr noundef %req, i64 noundef %pos, i32 noundef %nr_segs, i32 noundef %count, i32 noundef %ki_flags) unnamed_addr #0 align 64 {
entry:
  %iter = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter) #6
  %0 = call ptr @memset(ptr %iter, i32 255, i32 24)
  %1 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %req, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp = icmp eq i8 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %control = getelementptr inbounds %struct.nvme_rw_command, ptr %2, i32 0, i32 9
  %5 = ptrtoint ptr %control to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %control, align 2
  %7 = lshr i16 %6, 5
  %8 = and i16 %7, 2
  %9 = zext i16 %8 to i32
  %10 = or i32 %9, %ki_flags
  %ns = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ns, align 8
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file, align 4
  %f_op = getelementptr inbounds %struct.file, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %f_op, align 4
  %write_iter = getelementptr inbounds %struct.file_operations, ptr %16, i32 0, i32 5
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ns6 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %ns6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ns6, align 8
  %file7 = getelementptr inbounds %struct.nvmet_ns, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %file7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %file7, align 4
  %f_op8 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %f_op8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_op8, align 4
  %read_iter = getelementptr inbounds %struct.file_operations, ptr %22, i32 0, i32 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then
  %ki_flags.addr.1 = phi i32 [ %10, %if.then ], [ %ki_flags, %if.else ]
  %call_iter.0.in = phi ptr [ %write_iter, %if.then ], [ %read_iter, %if.else ]
  %rw.0 = phi i32 [ 1, %if.then ], [ 0, %if.else ]
  %23 = ptrtoint ptr %call_iter.0.in to i32
  call void @__asan_load4_noabort(i32 %23)
  %call_iter.0 = load ptr, ptr %call_iter.0.in, align 4
  %iocb1 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 2
  %bvec = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 10
  %24 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bvec, align 8
  call void @iov_iter_bvec(ptr noundef nonnull %iter, i32 noundef %rw.0, ptr noundef %25, i32 noundef %nr_segs, i32 noundef %count) #6
  %ki_pos = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 5
  %26 = ptrtoint ptr %ki_pos to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %pos, ptr %ki_pos, align 8
  %ns10 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %ns10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ns10, align 8
  %file11 = getelementptr inbounds %struct.nvmet_ns, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %file11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %file11, align 4
  %31 = ptrtoint ptr %iocb1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %iocb1, align 8
  %32 = load ptr, ptr %file11, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f_flags.i, align 4
  %and.i = lshr i32 %34, 6
  %35 = and i32 %and.i, 16
  %and2.i = shl i32 %34, 1
  %36 = and i32 %and2.i, 131072
  %37 = or i32 %36, %35
  %and8.i = and i32 %34, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %if.end9.if.then17.i_crit_edge

if.end9.if.then17.i_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

lor.lhs.false.i:                                  ; preds = %if.end9
  %f_mapping.i = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 18
  %38 = ptrtoint ptr %f_mapping.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %f_mapping.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i_sb.i, align 4
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_flags.i, align 4
  %and10.i = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false.i.if.then17.i_crit_edge

lor.lhs.false.i.if.then17.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

lor.lhs.false12.i:                                ; preds = %lor.lhs.false.i
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 4
  %46 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_flags.i, align 4
  %and15.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false12.i.iocb_flags.exit_crit_edge, label %lor.lhs.false12.i.if.then17.i_crit_edge

lor.lhs.false12.i.if.then17.i_crit_edge:          ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

lor.lhs.false12.i.iocb_flags.exit_crit_edge:      ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iocb_flags.exit

if.then17.i:                                      ; preds = %lor.lhs.false12.i.if.then17.i_crit_edge, %lor.lhs.false.i.if.then17.i_crit_edge, %if.end9.if.then17.i_crit_edge
  %or18.i = or i32 %37, 2
  br label %iocb_flags.exit

iocb_flags.exit:                                  ; preds = %if.then17.i, %lor.lhs.false12.i.iocb_flags.exit_crit_edge
  %res.2.i = phi i32 [ %or18.i, %if.then17.i ], [ %37, %lor.lhs.false12.i.iocb_flags.exit_crit_edge ]
  %and21.i = lshr i32 %34, 18
  %48 = and i32 %and21.i, 4
  %49 = or i32 %48, %ki_flags.addr.1
  %or14 = or i32 %49, %res.2.i
  %ki_flags15 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 8, i32 0, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %ki_flags15 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or14, ptr %ki_flags15, align 8
  %call16 = call i32 %call_iter.0(ptr noundef %iocb1, ptr noundef nonnull %iter) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter) #6
  ret i32 %call16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_io_done(ptr noundef %iocb, i32 noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %iocb, i32 -136
  %bvec = getelementptr i8, ptr %iocb, i32 40
  %0 = ptrtoint ptr %bvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bvec, align 8
  %inline_bvec = getelementptr i8, ptr %iocb, i32 -108
  %cmp.not = icmp eq ptr %1, %inline_bvec
  br i1 %cmp.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = getelementptr i8, ptr %iocb, i32 -8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 8, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp1 = icmp eq i8 %4, 0
  br i1 %cmp1, label %if.then5, label %if.else, !prof !34

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef %1) #6
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %ns = getelementptr i8, ptr %iocb, i32 -120
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns, align 8
  %bvec_pool = getelementptr inbounds %struct.nvmet_ns, ptr %6, i32 0, i32 17
  %7 = ptrtoint ptr %bvec_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bvec_pool, align 8
  tail call void @mempool_free(ptr noundef %1, ptr noundef %8) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %entry.if.end8_crit_edge
  %transfer_len = getelementptr i8, ptr %iocb, i32 160
  %9 = ptrtoint ptr %transfer_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %transfer_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %ret)
  %cmp9.not = icmp eq i32 %10, %ret
  br i1 %cmp9.not, label %if.end8.if.end18_crit_edge, label %if.then17, !prof !34

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i16 @errno_to_nvme_status(ptr noundef %add.ptr, i32 noundef %ret) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end8.if.end18_crit_edge
  %status.0 = phi i16 [ %call, %if.then17 ], [ 0, %if.end8.if.end18_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %status.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_buffered_io_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -180
  %call = tail call fastcc zeroext i1 @nvmet_file_execute_io(ptr noundef %add.ptr, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_flush_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -180
  %ns.i = getelementptr i8, ptr %w, i32 -164
  %0 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ns.i, align 8
  %file.i = getelementptr inbounds %struct.nvmet_ns, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %file.i, align 4
  %call.i = tail call i32 @vfs_fsync(ptr noundef %3, i32 noundef 1) #6
  %call1.i = tail call zeroext i16 @errno_to_nvme_status(ptr noundef %add.ptr, i32 noundef %call.i) #6
  tail call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %call1.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_data_len_lte(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_dsm_work(ptr noundef %w) #0 align 64 {
entry:
  %range.i = alloca %struct.nvme_dsm_range, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -180
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %attributes = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %attributes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %3)
  %cond = icmp eq i32 %3, 67108864
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %range.i) #6
  %4 = getelementptr inbounds %struct.nvme_dsm_range, ptr %range.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nvme_dsm_range, ptr %range.i, i32 0, i32 2
  %ns.i = getelementptr i8, ptr %w, i32 -164
  %6 = call ptr @memset(ptr %range.i, i32 255, i32 16)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb
  %i.042.i = phi i32 [ 0, %sw.bb ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.042.i, 4
  %call.i = call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %add.ptr, i32 noundef %mul.i, ptr noundef nonnull %range.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i)
  %tobool.not.i = icmp eq i16 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.nvmet_file_execute_discard.exit_crit_edge

for.body.i.nvmet_file_execute_discard.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvmet_file_execute_discard.exit

if.end.i:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %5, align 8
  %9 = call i64 @llvm.bswap.i64(i64 %8) #6
  %10 = ptrtoint ptr %ns.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ns.i, align 8
  %blksize_shift.i = getelementptr inbounds %struct.nvmet_ns, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %blksize_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksize_shift.i, align 8
  %sh_prom.i = zext i32 %13 to i64
  %shl.i = shl i64 %9, %sh_prom.i
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %4, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15) #6
  %conv.i = zext i32 %16 to i64
  %shl4.i = shl i64 %conv.i, %sh_prom.i
  %add.i = add i64 %shl4.i, %shl.i
  %size.i = getelementptr inbounds %struct.nvmet_ns, ptr %11, i32 0, i32 6
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %18)
  %cmp6.i = icmp sgt i64 %add.i, %18
  br i1 %cmp6.i, label %if.end.i.for.end.sink.split.i_crit_edge, label %if.end11.i

if.end.i.for.end.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.sink.split.i

if.end11.i:                                       ; preds = %if.end.i
  %file.i = getelementptr inbounds %struct.nvmet_ns, ptr %11, i32 0, i32 2
  %19 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %file.i, align 4
  %call13.i = call i32 @vfs_fallocate(ptr noundef %20, i32 noundef 3, i64 noundef %shl.i, i64 noundef %shl4.i) #6
  %21 = zext i32 %call13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call13.i, label %if.then17.i [
    i32 0, label %if.end11.i.for.inc.i_crit_edge
    i32 -95, label %if.end11.i.for.inc.i_crit_edge10
  ]

if.end11.i.for.inc.i_crit_edge10:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then17.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %5, align 8
  %24 = call i64 @llvm.bswap.i64(i64 %23) #6
  br label %for.end.sink.split.i

for.inc.i:                                        ; preds = %if.end11.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge10
  %inc.i = add i32 %i.042.i, 1
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 8
  %nr.i = getelementptr inbounds %struct.nvme_dsm_cmd, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr.i, align 8
  %29 = call i32 @llvm.bswap.i32(i32 %28) #6
  %cmp.not.i = icmp ugt i32 %inc.i, %29
  br i1 %cmp.not.i, label %for.inc.i.nvmet_file_execute_discard.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.nvmet_file_execute_discard.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvmet_file_execute_discard.exit

for.end.sink.split.i:                             ; preds = %if.then17.i, %if.end.i.for.end.sink.split.i_crit_edge
  %.sink.i = phi i64 [ %24, %if.then17.i ], [ %9, %if.end.i.for.end.sink.split.i_crit_edge ]
  %call13.lcssa.sink.i = phi i32 [ %call13.i, %if.then17.i ], [ -28, %if.end.i.for.end.sink.split.i_crit_edge ]
  %error_slba19.i = getelementptr i8, ptr %w, i32 148
  %30 = ptrtoint ptr %error_slba19.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %.sink.i, ptr %error_slba19.i, align 8
  %call20.i = call zeroext i16 @errno_to_nvme_status(ptr noundef %add.ptr, i32 noundef %call13.lcssa.sink.i) #6
  br label %nvmet_file_execute_discard.exit

nvmet_file_execute_discard.exit:                  ; preds = %for.end.sink.split.i, %for.inc.i.nvmet_file_execute_discard.exit_crit_edge, %for.body.i.nvmet_file_execute_discard.exit_crit_edge
  %status.1.i = phi i16 [ %call20.i, %for.end.sink.split.i ], [ %call.i, %for.body.i.nvmet_file_execute_discard.exit_crit_edge ], [ 0, %for.inc.i.nvmet_file_execute_discard.exit_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %status.1.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %range.i) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %nvmet_file_execute_discard.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_from_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fallocate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_file_write_zeroes_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -180
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %slba = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %slba to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %slba, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %ns = getelementptr i8, ptr %w, i32 -164
  %5 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ns, align 8
  %blksize_shift = getelementptr inbounds %struct.nvmet_ns, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %blksize_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blksize_shift, align 8
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 %4, %sh_prom
  %length = getelementptr inbounds %struct.nvme_write_zeroes_cmd, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %length, align 8
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv = zext i16 %11 to i64
  %add = add nuw nsw i64 %conv, 1
  %shl4 = shl i64 %add, %sh_prom
  %add5 = add i64 %shl4, %shl
  %size = getelementptr inbounds %struct.nvmet_ns, ptr %6, i32 0, i32 6
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add5, i64 %13)
  %cmp = icmp sgt i64 %add5, %13
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end, !prof !33

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %file = getelementptr inbounds %struct.nvmet_ns, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file, align 4
  %call10 = tail call i32 @vfs_fallocate(ptr noundef %15, i32 noundef 17, i64 noundef %shl, i64 noundef %shl4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call10.sink = phi i32 [ -28, %entry.cleanup.sink.split_crit_edge ], [ %call10, %if.end.cleanup.sink.split_crit_edge ]
  %call13 = tail call zeroext i16 @errno_to_nvme_status(ptr noundef %add.ptr, i32 noundef %call10.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %cond.sink = phi i16 [ 0, %if.end.cleanup_crit_edge ], [ %call13, %cleanup.sink.split ]
  tail call void @nvmet_req_complete(ptr noundef %add.ptr, i16 noundef zeroext %cond.sink) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 54, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvmet_file_ns_enable._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvmet_file_ns_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 71, i32 37}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 173, i32 3}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 188, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 211, i32 7}
!14 = !{ptr @nvmet_file_submit_buffered_io.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 239, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvmet_file_execute_flush.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 294, i32 2}
!19 = !{ptr @nvmet_file_execute_dsm.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 354, i32 2}
!21 = !{ptr @nvmet_file_execute_write_zeroes.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/io-cmd-file.c", i32 384, i32 2}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153830625, i64 2153831117, i64 2153830662, i64 2153830718, i64 2153830752, i64 2153830776, i64 2153830817, i64 2153830838, i64 2153830866, i64 2153830900}
