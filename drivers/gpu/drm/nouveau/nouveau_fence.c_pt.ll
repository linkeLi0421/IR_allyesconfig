; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.83 }
%struct.atomic_t = type { i32 }
%union.anon.83 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nouveau_fence = type { %struct.dma_fence, %struct.list_head, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.2, i64, i64, i32, %struct.kref, i32 }
%union.anon.2 = type { i64 }
%struct.nvif_notify_uevent_req = type {}
%struct.nouveau_channel = type { %struct.anon.3, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.113, i8, ptr, %struct.anon.114, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.3 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.113 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.4 }
%struct.anon.4 = type { ptr, i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.95, %struct.anon.96, %struct.anon.98, ptr, %struct.anon.99, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.100, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.112 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.95 = type { ptr, i32, i32, i8 }
%struct.anon.96 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.98 = type { i64, i64 }
%struct.anon.99 = type { i32, i64 }
%struct.anon.100 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.101, i8 }
%union.anon.101 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.107 = type { i32 }
%struct.anon.108 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i16, i16, i16, %struct.anon.111, i16 }
%struct.anon.111 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.112 = type { ptr, %struct.mutex, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon = type { [16 x i8], %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }

@nouveau_fence_context_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&fctx->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"copy engine channel\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"generic kernel channel\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fenceNonStallIntr\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_fence.c\00", [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nouveau_fence_ops_uevent = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @nouveau_fence_get_get_driver_name, ptr @nouveau_fence_get_timeline_name, ptr @nouveau_fence_enable_signaling, ptr @nouveau_fence_is_signaled, ptr null, ptr @nouveau_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nouveau_fence_ops_legacy = internal constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @nouveau_fence_get_get_driver_name, ptr @nouveau_fence_get_timeline_name, ptr @nouveau_fence_no_signaling, ptr @nouveau_fence_is_signaled, ptr @nouveau_fence_wait_legacy, ptr @nouveau_fence_release, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@nouveau_fence_done.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@nouveau_fence_sync.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dma-fence.h\00", [38 x i8] zeroinitializer }, align 32
@nouveau_fence_wait_uevent_handler.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dma_fence_emit = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"include/trace/events/dma_fence.h\00", [63 x i8] zeroinitializer }, align 32
@trace_dma_fence_emit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dead channel\00", [19 x i8] zeroinitializer }, align 32
@nouveau_fence_is_signaled.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 184, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 188, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 190, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 198, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 206, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [25 x i8] c"nouveau_fence_ops_uevent\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 518, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"nouveau_fence_ops_legacy\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 491, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 256, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 374, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant [29 x i8] c"../include/linux/dma-fence.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 545, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [36 x i8] c"../include/trace/events/dma_fence.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 37, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 695, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 723, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 424, i32 9 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nouveau_fence.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 432, i32 36 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @nouveau_fence_context_new.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nouveau_fence_ops_uevent, ptr @nouveau_fence_ops_legacy, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fence_context_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fence_ops_uevent to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_fence_ops_legacy to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_kill(ptr noundef %fctx, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %fctx) #11
  %pending = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 2
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not15 = icmp eq ptr %1, %pending
  br i1 %cmp.i.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool2.not = icmp eq i32 %error, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %error)
  %2 = icmp ult i32 %error, -4095
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %3 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %if.end7.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %3, i32 -48
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  %flags.i = getelementptr i8, ptr %3, i32 -16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i, !prof !65

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 545, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  br i1 %2, label %do.end37.i, label %if.end.i.dma_fence_set_error.exit_crit_edge, !prof !66

if.end.i.dma_fence_set_error.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_set_error.exit

do.end37.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 546, i32 noundef 9, ptr noundef null) #11
  br label %dma_fence_set_error.exit

dma_fence_set_error.exit:                         ; preds = %do.end37.i, %if.end.i.dma_fence_set_error.exit_crit_edge
  %error51.i = getelementptr i8, ptr %3, i32 -8
  %6 = ptrtoint ptr %error51.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %error, ptr %error51.i, align 8
  br label %if.end

if.end:                                           ; preds = %dma_fence_set_error.exit, %while.body.if.end_crit_edge
  %call3 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @nvif_notify_put(ptr noundef %notify) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %8, %pending
  br i1 %cmp.i.not, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %fctx) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_fence_signal(ptr noundef %fence) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dma_fence_signal_locked(ptr noundef %fence) #11
  %head = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 2
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr null, ptr %channel, align 8
  %flags = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %list_del.exit.if.end39_crit_edge, label %if.then34

list_del.exit.if.end39_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then34:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fence, align 8
  %notify_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %notify_ref to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %notify_ref, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %notify_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool36.not = icmp eq i32 %dec, 0
  %spec.select = zext i1 %tobool36.not to i32
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %list_del.exit.if.end39_crit_edge
  %drop.1 = phi i32 [ %spec.select, %if.then34 ], [ 0, %list_del.exit.if.end39_crit_edge ]
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %if.end39.dma_fence_put.exit_crit_edge, label %if.then.i

if.end39.dma_fence_put.exit_crit_edge:            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit

if.then.i:                                        ; preds = %if.end39
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %dma_fence_put.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount.i) #11, !callees !70
  br label %dma_fence_put.exit

