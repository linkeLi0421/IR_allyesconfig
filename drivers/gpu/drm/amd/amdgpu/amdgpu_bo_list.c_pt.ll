; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amdgpu_bo_list = type { %struct.callback_head, %struct.kref, ptr, ptr, ptr, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_amdgpu_bo_list_entry = type { i32, i32 }
%struct.amdgpu_bo = type { i32, i32, [3 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i64, ptr, ptr, %struct.mmu_interval_notifier, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.amdgpu_bo_list_entry = type { %struct.ttm_validate_buffer, ptr, ptr, i32, ptr, i8 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.amdgpu_fpriv = type { %struct.amdgpu_vm, ptr, ptr, %struct.mutex, %struct.idr, %struct.amdgpu_ctx_mgr }
%struct.amdgpu_vm = type { %struct.rb_root_cached, %struct.mutex, i8, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.amdgpu_vm_bo_base, ptr, %struct.drm_sched_entity, %struct.drm_sched_entity, ptr, i32, [3 x ptr], i8, ptr, i8, %struct.anon.94, ptr, %struct.list_head, i64, %struct.amdgpu_task_info, %struct.ttm_lru_bulk_move, i8, i8 }
%struct.amdgpu_vm_bo_base = type { ptr, ptr, ptr, %struct.list_head, i8 }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.94 = type { %union.anon.95, [128 x i64] }
%union.anon.95 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.amdgpu_task_info = type { [16 x i8], [16 x i8], i32, i32 }
%struct.ttm_lru_bulk_move = type { [4 x %struct.ttm_lru_bulk_move_pos], [4 x %struct.ttm_lru_bulk_move_pos] }
%struct.ttm_lru_bulk_move_pos = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.amdgpu_ctx_mgr = type { ptr, %struct.mutex, %struct.idr }
%struct.drm_amdgpu_bo_list_in = type { i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }

@__tracepoint_amdgpu_bo_list_set = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", [44 x i8] zeroinitializer }, align 32
@trace_amdgpu_bo_list_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_amdgpu_cs_bo_status = external dso_local global %struct.tracepoint, align 4
@trace_amdgpu_cs_bo_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_ = private constant [47 x i8] c"../drivers/gpu/drm/amd/amdgpu/amdgpu_bo_list.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [55 x i8] c"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 459, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 108, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 230, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 214, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 156, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_list_create(ptr nocapture readnone %adev, ptr noundef %filp, ptr nocapture noundef readonly %info, i32 noundef %num_entries, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %bo = alloca ptr, align 4
  %bo55 = alloca ptr, align 4
  %bo67 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 119304646, i32 %num_entries)
  %cmp = icmp ugt i32 %num_entries, 119304646
  br i1 %cmp, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end:                                           ; preds = %entry
  %mul = mul nuw i32 %num_entries, 36
  %add = add nuw i32 %mul, 32
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %add, i32 noundef 3264, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup75_crit_edge, label %if.end2

if.end.cleanup75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup75

if.end2:                                          ; preds = %if.end
  %refcount = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %refcount, align 4
  %gds_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %gds_obj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %gds_obj, align 4
  %gws_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %gws_obj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %gws_obj, align 4
  %oa_obj = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %oa_obj to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %oa_obj, align 4
  %arrayidx.i = getelementptr %struct.amdgpu_bo_list, ptr %call.i, i32 1
  %4 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_entries)
  %cmp5146.not = icmp eq i32 %num_entries, 0
  br i1 %cmp5146.not, label %if.end2.for.end_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end2.for.body_crit_edge
  %last_entry.0150 = phi i32 [ %last_entry.1, %for.inc.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %first_userptr.0149 = phi i32 [ %first_userptr.1, %for.inc.for.body_crit_edge ], [ %num_entries, %if.end2.for.body_crit_edge ]
  %i.0148 = phi i32 [ %inc46, %for.inc.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  %total_size.0147 = phi i64 [ %add42, %for.inc.for.body_crit_edge ], [ 0, %if.end2.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo) #8
  %arrayidx = getelementptr %struct.drm_amdgpu_bo_list_entry, ptr %info, i32 %i.0148
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %call7 = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %6) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %for.body.cleanup_crit_edge, label %if.then.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %call7, i32 -72
  %call11 = tail call ptr @amdgpu_bo_ref(ptr noundef %add.ptr) #8
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %bo, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr nonnull %call7, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7, ptr nonnull %call7, i32 1, ptr nonnull elementtype(i32) %call7) #8, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7, i32 noundef 3) #8
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @drm_gem_object_free(ptr noundef nonnull %call7) #8, !callees !39
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  %9 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bo, align 4
  %ttm = getelementptr inbounds %struct.amdgpu_bo, ptr %10, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ttm, align 8
  %call12 = tail call ptr @amdgpu_ttm_tt_get_usermm(ptr noundef %12) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %drm_gem_object_put.exit
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 53
  %17 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mm, align 8
  %cmp16.not = icmp eq ptr %call12, %18
  br i1 %cmp16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo) #8
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %first_userptr.0149, -1
  br label %if.end21

if.else:                                          ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %last_entry.0150, 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end18
  %dec.pn = phi i32 [ %dec, %if.end18 ], [ %last_entry.0150, %if.else ]
  %first_userptr.1 = phi i32 [ %dec, %if.end18 ], [ %first_userptr.0149, %if.else ]
  %last_entry.1 = phi i32 [ %last_entry.0150, %if.end18 ], [ %inc, %if.else ]
  %bo_priority = getelementptr %struct.drm_amdgpu_bo_list_entry, ptr %info, i32 %i.0148, i32 1
  %19 = ptrtoint ptr %bo_priority to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bo_priority, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 32)
  %priority = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %dec.pn, i32 3
  %22 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %priority, align 4
  %23 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bo, align 4
  %tbo25 = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4
  %bo26 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %dec.pn, i32 0, i32 1
  %25 = ptrtoint ptr %bo26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tbo25, ptr %bo26, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp27 = icmp eq i32 %27, 8
  br i1 %cmp27, label %if.then28, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %gds_obj to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %24, ptr %gds_obj, align 4
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %24, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end21.if.end30_crit_edge
  %30 = phi i32 [ %.pr, %if.then28 ], [ %27, %if.end21.if.end30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %30)
  %cmp32 = icmp eq i32 %30, 16
  br i1 %cmp32, label %if.then33, label %if.end30.if.end35_crit_edge

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %gws_obj to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %24, ptr %gws_obj, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %33)
  %cmp37 = icmp eq i32 %33, 32
  br i1 %cmp37, label %if.then38, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %oa_obj to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %24, ptr %oa_obj, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then17, %for.body.cleanup_crit_edge
  %r.1 = phi i32 [ -1, %if.then17 ], [ -2, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_entry.0150)
  %cmp52152.not = icmp eq i32 %last_entry.0150, 0
  br i1 %cmp52152.not, label %cleanup.for.cond63.preheader_crit_edge, label %cleanup.for.body54_crit_edge