dma_fence_put.exit:                               ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.dma_fence_put.exit_crit_edge, %if.end39.dma_fence_put.exit_crit_edge
  ret i32 %drop.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_del(ptr noundef %fctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef %fctx) #11
  %pending.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 2
  %0 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not15.i = icmp eq ptr %1, %pending.i
  br i1 %cmp.i.not15.i, label %entry.nouveau_fence_context_kill.exit_crit_edge, label %while.body.lr.ph.i

entry.nouveau_fence_context_kill.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_context_kill.exit

while.body.lr.ph.i:                               ; preds = %entry
  %notify.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %4, %if.end7.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -48
  %call3.i = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %while.body.i.if.end7.i_crit_edge, label %if.then5.i

while.body.i.if.end7.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then5.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @nvif_notify_put(ptr noundef %notify.i) #11
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %while.body.i.if.end7.i_crit_edge
  %3 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %pending.i
  br i1 %cmp.i.not.i, label %if.end7.i.nouveau_fence_context_kill.exit_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end7.i.nouveau_fence_context_kill.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_context_kill.exit

nouveau_fence_context_kill.exit:                  ; preds = %if.end7.i.nouveau_fence_context_kill.exit_crit_edge, %entry.nouveau_fence_context_kill.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %fctx) #11
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 12
  %call = tail call i32 @nvif_notify_dtor(ptr noundef %notify) #11
  %dead = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 14
  %5 = ptrtoint ptr %dead to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %dead, align 4
  tail call void @synchronize_rcu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_free(ptr noundef %fctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fence_ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %fence_ref, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_ref, ptr %fence_ref, i32 1, ptr elementtype(i32) %fence_ref) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !65

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %fence_ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @kfree(ptr noundef %fctx) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_new(ptr noundef %chan, ptr noundef %fctx) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvif_notify_uevent_req, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm, align 4
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17
  %client = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %flip = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 3
  %6 = ptrtoint ptr %flip to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %flip, ptr %flip, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %flip, ptr %prev.i, align 4
  %pending = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 2
  %8 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i72 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev.i72 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pending, ptr %prev.i72, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %fctx, ptr noundef nonnull @.str, ptr noundef nonnull @nouveau_fence_context_new.__key, i16 noundef signext 3) #11
  %10 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm, align 4
  %context_base = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %context_base to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %context_base, align 8
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 4
  %14 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chid, align 4
  %16 = trunc i64 %13 to i32
  %conv3 = add i32 %15, %16
  %context = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 10
  %17 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv3, ptr %context, align 4
  %18 = load ptr, ptr %drm, align 4
  %cechan = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %cechan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cechan, align 8
  %cmp = icmp eq ptr %20, %chan
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 11
  %21 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 20)
  br label %if.end21

if.else:                                          ; preds = %entry
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 13
  %22 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel, align 4
  %cmp8 = icmp eq ptr %23, %chan
  %name11 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 11
  br i1 %cmp8, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %24 = call ptr @memcpy(ptr %name11, ptr @.str.2, i32 23)
  br label %if.end21

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %priv17 = getelementptr inbounds %struct.nvif_object, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %priv17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv17, align 4
  %name18 = getelementptr inbounds %struct.nvkm_client, ptr %26, i32 0, i32 1
  %call20 = tail call ptr @strcpy(ptr noundef %name11, ptr noundef %name18) #14
  br label %if.end21

if.end21:                                         ; preds = %if.else14, %if.then10, %if.then
  %fence_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fence_ref, i32 noundef 4) #11
  %27 = ptrtoint ptr %fence_ref to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %fence_ref, align 4
  %uevent = getelementptr inbounds %struct.nouveau_fence_priv, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %uevent to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %uevent, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.end23

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end23:                                         ; preds = %if.end21
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %fctx, i32 0, i32 12
  %call25 = call i32 @nvif_notify_ctor(ptr noundef %user, ptr noundef nonnull @.str.3, ptr noundef nonnull @nouveau_fence_wait_uevent_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral, i32 noundef 0, i32 noundef 0, ptr noundef %notify) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %do.end38, !prof !65

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end38:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 206, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end23.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fence_wait_uevent_handler(ptr noundef %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify, i32 -124
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #11
  %pending = getelementptr i8, ptr %notify, i32 -76
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %1, %pending
  br i1 %cmp.i.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then:                                          ; preds = %entry
  %dep_map = getelementptr i8, ptr %notify, i32 -108
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.then.do.end21_crit_edge

if.then.do.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

land.lhs.true:                                    ; preds = %if.then
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true17

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b34 = load i1, ptr @nouveau_fence_wait_uevent_handler.__warned, align 1
  br i1 %.b34, label %land.lhs.true17.do.end21_crit_edge, label %if.then19

land.lhs.true17.do.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nouveau_fence_wait_uevent_handler.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 166, ptr noundef nonnull @.str.5) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then19, %land.lhs.true17.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %if.then.do.end21_crit_edge
  %channel = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 8
  %read.i = getelementptr i8, ptr %notify, i32 -52
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i35 = tail call i32 %5(ptr noundef %3) #11
  %6 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not10.i = icmp eq ptr %7, %pending
  br i1 %cmp.i.not10.i, label %do.end21.nouveau_fence_update.exit.thread_crit_edge, label %do.end21.while.body.i_crit_edge

do.end21.while.body.i_crit_edge:                  ; preds = %do.end21
  br label %while.body.i

do.end21.nouveau_fence_update.exit.thread_crit_edge: ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit.thread

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.end21.while.body.i_crit_edge
  %8 = phi ptr [ %13, %if.end.i.while.body.i_crit_edge ], [ %7, %do.end21.while.body.i_crit_edge ]
  %drop.011.i = phi i32 [ %or.i, %if.end.i.while.body.i_crit_edge ], [ 0, %do.end21.while.body.i_crit_edge ]
  %seqno.i = getelementptr i8, ptr %8, i32 -24
  %9 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %seqno.i, align 8
  %11 = trunc i64 %10 to i32
  %conv3.i = sub i32 %call.i35, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i36 = icmp slt i32 %conv3.i, 0
  br i1 %cmp.i36, label %while.body.i.nouveau_fence_update.exit_crit_edge, label %if.end.i

while.body.i.nouveau_fence_update.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %8, i32 -48
  %call5.i = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %add.ptr.i) #11
  %or.i = or i32 %call5.i, %drop.011.i
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %13, %pending
  br i1 %cmp.i.not.i, label %if.end.i.nouveau_fence_update.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.nouveau_fence_update.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

nouveau_fence_update.exit:                        ; preds = %if.end.i.nouveau_fence_update.exit_crit_edge, %while.body.i.nouveau_fence_update.exit_crit_edge
  %drop.0.lcssa.i = phi i32 [ %drop.011.i, %while.body.i.nouveau_fence_update.exit_crit_edge ], [ %or.i, %if.end.i.nouveau_fence_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0.lcssa.i)
  %tobool24.not = icmp eq i32 %drop.0.lcssa.i, 0
  br i1 %tobool24.not, label %nouveau_fence_update.exit.nouveau_fence_update.exit.thread_crit_edge, label %nouveau_fence_update.exit.if.end27_crit_edge

nouveau_fence_update.exit.if.end27_crit_edge:     ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

nouveau_fence_update.exit.nouveau_fence_update.exit.thread_crit_edge: ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit.thread

nouveau_fence_update.exit.thread:                 ; preds = %nouveau_fence_update.exit.nouveau_fence_update.exit.thread_crit_edge, %do.end21.nouveau_fence_update.exit.thread_crit_edge
  br label %if.end27

if.end27:                                         ; preds = %nouveau_fence_update.exit.thread, %nouveau_fence_update.exit.if.end27_crit_edge, %entry.if.end27_crit_edge
  %ret.1 = phi i32 [ 1, %entry.if.end27_crit_edge ], [ 1, %nouveau_fence_update.exit.thread ], [ 0, %nouveau_fence_update.exit.if.end27_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call3) #11
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_emit(ptr noundef %fence, ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence1, align 4
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 4
  %fence2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %fence2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence2, align 8
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %chan, ptr %channel, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 1500
  %timeout = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 3
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %timeout, align 4
  %uevent = getelementptr inbounds %struct.nouveau_fence_priv, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %uevent to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %uevent, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %context6 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %context6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %context6, align 4
  %conv7 = zext i32 %12 to i64
  %sequence8 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %sequence8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sequence8, align 4
  %inc9 = add i32 %14, 1
  store i32 %inc9, ptr %sequence8, align 4
  %conv10 = zext i32 %inc9 to i64
  %nouveau_fence_ops_legacy.nouveau_fence_ops_uevent = select i1 %tobool.not, ptr @nouveau_fence_ops_legacy, ptr @nouveau_fence_ops_uevent
  tail call void @dma_fence_init(ptr noundef %fence, ptr noundef nonnull %nouveau_fence_ops_legacy.nouveau_fence_ops_uevent, ptr noundef %1, i64 noundef %conv7, i64 noundef %conv10) #11
  %fence_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fence_ref, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %fence_ref, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_ref, ptr %fence_ref, i32 1, ptr elementtype(i32) %fence_ref) #11, !srcloc !72
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !66

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fence_ref, i32 noundef %.sink.i.i.i.i) #11
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call fastcc void @trace_dma_fence_emit(ptr noundef %fence)
  %emit = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %emit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %emit, align 4
  %call = tail call i32 %18(ptr noundef %fence) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.then13, label %kref_get.exit.if.end23_crit_edge

kref_get.exit.if.end23_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then13:                                        ; preds = %kref_get.exit
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %if.then13.dma_fence_get.exit_crit_edge, label %if.then.i

if.then13.dma_fence_get.exit_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %if.then13
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !72
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !66

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !65

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %if.then13.dma_fence_get.exit_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %1) #11
  %read.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read.i, align 4
  %call.i = tail call i32 %22(ptr noundef %chan) #11
  %pending.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not10.i = icmp eq ptr %24, %pending.i
  br i1 %cmp.i.not10.i, label %dma_fence_get.exit.if.end21_crit_edge, label %dma_fence_get.exit.while.body.i_crit_edge

dma_fence_get.exit.while.body.i_crit_edge:        ; preds = %dma_fence_get.exit
  br label %while.body.i

dma_fence_get.exit.if.end21_crit_edge:            ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %dma_fence_get.exit.while.body.i_crit_edge
  %25 = phi ptr [ %30, %if.end.i.while.body.i_crit_edge ], [ %24, %dma_fence_get.exit.while.body.i_crit_edge ]
  %drop.011.i = phi i32 [ %or.i, %if.end.i.while.body.i_crit_edge ], [ 0, %dma_fence_get.exit.while.body.i_crit_edge ]
  %seqno.i = getelementptr i8, ptr %25, i32 -24
  %26 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %seqno.i, align 8
  %28 = trunc i64 %27 to i32
  %conv3.i = sub i32 %call.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i = icmp slt i32 %conv3.i, 0
  br i1 %cmp.i, label %while.body.i.nouveau_fence_update.exit_crit_edge, label %if.end.i