cleanup.for.body54_crit_edge:                     ; preds = %cleanup
  br label %for.body54

cleanup.for.cond63.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond63.preheader

for.inc:                                          ; preds = %if.then38, %if.end35.for.inc_crit_edge
  %size.i = getelementptr inbounds %struct.amdgpu_bo, ptr %24, i32 0, i32 4, i32 0, i32 5
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 8
  %conv = zext i32 %36 to i64
  %add42 = add i64 %total_size.0147, %conv
  tail call fastcc void @trace_amdgpu_bo_list_set(ptr noundef nonnull %call.i, ptr noundef %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo) #8
  %inc46 = add nuw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc46, %num_entries
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end2.for.end_crit_edge
  %total_size.0.lcssa = phi i64 [ 0, %if.end2.for.end_crit_edge ], [ %add42, %for.inc.for.end_crit_edge ]
  %first_userptr.0.lcssa = phi i32 [ 0, %if.end2.for.end_crit_edge ], [ %first_userptr.1, %for.inc.for.end_crit_edge ]
  %first_userptr47 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %first_userptr47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %first_userptr.0.lcssa, ptr %first_userptr47, align 4
  %num_entries48 = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 6
  %38 = ptrtoint ptr %num_entries48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %num_entries, ptr %num_entries48, align 4
  %conv50 = zext i32 %num_entries to i64
  tail call fastcc void @trace_amdgpu_cs_bo_status(i64 noundef %conv50, i64 noundef %total_size.0.lcssa)
  %39 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %result, align 4
  br label %cleanup75