while.body.i.nouveau_fence_update.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %25, i32 -48
  %call5.i = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %add.ptr.i) #11
  %or.i = or i32 %call5.i, %drop.011.i
  %29 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %30, %pending.i
  br i1 %cmp.i.not.i, label %if.end.i.nouveau_fence_update.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.nouveau_fence_update.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

nouveau_fence_update.exit:                        ; preds = %if.end.i.nouveau_fence_update.exit_crit_edge, %while.body.i.nouveau_fence_update.exit_crit_edge
  %drop.0.lcssa.i = phi i32 [ %drop.011.i, %while.body.i.nouveau_fence_update.exit_crit_edge ], [ %or.i, %if.end.i.nouveau_fence_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0.lcssa.i)
  %tobool18.not = icmp eq i32 %drop.0.lcssa.i, 0
  br i1 %tobool18.not, label %nouveau_fence_update.exit.if.end21_crit_edge, label %if.then19

nouveau_fence_update.exit.if.end21_crit_edge:     ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 12
  %call20 = tail call i32 @nvif_notify_put(ptr noundef %notify) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %nouveau_fence_update.exit.if.end21_crit_edge, %dma_fence_get.exit.if.end21_crit_edge
  %head = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %32, ptr noundef %pending.i) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add_tail.exit_crit_edge

if.end21.list_add_tail.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %prev.i, align 4
  %34 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %pending.i, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %head, ptr %32, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end21.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %1) #11
  br label %if.end23

if.end23:                                         ; preds = %list_add_tail.exit, %kref_get.exit.if.end23_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dma_fence_emit(ptr noundef %fence) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 1), ptr blockaddress(@trace_dma_fence_emit, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !73

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !65

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %call42 = tail call i32 @__traceiter_dma_fence_emit(ptr noundef null, ptr noundef %fence) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !65

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dma_fence_emit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_dma_fence_emit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 42, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_fence_done(ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @nouveau_fence_ops_legacy
  %cmp3 = icmp eq ptr %1, @nouveau_fence_ops_uevent
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.then, label %entry.if.end37_crit_edge

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 8
  %flags5 = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags5, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %do.body8, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body8:                                         ; preds = %if.then
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %dep_map = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %land.lhs.true, label %do.body8.do.end25_crit_edge

do.body8.do.end25_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

land.lhs.true:                                    ; preds = %do.body8
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true.do.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true
  %.b51 = load i1, ptr @nouveau_fence_done.__warned, align 1
  br i1 %.b51, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nouveau_fence_done.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 256, ptr noundef nonnull @.str.5) #11
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true.do.end25_crit_edge, %do.body8.do.end25_crit_edge
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel, align 8
  %tobool27.not = icmp eq ptr %7, null
  br i1 %tobool27.not, label %do.end25.if.end37.sink.split_crit_edge, label %land.lhs.true28

do.end25.if.end37.sink.split_crit_edge:           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

land.lhs.true28:                                  ; preds = %do.end25
  %read.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %call.i52 = tail call i32 %9(ptr noundef nonnull %7) #11
  %pending.i = getelementptr inbounds %struct.nouveau_fence_chan, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not10.i = icmp eq ptr %11, %pending.i
  br i1 %cmp.i.not10.i, label %land.lhs.true28.if.end37.sink.split_crit_edge, label %land.lhs.true28.while.body.i_crit_edge

land.lhs.true28.while.body.i_crit_edge:           ; preds = %land.lhs.true28
  br label %while.body.i

land.lhs.true28.if.end37.sink.split_crit_edge:    ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %land.lhs.true28.while.body.i_crit_edge
  %12 = phi ptr [ %17, %if.end.i.while.body.i_crit_edge ], [ %11, %land.lhs.true28.while.body.i_crit_edge ]
  %drop.011.i = phi i32 [ %or.i, %if.end.i.while.body.i_crit_edge ], [ 0, %land.lhs.true28.while.body.i_crit_edge ]
  %seqno.i = getelementptr i8, ptr %12, i32 -24
  %13 = ptrtoint ptr %seqno.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %seqno.i, align 8
  %15 = trunc i64 %14 to i32
  %conv3.i = sub i32 %call.i52, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i = icmp slt i32 %conv3.i, 0
  br i1 %cmp.i, label %while.body.i.nouveau_fence_update.exit_crit_edge, label %if.end.i

while.body.i.nouveau_fence_update.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

if.end.i:                                         ; preds = %while.body.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 -48
  %call5.i = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %add.ptr.i) #11
  %or.i = or i32 %call5.i, %drop.011.i
  %16 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %pending.i
  br i1 %cmp.i.not.i, label %if.end.i.nouveau_fence_update.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.nouveau_fence_update.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_fence_update.exit

nouveau_fence_update.exit:                        ; preds = %if.end.i.nouveau_fence_update.exit_crit_edge, %while.body.i.nouveau_fence_update.exit_crit_edge
  %drop.0.lcssa.i = phi i32 [ %drop.011.i, %while.body.i.nouveau_fence_update.exit_crit_edge ], [ %or.i, %if.end.i.nouveau_fence_update.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop.0.lcssa.i)
  %tobool30.not = icmp eq i32 %drop.0.lcssa.i, 0
  br i1 %tobool30.not, label %nouveau_fence_update.exit.if.end37.sink.split_crit_edge, label %if.then31

nouveau_fence_update.exit.if.end37.sink.split_crit_edge: ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.sink.split

if.then31:                                        ; preds = %nouveau_fence_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %3, i32 0, i32 12
  %call32 = tail call i32 @nvif_notify_put(ptr noundef %notify) #11
  br label %if.end37.sink.split

if.end37.sink.split:                              ; preds = %if.then31, %nouveau_fence_update.exit.if.end37.sink.split_crit_edge, %land.lhs.true28.if.end37.sink.split_crit_edge, %do.end25.if.end37.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call11) #11
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %entry.if.end37_crit_edge
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 5
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i53, label %if.end37.return_crit_edge

if.end37.return_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i53:                                       ; preds = %if.end37
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %signaled.i = getelementptr inbounds %struct.dma_fence_ops, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %signaled.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %signaled.i, align 4
  %tobool1.not.i = icmp eq ptr %23, null
  br i1 %tobool1.not.i, label %if.end.i53.return_crit_edge, label %land.lhs.true.i

if.end.i53.return_crit_edge:                      ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.lhs.true.i:                                  ; preds = %if.end.i53
  %call4.i = tail call zeroext i1 %23(ptr noundef %fence) #11
  br i1 %call4.i, label %if.then5.i, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 @dma_fence_signal(ptr noundef %fence) #11
  br label %return

return:                                           ; preds = %if.then5.i, %land.lhs.true.i.return_crit_edge, %if.end.i53.return_crit_edge, %if.end37.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i1 [ true, %if.then5.i ], [ true, %if.end37.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ], [ false, %if.end.i53.return_crit_edge ], [ true, %if.then.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_wait(ptr noundef %fence, i1 noundef zeroext %lazy, i1 noundef zeroext %intr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %lazy, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @nouveau_fence_wait_busy(ptr noundef %fence, i1 noundef zeroext %intr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @dma_fence_wait_timeout(ptr noundef %fence, i1 noundef zeroext %intr, i32 noundef 1500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  %. = select i1 %tobool6.not, i32 -16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call4, %if.end.cleanup_crit_edge ], [ %., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_fence_wait_busy(ptr noundef %fence, i1 noundef zeroext %intr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call150 = tail call zeroext i1 @nouveau_fence_done(ptr noundef %fence)
  br i1 %call150, label %entry.__here119_crit_edge, label %while.body.lr.ph

entry.__here119_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here119

while.body.lr.ph:                                 ; preds = %entry
  %timeout = getelementptr inbounds %struct.nouveau_fence, ptr %fence, i32 0, i32 3
  %cond = select i1 %intr, i32 1, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end68.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %timeout, align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %while.body.__here119_crit_edge, label %__here

while.body.__here119_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here119

__here:                                           ; preds = %while.body
  %3 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@nouveau_fence_wait_busy, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %cond, ptr %8, align 128
  br i1 %intr, label %land.lhs.true, label %__here.if.end68_crit_edge

__here.if.end68_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true:                                    ; preds = %__here
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true.__here119_crit_edge, !prof !65

land.lhs.true.__here119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here119

signal_pending.exit:                              ; preds = %land.lhs.true
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %13, align 4
  %and1.i.i.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool66.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool66.not, label %signal_pending.exit.if.end68_crit_edge, label %signal_pending.exit.__here119_crit_edge

signal_pending.exit.__here119_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here119

signal_pending.exit.if.end68_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.end68:                                         ; preds = %signal_pending.exit.if.end68_crit_edge, %__here.if.end68_crit_edge
  %call = tail call zeroext i1 @nouveau_fence_done(ptr noundef %fence)
  br i1 %call, label %if.end68.__here119_crit_edge, label %if.end68.while.body_crit_edge

if.end68.while.body_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end68.__here119_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here119

__here119:                                        ; preds = %if.end68.__here119_crit_edge, %signal_pending.exit.__here119_crit_edge, %land.lhs.true.__here119_crit_edge, %while.body.__here119_crit_edge, %entry.__here119_crit_edge
  %ret.0 = phi i32 [ 0, %entry.__here119_crit_edge ], [ -512, %land.lhs.true.__here119_crit_edge ], [ 0, %if.end68.__here119_crit_edge ], [ -16, %while.body.__here119_crit_edge ], [ -512, %signal_pending.exit.__here119_crit_edge ]
  %19 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i147 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i147 to ptr
  %task122 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %task122 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task122, align 8
  %task_state_change123 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change123 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@nouveau_fence_wait_busy, %__here119) to i32), ptr %task_state_change123, align 4
  %24 = load ptr, ptr %task122, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %24, align 128
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_sync(ptr nocapture noundef readonly %nvbo, ptr noundef %chan, i1 noundef zeroext %exclusive, i1 noundef zeroext %intr) local_unnamed_addr #0 align 64 {
entry:
  %cursor = alloca %struct.dma_resv_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  %resv2 = getelementptr inbounds %struct.drm_gem_object, ptr %nvbo, i32 0, i32 9
  %2 = ptrtoint ptr %resv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv2, align 8
  br i1 %exclusive, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @dma_resv_reserve_shared(ptr noundef %3, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup59_crit_edge

if.then.cleanup59_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %frombool.i = zext i1 %exclusive to i8
  %all_fences2.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 1
  %fence.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 2
  %index.i = getelementptr inbounds %struct.dma_resv_iter, ptr %cursor, i32 0, i32 4
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %sync = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds i8, ptr %cursor, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup53.thread.for.body_crit_edge, %if.end5
  %i.0116 = phi i32 [ 0, %if.end5 ], [ %inc, %cleanup53.thread.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor) #11
  %5 = call ptr @memset(ptr %4, i32 255, i32 28)
  %6 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %cursor, align 4
  %7 = ptrtoint ptr %all_fences2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool.i, ptr %all_fences2.i, align 4
  %8 = ptrtoint ptr %fence.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %fence.i, align 4
  %call8 = call ptr @dma_resv_iter_first(ptr noundef nonnull %cursor) #11
  %tobool10.not111 = icmp eq ptr %call8, null
  br i1 %tobool10.not111, label %for.body.cleanup53.thread_crit_edge, label %for.body11.lr.ph

for.body.cleanup53.thread_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53.thread

for.body11.lr.ph:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0116)
  %cmp12 = icmp eq i32 %i.0116, 0
  br label %for.body11

cleanup53.thread:                                 ; preds = %for.inc.cleanup53.thread_crit_edge, %for.body.cleanup53.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #11
  %inc = add nuw nsw i32 %i.0116, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %cleanup53.thread.cleanup59_crit_edge, label %cleanup53.thread.for.body_crit_edge

cleanup53.thread.for.body_crit_edge:              ; preds = %cleanup53.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup53.thread.cleanup59_crit_edge:             ; preds = %cleanup53.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup59

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.body11.lr.ph
  %fence6.0112 = phi ptr [ %call8, %for.body11.lr.ph ], [ %call52, %for.inc.for.body11_crit_edge ]
  br i1 %cmp12, label %land.lhs.true, label %for.body11.if.end15_crit_edge

for.body11.if.end15_crit_edge:                    ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body11
  %9 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %for.body11.if.end15_crit_edge
  %11 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drm, align 4
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence6.0112, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp eq ptr %14, @nouveau_fence_ops_legacy
  %cmp2.not.i = icmp eq ptr %14, @nouveau_fence_ops_uevent
  %or.cond.i = or i1 %cmp.not.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end15.if.end43_crit_edge

if.end15.if.end43_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end.i:                                         ; preds = %if.end15
  %context.i = getelementptr inbounds %struct.dma_fence, ptr %fence6.0112, i32 0, i32 3
  %15 = ptrtoint ptr %context.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %context.i, align 8
  %context_base.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %context_base.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %context_base.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %18)
  %cmp3.i = icmp ult i64 %16, %18
  br i1 %cmp3.i, label %if.end.i.if.end43_crit_edge, label %lor.lhs.false.i

if.end.i.if.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

lor.lhs.false.i:                                  ; preds = %if.end.i
  %chan.i = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 11
  %19 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan.i, align 8
  %conv.i = sext i32 %20 to i64
  %add.i = add i64 %18, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %add.i)
  %cmp8.not.i = icmp ult i64 %16, %add.i
  br i1 %cmp8.not.i, label %if.then18, label %lor.lhs.false.i.if.end43_crit_edge

lor.lhs.false.i.if.end43_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then18:                                        ; preds = %lor.lhs.false.i
  %21 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.then18.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then18.rcu_read_lock.exit_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then18
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then18.rcu_read_lock.exit_crit_edge
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %fence6.0112, i32 0, i32 2
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %channel, align 8
  %call20 = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %rcu_read_lock.exit.do.end30_crit_edge

rcu_read_lock.exit.do.end30_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true22:                                  ; preds = %rcu_read_lock.exit
  %call23 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b82 = load i1, ptr @nouveau_fence_sync.__warned, align 1
  br i1 %.b82, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nouveau_fence_sync.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 374, ptr noundef nonnull @.str.6) #11
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %rcu_read_lock.exit.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %26, null
  br i1 %tobool32.not, label %do.end30.if.end38_crit_edge, label %land.lhs.true33