for.cond63.preheader:                             ; preds = %for.body54.for.cond63.preheader_crit_edge, %cleanup.for.cond63.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %first_userptr.0149, i32 %num_entries)
  %cmp64154 = icmp ult i32 %first_userptr.0149, %num_entries
  br i1 %cmp64154, label %for.cond63.preheader.for.body66_crit_edge, label %for.cond63.preheader.for.end74_crit_edge

for.cond63.preheader.for.end74_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

for.cond63.preheader.for.body66_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body66

for.body54:                                       ; preds = %for.body54.for.body54_crit_edge, %cleanup.for.body54_crit_edge
  %i.1153 = phi i32 [ %inc61, %for.body54.for.body54_crit_edge ], [ 0, %cleanup.for.body54_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo55) #8
  %bo58 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %i.1153, i32 0, i32 1
  %40 = ptrtoint ptr %bo58 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bo58, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 -72
  %42 = ptrtoint ptr %bo55 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i, ptr %bo55, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo55) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo55) #8
  %inc61 = add nuw i32 %i.1153, 1
  %exitcond162.not = icmp eq i32 %inc61, %last_entry.0150
  br i1 %exitcond162.not, label %for.body54.for.cond63.preheader_crit_edge, label %for.body54.for.body54_crit_edge

for.body54.for.body54_crit_edge:                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body54

for.body54.for.cond63.preheader_crit_edge:        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond63.preheader

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.cond63.preheader.for.body66_crit_edge
  %i.2155 = phi i32 [ %inc73, %for.body66.for.body66_crit_edge ], [ %first_userptr.0149, %for.cond63.preheader.for.body66_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo67) #8
  %bo70 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %i.2155, i32 0, i32 1
  %43 = ptrtoint ptr %bo70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bo70, align 4
  %add.ptr.i128 = getelementptr i8, ptr %44, i32 -72
  %45 = ptrtoint ptr %bo67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.i128, ptr %bo67, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo67) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo67) #8
  %inc73 = add i32 %i.2155, 1
  %exitcond163.not = icmp eq i32 %inc73, %num_entries
  br i1 %exitcond163.not, label %for.body66.for.end74_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66

for.body66.for.end74_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

for.end74:                                        ; preds = %for.body66.for.end74_crit_edge, %for.cond63.preheader.for.end74_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i) #8
  br label %cleanup75