do.end30.if.end38_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

land.lhs.true33:                                  ; preds = %do.end30
  %cmp34 = icmp eq ptr %26, %chan
  br i1 %cmp34, label %land.lhs.true33.if.then37_crit_edge, label %lor.lhs.false

land.lhs.true33.if.then37_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

lor.lhs.false:                                    ; preds = %land.lhs.true33
  %27 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sync, align 4
  %call35 = call i32 %28(ptr noundef nonnull %fence6.0112, ptr noundef nonnull %26, ptr noundef %chan) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %lor.lhs.false.if.then37_crit_edge, label %lor.lhs.false.if.end38_crit_edge

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false.if.then37_crit_edge, %land.lhs.true33.if.then37_crit_edge
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %lor.lhs.false.if.end38_crit_edge, %do.end30.if.end38_crit_edge
  %must_wait.0.off0 = phi i1 [ false, %if.then37 ], [ true, %lor.lhs.false.if.end38_crit_edge ], [ true, %do.end30.if.end38_crit_edge ]
  %call.i84 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i84, label %if.end38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i87

if.end38.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i87:                                ; preds = %if.end38
  %call1.i85 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i89

land.lhs.true.i87.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i89:                               ; preds = %land.lhs.true.i87
  %.b4.i88 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i88, label %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, label %if.then.i90

land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i90:                                      ; preds = %land.lhs.true2.i89
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i90, %land.lhs.true2.i89.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i87.rcu_read_unlock.exit_crit_edge, %if.end38.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %29 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i91 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i91 to ptr
  %preempt_count.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i92, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i92, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %must_wait.0.off0, label %rcu_read_unlock.exit.if.end43_crit_edge, label %rcu_read_unlock.exit.for.inc_crit_edge