cleanup75:                                        ; preds = %for.end74, %for.end, %if.end.cleanup75_crit_edge, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ %r.1, %for.end74 ], [ 0, %for.end ], [ -22, %entry.cleanup75_crit_edge ], [ -12, %if.end.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_bo_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @amdgpu_ttm_tt_get_usermm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_bo_list_set(ptr noundef %list, ptr noundef %bo) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_list_set, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_bo_list_set, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !41
  %call42 = tail call i32 @__traceiter_amdgpu_bo_list_set(ptr noundef null, ptr noundef %list, ptr noundef %bo) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !42
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !37

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_list_set, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_bo_list_set, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_bo_list_set.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_amdgpu_bo_list_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 477, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_amdgpu_cs_bo_status(i64 noundef %total_bo, i64 noundef %total_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_bo_status, i32 0, i32 1), ptr blockaddress(@trace_amdgpu_cs_bo_status, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !40

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !37

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !45
  %call42 = tail call i32 @__traceiter_amdgpu_cs_bo_status(ptr noundef null, i64 noundef %total_bo, i64 noundef %total_size) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !46
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !37

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_bo_status, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_amdgpu_cs_bo_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_amdgpu_cs_bo_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_amdgpu_cs_bo_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 493, ptr noundef nonnull @.str.1) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #8
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
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_list_get(ptr noundef %fpriv, i32 noundef %id, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !47
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %bo_list_handles = getelementptr inbounds %struct.amdgpu_fpriv, ptr %fpriv, i32 0, i32 4
  %call = tail call ptr @idr_find(ptr noundef %bo_list_handles, i32 noundef %id) #8
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %result, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %refcount = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %7 = phi i32 [ %6, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %10, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !48
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !37

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %kref_get_unless_zero.exit.if.end_crit_edge, label %if.then

kref_get_unless_zero.exit.if.end_crit_edge:       ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %kref_get_unless_zero.exit
  %call.i5 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i5, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i8

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i8:                                 ; preds = %if.then
  %call1.i6 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i6)
  %tobool.not.i7 = icmp eq i32 %call1.i6, 0
  br i1 %tobool.not.i7, label %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i10

land.lhs.true.i8.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i10:                               ; preds = %land.lhs.true.i8
  %.b4.i9 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i9, label %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, label %if.then.i11

land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i11:                                      ; preds = %land.lhs.true2.i10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i11, %land.lhs.true2.i10.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i8.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  br label %return

if.end:                                           ; preds = %kref_get_unless_zero.exit.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i14 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i14, label %if.end.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true.i17

if.end.rcu_read_unlock.exit24_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit24

land.lhs.true.i17:                                ; preds = %if.end
  %call1.i15 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit24

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit24

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit24

rcu_read_unlock.exit24:                           ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit24_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit24_crit_edge, %if.end.rcu_read_unlock.exit24_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !49
  br label %return

return:                                           ; preds = %rcu_read_unlock.exit24, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -2, %rcu_read_unlock.exit24 ]
  %17 = call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i21 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i23 = add i32 %20, -1
  store volatile i32 %sub.i.i.i23, ptr %preempt_count.i.i.i.i22, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_list_get_list(ptr noundef %list, ptr noundef %validated) local_unnamed_addr #0 align 64 {
entry:
  %bucket = alloca [33 x %struct.list_head], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %bucket) #8
  %0 = call ptr @memset(ptr %bucket, i32 255, i32 264)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %i.034
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %i.034, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %prev.i, align 4
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %arrayidx.i = getelementptr %struct.amdgpu_bo_list, ptr %list, i32 1
  %num_entries = getelementptr inbounds %struct.amdgpu_bo_list, ptr %list, i32 0, i32 6
  %3 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_entries, align 4
  %arrayidx1.i35 = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %4
  %cmp3.not36 = icmp eq ptr %arrayidx.i, %arrayidx1.i35
  br i1 %cmp3.not36, label %for.end.for.body14.preheader_crit_edge, label %for.end.for.body4_crit_edge

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.end.for.body14.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.body4:                                        ; preds = %if.end.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %e.037 = phi ptr [ %incdec.ptr, %if.end.for.body4_crit_edge ], [ %arrayidx.i, %for.end.for.body4_crit_edge ]
  %bo5 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.037, i32 0, i32 1
  %5 = ptrtoint ptr %bo5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bo5, align 4
  %parent = getelementptr i8, ptr %6, i32 444
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body4
  %priority7 = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.037, i32 0, i32 3
  %9 = ptrtoint ptr %priority7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priority7, align 4
  %arrayidx9 = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %10
  %prev.i32 = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %10, i32 1
  %11 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i32, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %e.037, ptr noundef %12, ptr noundef %arrayidx9) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %e.037, ptr %prev.i32, align 4
  %14 = ptrtoint ptr %e.037 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx9, ptr %e.037, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %e.037, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %e.037, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %for.body4.if.end_crit_edge
  %user_pages = getelementptr inbounds %struct.amdgpu_bo_list_entry, ptr %e.037, i32 0, i32 4
  %17 = ptrtoint ptr %user_pages to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %user_pages, align 4
  %incdec.ptr = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.037, i32 1
  %18 = ptrtoint ptr %num_entries to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_entries, align 4
  %arrayidx1.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i, i32 %19
  %cmp3.not = icmp eq ptr %incdec.ptr, %arrayidx1.i
  br i1 %cmp3.not, label %if.end.for.body14.preheader_crit_edge, label %if.end.for.body4_crit_edge

if.end.for.body4_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

if.end.for.body14.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %if.end.for.body14.preheader_crit_edge, %for.end.for.body14.preheader_crit_edge
  br label %for.body14

for.body14:                                       ; preds = %list_splice.exit.for.body14_crit_edge, %for.body14.preheader
  %i.139 = phi i32 [ %inc17, %list_splice.exit.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %arrayidx15 = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %i.139
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx15, align 4
  %cmp.i.not.i = icmp eq ptr %21, %arrayidx15
  br i1 %cmp.i.not.i, label %for.body14.list_splice.exit_crit_edge, label %if.then.i

for.body14.list_splice.exit_crit_edge:            ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice.exit

if.then.i:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %validated to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %validated, align 4
  %prev2.i.i = getelementptr [33 x %struct.list_head], ptr %bucket, i32 0, i32 %i.139, i32 1
  %24 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i33 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %validated, ptr %prev3.i.i33, align 4
  store ptr %21, ptr %validated, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %25, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %for.body14.list_splice.exit_crit_edge
  %inc17 = add nuw nsw i32 %i.139, 1
  %exitcond41.not = icmp eq i32 %inc17, 33
  br i1 %exitcond41.not, label %for.end18, label %list_splice.exit.for.body14_crit_edge

list_splice.exit.for.body14_crit_edge:            ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end18:                                        ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %bucket) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_bo_list_put(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %bo.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.amdgpu_bo_list, ptr %list, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !37

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %arrayidx.i.i = getelementptr %struct.amdgpu_bo_list, ptr %list, i32 1
  %num_entries.i = getelementptr %struct.amdgpu_bo_list, ptr %list, i32 0, i32 6
  %1 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_entries.i, align 4
  %arrayidx1.i10.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i.i, i32 %2
  %cmp.not11.i = icmp eq ptr %arrayidx.i.i, %arrayidx1.i10.i
  br i1 %cmp.not11.i, label %if.then.i.amdgpu_bo_list_free.exit_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.amdgpu_bo_list_free.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_bo_list_free.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %e.012.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %arrayidx.i.i, %if.then.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i) #8
  %bo2.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.012.i, i32 0, i32 1
  %3 = ptrtoint ptr %bo2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bo2.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -72
  %5 = ptrtoint ptr %bo.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr.i.i, ptr %bo.i, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i) #8
  %incdec.ptr.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.012.i, i32 1
  %6 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_entries.i, align 4
  %arrayidx1.i.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i.i, i32 %7
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %arrayidx1.i.i
  br i1 %cmp.not.i, label %for.body.i.amdgpu_bo_list_free.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.amdgpu_bo_list_free.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_bo_list_free.exit

amdgpu_bo_list_free.exit:                         ; preds = %for.body.i.amdgpu_bo_list_free.exit_crit_edge, %if.then.i.amdgpu_bo_list_free.exit_crit_edge
  call void @call_rcu(ptr noundef %list, ptr noundef nonnull @amdgpu_bo_list_free_rcu) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %amdgpu_bo_list_free.exit, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_create_list_entry_array(ptr nocapture noundef readonly %in, ptr nocapture noundef writeonly %info_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bo_info_ptr = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %in, i32 0, i32 4
  %0 = ptrtoint ptr %bo_info_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bo_info_ptr, align 8
  %conv2 = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv2 to ptr
  %bo_number = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %in, i32 0, i32 2
  %3 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bo_number, align 8
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 8) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %entry.cleanup34_crit_edge, label %kvmalloc_array.exit, !prof !50

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