rcu_read_unlock.exit.for.inc_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

rcu_read_unlock.exit.if.end43_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %rcu_read_unlock.exit.if.end43_crit_edge, %lor.lhs.false.i.if.end43_crit_edge, %if.end.i.if.end43_crit_edge, %if.end15.if.end43_crit_edge
  %call.i93 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %fence6.0112, i1 noundef zeroext %intr, i32 noundef 2147483647) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i93)
  %tobool46.not = icmp sgt i32 %call.i93, -1
  br i1 %tobool46.not, label %if.end43.for.inc_crit_edge, label %cleanup53.thread107

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

cleanup53.thread107:                              ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor) #11
  br label %cleanup59

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %rcu_read_unlock.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %call52 = call ptr @dma_resv_iter_next(ptr noundef nonnull %cursor) #11
  %tobool10.not = icmp eq ptr %call52, null
  br i1 %tobool10.not, label %for.inc.cleanup53.thread_crit_edge, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body11

for.inc.cleanup53.thread_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup53.thread

cleanup59:                                        ; preds = %cleanup53.thread107, %cleanup53.thread.cleanup59_crit_edge, %if.then.cleanup59_crit_edge
  %retval.4 = phi i32 [ %call, %if.then.cleanup59_crit_edge ], [ %call.i93, %cleanup53.thread107 ], [ 0, %cleanup53.thread.cleanup59_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_fence_unref(ptr nocapture noundef %pfence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pfence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfence, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #11
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount.i) #11, !callees !70
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %pfence to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pfence, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_new(ptr noundef %chan, i1 noundef zeroext %sysmem, ptr nocapture noundef writeonly %pfence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fence1 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !66

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @nouveau_fence_emit(ptr noundef nonnull %call7.i.i, ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then.i.i

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then.i.i:                                      ; preds = %if.end7
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %call7.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #11
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end11_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.i.if.end11_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #11
  br label %if.end11

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #11, !callees !70
  br label %if.end11

if.end11:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  %fence.0 = phi ptr [ %call7.i.i, %if.end7.if.end11_crit_edge ], [ null, %if.end5.i.i.i.i.i.i.if.end11_crit_edge ], [ null, %if.then10.i.i.i.i.i.i ], [ null, %if.then.i.i.i ]
  %4 = ptrtoint ptr %pfence to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fence.0, ptr %pfence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dma_fence_emit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nouveau_fence_get_get_driver_name(ptr nocapture noundef readnone %fence) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nouveau_fence_get_timeline_name(ptr nocapture noundef readonly %f) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %dead = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %name = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 11
  %spec.select = select i1 %tobool.not, ptr %name, ptr @.str.15
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_no_signaling(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !66

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 465, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call zeroext i1 @nouveau_fence_is_signaled(ptr noundef %f)
  br i1 %call20, label %if.then21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then21:                                        ; preds = %if.end
  %head = getelementptr inbounds %struct.nouveau_fence, ptr %f, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then21.list_del.exit_crit_edge

if.then21.list_del.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.nouveau_fence, ptr %f, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then21.list_del.exit_crit_edge
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_fence, ptr %f, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %list_del.exit.cleanup_crit_edge, label %if.then.i

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %list_del.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !65

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @dma_fence_release(ptr noundef %refcount) #11, !callees !70
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %list_del.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %11 = xor i1 %call20, true
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_is_signaled(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 696, ptr noundef nonnull @.str.12) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %channel = getelementptr inbounds %struct.nouveau_fence, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %channel, align 8
  %call3 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b21 = load i1, ptr @nouveau_fence_is_signaled.__warned, align 1
  br i1 %.b21, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @nouveau_fence_is_signaled.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 449, ptr noundef nonnull @.str.6) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %do.end9.if.end16_crit_edge, label %if.then12

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %read = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %call13 = tail call i32 %9(ptr noundef nonnull %7) #11
  %seqno = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %seqno to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %seqno, align 8
  %12 = trunc i64 %11 to i32
  %conv14 = sub i32 %call13, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv14)
  %cmp = icmp sgt i32 %conv14, -1
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %do.end9.if.end16_crit_edge
  %ret.0.off0 = phi i1 [ %cmp, %if.then12 ], [ false, %do.end9.if.end16_crit_edge ]
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i22, label %if.end16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

if.end16.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %if.end16
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 724, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %if.end16.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i.i.i.i.i29 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_fence_wait_legacy(ptr noundef %f, i1 noundef zeroext %intr, i32 noundef %wait) #0 align 64 {
entry:
  %kt = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %wait
  %call1252 = call zeroext i1 @nouveau_fence_done(ptr noundef %f)
  br i1 %call1252, label %entry.__here202_crit_edge, label %while.body.lr.ph

entry.__here202_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here202

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %wait)
  %cmp.not = icmp ne i32 %wait, 2147483647
  %cond = select i1 %intr, i32 1, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sleep_time.0253 = phi i32 [ 1000, %while.body.lr.ph ], [ %18, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %kt) #11
  %1 = ptrtoint ptr %kt to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %kt, align 8, !annotation !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %2, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %__here, label %__here114

__here:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 212
  %7 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 ptrtoint (ptr blockaddress(@nouveau_fence_wait_legacy, %__here) to i32), ptr %task_state_change, align 4
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %8, align 128
  br label %cleanup.thread

__here114:                                        ; preds = %while.body
  %10 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i243 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i243 to ptr
  %task117 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task117, align 8
  %task_state_change118 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change118 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@nouveau_fence_wait_legacy, %__here114) to i32), ptr %task_state_change118, align 4
  %15 = load ptr, ptr %task117, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %cond, ptr %15, align 128
  %conv = zext i32 %sleep_time.0253 to i64
  %17 = ptrtoint ptr %kt to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %kt, align 8
  %call137 = call i32 @schedule_hrtimeout(ptr noundef nonnull %kt, i32 noundef 1) #11
  %mul = shl nuw nsw i32 %sleep_time.0253, 1
  %18 = call i32 @llvm.umin.i32(i32 %mul, i32 1000000)
  br i1 %intr, label %land.lhs.true144, label %__here114.cleanup_crit_edge