kvmalloc_array.exit:                              ; preds = %entry
  %7 = extractvalue { i32, i1 } %5, 0
  %call.i.i87 = tail call noalias ptr @kvmalloc_node(i32 noundef %7, i32 noundef 3264, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i87, null
  br i1 %tobool.not, label %kvmalloc_array.exit.cleanup34_crit_edge, label %if.end

kvmalloc_array.exit.cleanup34_crit_edge:          ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

if.end:                                           ; preds = %kvmalloc_array.exit
  %bo_info_size = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %in, i32 0, i32 3
  %8 = ptrtoint ptr %bo_info_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bo_info_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp3 = icmp eq i32 %9, 8
  br i1 %cmp3, label %if.then7, label %if.else, !prof !37

if.then7:                                         ; preds = %if.end
  %10 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bo_number, align 8
  %mul = shl i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then7
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.error_free_crit_edge, label %if.then27.i.i, !prof !37

land.rhs16.i.i.error_free_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %error_free

if.then.i.i.i:                                    ; preds = %if.then7
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i87, i32 noundef %mul, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %mul, i32 -1226833920) #12, !srcloc !51
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !37

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i87, i32 noundef %mul) #8
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !52
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i87, ptr noundef %2, i32 noundef %mul) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end33_crit_edge, label %if.then11.i.i, !prof !37

if.end.i.i.if.end33_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i87, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %error_free

if.else:                                          ; preds = %if.end
  %17 = tail call i32 @llvm.umin.i32(i32 %9, i32 8)
  %18 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bo_number, align 8
  %mul20 = shl i32 %19, 3
  %20 = call ptr @memset(ptr %call.i.i87, i32 0, i32 %mul20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp22105.not = icmp eq i32 %19, 0
  br i1 %cmp22105.not, label %if.else.if.end33_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %if.end27.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %uptr.0106 = phi ptr [ %add.ptr, %if.end27.for.body_crit_edge ], [ %2, %if.else.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.drm_amdgpu_bo_list_entry, ptr %call.i.i87, i32 %i.0108
  tail call void @__check_object_size(ptr noundef %arrayidx, i32 noundef %17, i1 noundef zeroext false) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #8
  %call.i.i67 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i67, label %for.body.if.end.i.i81_crit_edge, label %land.lhs.true.i.i71

for.body.if.end.i.i81_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i81

land.lhs.true.i.i71:                              ; preds = %for.body
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uptr.0106, i32 %17, i32 -1226833920) #12, !srcloc !51
  %asmresult.i.i69 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i69)
  %cmp.i6.i70 = icmp eq i32 %asmresult.i.i69, 0
  br i1 %cmp.i6.i70, label %if.then.i7.i78, label %land.lhs.true.i.i71.if.end.i.i81_crit_edge, !prof !37

land.lhs.true.i.i71.if.end.i.i81_crit_edge:       ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i81

if.then.i7.i78:                                   ; preds = %land.lhs.true.i.i71
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef %17) #8
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %and.i.i.i.i.i.i73 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i73 to ptr
  %cpu_domain.i.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i74) #5, !srcloc !52
  %and.i.i.i.i75 = and i32 %24, -13
  %or.i.i.i.i76 = or i32 %and.i.i.i.i75, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i76) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %call1.i.i.i77 = tail call i32 @arm_copy_from_user(ptr noundef %arrayidx, ptr noundef %uptr.0106, i32 noundef %17) #8
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  br label %if.end.i.i81

if.end.i.i81:                                     ; preds = %if.then.i7.i78, %land.lhs.true.i.i71.if.end.i.i81_crit_edge, %for.body.if.end.i.i81_crit_edge
  %res.0.i.i79 = phi i32 [ %17, %for.body.if.end.i.i81_crit_edge ], [ %call1.i.i.i77, %if.then.i7.i78 ], [ %17, %land.lhs.true.i.i71.if.end.i.i81_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i79)
  %tobool4.not.i.i80 = icmp eq i32 %res.0.i.i79, 0
  br i1 %tobool4.not.i.i80, label %if.end27, label %if.then11.i.i84, !prof !37

if.then11.i.i84:                                  ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i82 = sub i32 %17, %res.0.i.i79
  %add.ptr.i.i83 = getelementptr i8, ptr %arrayidx, i32 %sub.i.i82
  %25 = call ptr @memset(ptr %add.ptr.i.i83, i32 0, i32 %res.0.i.i79)
  br label %error_free