__here114.cleanup_crit_edge:                      ; preds = %__here114
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true144:                                 ; preds = %__here114
  %19 = ptrtoint ptr %task117 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task117, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %25 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true144.cleanup.thread_crit_edge, !prof !65

land.lhs.true144.cleanup.thread_crit_edge:        ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

signal_pending.exit:                              ; preds = %land.lhs.true144
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool148.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool148.not, label %signal_pending.exit.cleanup_crit_edge, label %signal_pending.exit.cleanup.thread_crit_edge

signal_pending.exit.cleanup.thread_crit_edge:     ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.thread:                                   ; preds = %signal_pending.exit.cleanup.thread_crit_edge, %land.lhs.true144.cleanup.thread_crit_edge, %__here
  %retval.1.ph = phi i32 [ 0, %__here ], [ -512, %land.lhs.true144.cleanup.thread_crit_edge ], [ -512, %signal_pending.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kt) #11
  br label %cleanup224

cleanup:                                          ; preds = %signal_pending.exit.cleanup_crit_edge, %__here114.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %kt) #11
  %call1 = call zeroext i1 @nouveau_fence_done(ptr noundef %f)
  br i1 %call1, label %cleanup.__here202_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.__here202_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here202

__here202:                                        ; preds = %cleanup.__here202_crit_edge, %entry.__here202_crit_edge
  %t.0.lcssa = phi i32 [ %0, %entry.__here202_crit_edge ], [ %2, %cleanup.__here202_crit_edge ]
  %28 = call i32 @llvm.read_register.i32(metadata !55) #11
  %and.i244 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i244 to ptr
  %task205 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task205 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task205, align 8
  %task_state_change206 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 212
  %32 = ptrtoint ptr %task_state_change206 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 ptrtoint (ptr blockaddress(@nouveau_fence_wait_legacy, %__here202) to i32), ptr %task_state_change206, align 4
  %33 = load ptr, ptr %task205, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 0, ptr %33, align 128
  %sub223 = sub i32 %add, %t.0.lcssa
  br label %cleanup224

cleanup224:                                       ; preds = %__here202, %cleanup.thread
  %retval.2 = phi i32 [ %sub223, %__here202 ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_fence_release(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %fence_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fence_ref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %fence_ref, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fence_ref, ptr %fence_ref, i32 1, ptr elementtype(i32) %fence_ref) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !65

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %fence_ref, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void @kfree(ptr noundef %1) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @dma_fence_free(ptr noundef %f) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_enable_signaling(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f, align 8
  %notify_ref = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %notify_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %notify_ref, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %notify_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %notify = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 12
  %call2 = tail call i32 @nvif_notify_get(ptr noundef %notify) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call zeroext i1 @nouveau_fence_no_signaling(ptr noundef %f)
  br i1 %call3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  br label %if.end12

if.else:                                          ; preds = %if.end
  %4 = ptrtoint ptr %notify_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_ref, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %notify_ref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %notify9 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 12
  %call10 = tail call i32 @nvif_notify_put(ptr noundef %notify9) #11
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.else.if.end12_crit_edge, %if.then5
  ret i1 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !24, !25, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @nouveau_fence_context_new.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 184, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 188, i32 22}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 190, i32 22}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 198, i32 38}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 206, i32 2}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 256, i32 10}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 374, i32 12}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/dma-fence.h", i32 545, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 166, i32 10}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/trace/events/dma_fence.h", i32 37, i32 1}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 310, i32 3}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 320, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @nouveau_fence_ops_legacy, !40, !"nouveau_fence_ops_legacy", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 491, i32 35}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 424, i32 9}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 432, i32 36}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 449, i32 9}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 277, i32 4}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 281, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 294, i32 2}
!53 = !{ptr @nouveau_fence_ops_uevent, !54, !"nouveau_fence_ops_uevent", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nouveau_fence.c", i32 518, i32 35}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148306295}
!68 = !{i64 2148220759, i64 2148220791, i64 2148220820, i64 2148220854, i64 2148220885, i64 2148220908}
!69 = !{i64 2150213432}
!70 = distinct !{ptr @dma_fence_release, null}
!71 = !{i8 0, i8 2}
!72 = !{i64 2148218294, i64 2148218326, i64 2148218355, i64 2148218389, i64 2148218420, i64 2148218443}
!73 = !{i64 2148773969, i64 2148773974, i64 2148773987, i64 2148774031, i64 2148774065, i64 2148774086}
!74 = !{i64 2152571843}
!75 = !{i64 2152572044}
!76 = !{i64 2149254980}
!77 = !{i64 2149256016}
!78 = !{i64 2149246421}
!79 = !{i64 2149246687}
!80 = !{!"auto-init"}