if.end27:                                         ; preds = %if.end.i.i81
  %26 = ptrtoint ptr %bo_info_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bo_info_size, align 4
  %add.ptr = getelementptr i8, ptr %uptr.0106, i32 %27
  %inc = add nuw i32 %i.0108, 1
  %28 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bo_number, align 8
  %cmp22 = icmp ult i32 %inc, %29
  br i1 %cmp22, label %if.end27.for.body_crit_edge, label %if.end27.if.end33_crit_edge

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %if.else.if.end33_crit_edge, %if.end.i.i.if.end33_crit_edge
  %30 = ptrtoint ptr %info_param to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i87, ptr %info_param, align 4
  br label %cleanup34

error_free:                                       ; preds = %if.then11.i.i84, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.error_free_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i87) #8
  br label %cleanup34

cleanup34:                                        ; preds = %error_free, %if.end33, %kvmalloc_array.exit.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ -14, %error_free ], [ 0, %if.end33 ], [ -12, %kvmalloc_array.exit.cleanup34_crit_edge ], [ -12, %entry.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_bo_list_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %bo.i.i = alloca ptr, align 4
  %info = alloca ptr, align 4
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv, align 4
  %list_handle = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %list_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %list_handle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list) #8
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !55
  %call1 = call i32 @amdgpu_bo_create_list_entry_array(ptr noundef %data, ptr noundef nonnull %info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.error_free_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb11
  ]

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

sw.bb:                                            ; preds = %if.end
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %bo_number = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %bo_number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bo_number, align 8
  %call2 = call i32 @amdgpu_bo_list_create(ptr undef, ptr noundef %filp, ptr noundef %10, i32 noundef %12, ptr noundef nonnull %list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb.error_free_crit_edge

sw.bb.error_free_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end5:                                          ; preds = %sw.bb
  %bo_list_lock = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bo_list_lock, i32 noundef 0) #8
  %bo_list_handles = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %call6 = tail call i32 @idr_alloc(ptr noundef %bo_list_handles, ptr noundef %14, i32 noundef 1, i32 noundef 0, i32 noundef 3264) #8
  tail call void @mutex_unlock(ptr noundef %bo_list_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.error_put_list_crit_edge, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end5.error_put_list_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put_list

sw.bb10:                                          ; preds = %if.end
  %bo_list_lock.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bo_list_lock.i, i32 noundef 0) #8
  %bo_list_handles.i = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 4
  %call.i = tail call ptr @idr_remove(ptr noundef %bo_list_handles.i, i32 noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %bo_list_lock.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb10.sw.epilog_crit_edge, label %if.then.i

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb10
  %refcount.i = getelementptr inbounds %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 1
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !36
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i.i, !prof !37

if.end5.i.i.i.i.i.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %arrayidx.i.i.i = getelementptr %struct.amdgpu_bo_list, ptr %call.i, i32 1
  %num_entries.i.i = getelementptr %struct.amdgpu_bo_list, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_entries.i.i, align 4
  %arrayidx1.i10.i.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i.i.i, i32 %17
  %cmp.not11.i.i = icmp eq ptr %arrayidx.i.i.i, %arrayidx1.i10.i.i
  br i1 %cmp.not11.i.i, label %if.then.i.i.amdgpu_bo_list_free.exit.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.amdgpu_bo_list_free.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_bo_list_free.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %e.012.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %arrayidx.i.i.i, %if.then.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bo.i.i) #8
  %bo2.i.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %e.012.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %bo2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bo2.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 -72
  %20 = ptrtoint ptr %bo.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i.i.i, ptr %bo.i.i, align 4
  call void @amdgpu_bo_unref(ptr noundef nonnull %bo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bo.i.i) #8
  %incdec.ptr.i.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %e.012.i.i, i32 1
  %21 = ptrtoint ptr %num_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_entries.i.i, align 4
  %arrayidx1.i.i.i = getelementptr %struct.amdgpu_bo_list_entry, ptr %arrayidx.i.i.i, i32 %22
  %cmp.not.i.i = icmp eq ptr %incdec.ptr.i.i, %arrayidx1.i.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.amdgpu_bo_list_free.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.amdgpu_bo_list_free.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %amdgpu_bo_list_free.exit.i

amdgpu_bo_list_free.exit.i:                       ; preds = %for.body.i.i.amdgpu_bo_list_free.exit.i_crit_edge, %if.then.i.i.amdgpu_bo_list_free.exit.i_crit_edge
  call void @call_rcu(ptr noundef nonnull %call.i, ptr noundef nonnull @amdgpu_bo_list_free_rcu) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  %bo_number12 = getelementptr inbounds %struct.drm_amdgpu_bo_list_in, ptr %data, i32 0, i32 2
  %25 = ptrtoint ptr %bo_number12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bo_number12, align 8
  %call13 = call i32 @amdgpu_bo_list_create(ptr undef, ptr noundef %filp, ptr noundef %24, i32 noundef %26, ptr noundef nonnull %list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %sw.bb11.error_free_crit_edge

sw.bb11.error_free_crit_edge:                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free

if.end16:                                         ; preds = %sw.bb11
  %bo_list_lock17 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bo_list_lock17, i32 noundef 0) #8
  %bo_list_handles18 = getelementptr inbounds %struct.amdgpu_fpriv, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %call19 = tail call ptr @idr_replace(ptr noundef %bo_list_handles18, ptr noundef %28, i32 noundef %3) #8
  tail call void @mutex_unlock(ptr noundef %bo_list_lock17) #8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call19 to i32
  br label %error_put_list

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @amdgpu_bo_list_put(ptr noundef %call19)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24, %amdgpu_bo_list_free.exit.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge
  %handle.0 = phi i32 [ %3, %if.end24 ], [ %call6, %if.end5.sw.epilog_crit_edge ], [ 0, %sw.bb10.sw.epilog_crit_edge ], [ 0, %if.end5.i.i.i.i.i.sw.epilog_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %amdgpu_bo_list_free.exit.i ]
  %30 = call ptr @memset(ptr %data, i32 0, i32 24)
  %31 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %handle.0, ptr %data, align 8
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  call void @kvfree(ptr noundef %33) #8
  br label %cleanup

error_put_list:                                   ; preds = %if.then22, %if.end5.error_put_list_crit_edge
  %r.0 = phi i32 [ %29, %if.then22 ], [ %call6, %if.end5.error_put_list_crit_edge ]
  %34 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list, align 4
  tail call void @amdgpu_bo_list_put(ptr noundef %35)
  br label %error_free

error_free:                                       ; preds = %error_put_list, %sw.bb11.error_free_crit_edge, %sw.bb.error_free_crit_edge, %if.end.error_free_crit_edge
  %r.1 = phi i32 [ %call13, %sw.bb11.error_free_crit_edge ], [ %r.0, %error_put_list ], [ %call2, %sw.bb.error_free_crit_edge ], [ -22, %if.end.error_free_crit_edge ]
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  tail call void @kvfree(ptr noundef %37) #8
  br label %cleanup

cleanup:                                          ; preds = %error_free, %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %error_free ], [ 0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_bo_list_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_amdgpu_cs_bo_status(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amdgpu_bo_list_free_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %rcu) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__already_done", i1 false, i1 false}
!2 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 459, i32 1}
!3 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !2, !"__warned", i1 false, i1 false}
!5 = !{ptr @.str.1, !2, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_trace.h", i32 479, i32 1}
!11 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148539539}
!36 = !{i64 2148454003, i64 2148454035, i64 2148454064, i64 2148454098, i64 2148454129, i64 2148454152}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2149575262}
!39 = distinct !{null, ptr @drm_gem_object_free}
!40 = !{i64 2148263401, i64 2148263406, i64 2148263419, i64 2148263463, i64 2148263497, i64 2148263518}
!41 = !{i64 2159109256}
!42 = !{i64 2159109471}
!43 = !{i64 2149275834}
!44 = !{i64 2149276870}
!45 = !{i64 2159130206}
!46 = !{i64 2159130447}
!47 = !{i64 2149267275}
!48 = !{i64 935521, i64 935545, i64 935566, i64 935583, i64 935600}
!49 = !{i64 2149267541}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2150504708, i64 2150504733}
!52 = !{i64 3000263}
!53 = !{i64 3000460}
!54 = !{i64 2150485693}
!55 = !{!"auto-init"}
