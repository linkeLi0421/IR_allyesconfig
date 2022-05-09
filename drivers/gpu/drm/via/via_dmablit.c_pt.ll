; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/via/via_dmablit.c_pt.bc'
source_filename = "../drivers/gpu/drm/via/via_dmablit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_via_private = type { ptr, ptr, ptr, ptr, i32, [5 x %struct.wait_queue_head], ptr, i32, i32, i32, i32, ptr, ptr, %struct.drm_via_ring_buffer, i64, i32, i64, %struct.atomic_t, %struct.drm_via_state_t, [60000 x i8], [1024 x ptr], i32, i32, [4 x %struct.drm_via_irq], i32, ptr, i32, i32, ptr, i32, i32, %struct.drm_mm, i32, %struct.drm_mm, %struct.idr, i32, i32, [2 x %struct._drm_via_blitq], i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_via_ring_buffer = type { %struct.drm_local_map, ptr }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_via_state_t = type { i32, i32, i32, [2 x [10 x i32]], [2 x [10 x i32]], [2 x [10 x i32]], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_via_irq = type { %struct.atomic_t, i32, i32, %struct.wait_queue_head }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct._drm_via_blitq = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x ptr], %struct.spinlock, [8 x %struct.wait_queue_head], %struct.wait_queue_head, %struct.work_struct, %struct.timer_list }
%struct._drm_via_sg_info = type { ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_via_blitsync = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_via_dmablit = type { i32, i32, i32, i32, ptr, i32, i32, i32, %struct.drm_via_blitsync }
%struct._drm_via_descriptor = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"DMA blit handler called. engine = %d, from_irq = %d, blitq = 0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@via_init_dmablit.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&blitq->blit_lock\00", [46 x i8] zeroinitializer }, align 32
@via_init_dmablit.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blitq->blit_queue + j\00", [42 x i8] zeroinitializer }, align 32
@via_init_dmablit.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&blitq->busy_queue\00", [45 x i8] zeroinitializer }, align 32
@via_init_dmablit.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&blitq->wq)\00", [34 x i8] zeroinitializer }, align 32
@via_init_dmablit.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&blitq->poll_timer)\00", [43 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Workqueue task called for blit engine %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Releasing blit slot %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Polling timer called for engine %d, jiffies %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"DMA blit sync handle 0x%x engine %d returned %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Called without initialization.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Num free is %d\0A\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Zero size bitblt.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Too large system memory stride. Stride: %d, Length: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Too large PCI DMA bitblt.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid frame-buffer / memory stride.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid DRM bitblt alignment.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not lock DMA pages.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Could not allocate DMA descriptor pages.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA pages locked\0A\00", [46 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Allocated %d pages for %d descriptors.\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 321, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 561, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 563, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 564, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 565, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 566, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 503, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 512, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 464, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 439, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 734, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 685, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 588, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 600, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 619, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 630, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 651, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 657, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 664, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 253, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 326, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [37 x i8] c"../drivers/gpu/drm/via/via_dmablit.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 281, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @.str, ptr @via_init_dmablit.__key, ptr @.str.1, ptr @via_init_dmablit.__key.2, ptr @.str.3, ptr @via_init_dmablit.__key.4, ptr @.str.5, ptr @via_init_dmablit.__key.6, ptr @.str.7, ptr @via_init_dmablit.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_dmablit.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_dmablit.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_dmablit.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_dmablit.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_init_dmablit.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_dmablit_handler(ptr nocapture noundef readonly %dev, i32 noundef %engine, i32 noundef %from_irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %blit_queues = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 37
  %add.ptr = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine
  %2 = ptrtoint ptr %add.ptr to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %engine, i32 noundef %from_irq, i32 noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_irq)
  %tobool.not = icmp eq i32 %from_irq, 0
  %blit_lock2 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 12
  br i1 %tobool.not, label %do.body1, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_lock(ptr noundef %blit_lock2) #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock2) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %if.then
  %irqsave.0 = phi i32 [ 0, %if.then ], [ %call3, %do.body1 ]
  %is_active = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 10
  %3 = ptrtoint ptr %is_active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool6.not = icmp eq i32 %4, 0
  br i1 %tobool6.not, label %if.end.lor.end_crit_edge, label %land.end

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

land.end:                                         ; preds = %if.end
  %mul = shl i32 %engine, 2
  %add = add i32 %mul, 3728
  %mmio.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !68
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %phi.bo = and i32 %10, 1
  br i1 %tobool8.not, label %land.end.lor.end_crit_edge, label %lor.end.thread

land.end.lor.end_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.end.thread:                                   ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %cur16149 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 5
  %11 = ptrtoint ptr %cur16149 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cur16149, align 4
  br label %if.then18

lor.end:                                          ; preds = %land.end.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %status.0148 = phi i32 [ %phi.bo, %land.end.lor.end_crit_edge ], [ 0, %if.end.lor.end_crit_edge ]
  %aborting = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 9
  %13 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0148)
  %tobool13.not = icmp eq i32 %status.0148, 0
  %spec.select = select i1 %tobool10.not, i1 %tobool13.not, i1 false
  %cur16 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 5
  %15 = ptrtoint ptr %cur16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur16, align 4
  br i1 %spec.select, label %lor.end.if.then18_crit_edge, label %if.else33

lor.end.if.then18_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl i32 %engine, 2
  %.pre157 = add i32 %.pre, 3728
  br label %if.then18

if.then18:                                        ; preds = %lor.end.if.then18_crit_edge, %lor.end.thread
  %add29.pre-phi = phi i32 [ %.pre157, %lor.end.if.then18_crit_edge ], [ %add, %lor.end.thread ]
  %17 = phi i32 [ %16, %lor.end.if.then18_crit_edge ], [ %12, %lor.end.thread ]
  %cur16150 = phi ptr [ %cur16, %lor.end.if.then18_crit_edge ], [ %cur16149, %lor.end.thread ]
  %aborting19 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 9
  %18 = ptrtoint ptr %aborting19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %aborting19, align 4
  %arrayidx = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 11, i32 %17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %aborted = getelementptr inbounds %struct._drm_via_sg_info, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %aborted to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %aborted, align 4
  %done_blit_handle = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 2
  %23 = ptrtoint ptr %done_blit_handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %done_blit_handle, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %done_blit_handle, align 4
  %blit_queue = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 13
  %add.ptr21 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 %17
  tail call void @__wake_up(ptr noundef %add.ptr21, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %inc22 = add i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc22)
  %cmp23 = icmp sgt i32 %inc22, 7
  %spec.store.select = select i1 %cmp23, i32 0, i32 %inc22
  %25 = ptrtoint ptr %cur16150 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.store.select, ptr %cur16150, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %mmio.i129 = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %mmio.i129 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i129, align 4
  %handle.i130 = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle.i130 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %29, i32 %add29.pre-phi
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 134217728) #7, !srcloc !71
  %30 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %is_active, align 4
  %31 = ptrtoint ptr %aborting19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %aborting19, align 4
  %wq = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %32 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %32, ptr noundef %wq) #7
  br label %if.end43

if.else33:                                        ; preds = %lor.end
  %33 = ptrtoint ptr %is_active to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool35.not = icmp eq i32 %34, 0
  br i1 %tobool35.not, label %if.else33.if.then46_crit_edge, label %land.lhs.true

if.else33.if.then46_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

land.lhs.true:                                    ; preds = %if.else33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %end = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 8
  %36 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %end, align 4
  %sub = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp36 = icmp sgt i32 %sub, -1
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_private, align 4
  %mul.i = shl i32 %engine, 2
  %add.i = add i32 %mul.i, 3728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %mmio.i.i = getelementptr inbounds %struct.drm_via_private, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.drm_local_map, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 67108864) #7, !srcloc !71
  %44 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %aborting, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add40 = add i32 %45, 100
  %46 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add40, ptr %end, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %land.lhs.true.if.end43_crit_edge, %if.then18
  %cur16151.ph = phi ptr [ %cur16, %land.lhs.true.if.end43_crit_edge ], [ %cur16, %if.then38 ], [ %cur16150, %if.then18 ]
  %cur.0.ph = phi i32 [ %16, %land.lhs.true.if.end43_crit_edge ], [ %16, %if.then38 ], [ %spec.store.select, %if.then18 ]
  %47 = ptrtoint ptr %is_active to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr = load i32, ptr %is_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool45.not = icmp eq i32 %.pr, 0
  br i1 %tobool45.not, label %if.end43.if.then46_crit_edge, label %if.end43.if.end72_crit_edge

if.end43.if.end72_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end43.if.then46_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.then46:                                        ; preds = %if.end43.if.then46_crit_edge, %if.else33.if.then46_crit_edge
  %cur.0156 = phi i32 [ %cur.0.ph, %if.end43.if.then46_crit_edge ], [ %16, %if.else33.if.then46_crit_edge ]
  %cur16151155 = phi ptr [ %cur16151.ph, %if.end43.if.then46_crit_edge ], [ %cur16, %if.else33.if.then46_crit_edge ]
  %num_outstanding = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 7
  %48 = ptrtoint ptr %num_outstanding to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_outstanding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool47.not = icmp eq i32 %49, 0
  br i1 %tobool47.not, label %if.else63, label %if.then48

if.then48:                                        ; preds = %if.then46
  %arrayidx50 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 11, i32 %cur.0156
  %50 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx50, align 4
  %52 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_private, align 4
  %mul.i133 = shl i32 %engine, 4
  %add.i134 = add i32 %mul.i133, 3648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %mmio.i.i135 = getelementptr inbounds %struct.drm_via_private, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i.i136 = getelementptr inbounds %struct.drm_local_map, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %handle.i.i136 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle.i.i136, align 4
  %add.ptr.i.i137 = getelementptr i8, ptr %57, i32 %add.i134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i137, i32 0) #7, !srcloc !71
  %add2.i = add i32 %mul.i133, 3652
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i30.i = getelementptr inbounds %struct.drm_local_map, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handle.i30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handle.i30.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %61, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 0) #7, !srcloc !71
  %mul3.i = shl i32 %engine, 2
  %add4.i = add i32 %mul3.i, 3728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i33.i = getelementptr inbounds %struct.drm_local_map, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %handle.i33.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %handle.i33.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %65, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 419430400) #7, !srcloc !71
  %add6.i = add i32 %mul3.i, 3712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %66 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i36.i = getelementptr inbounds %struct.drm_local_map, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %handle.i36.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %handle.i36.i, align 4
  %add.ptr.i37.i = getelementptr i8, ptr %69, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37.i, i32 50331648) #7, !srcloc !71
  %add8.i = add i32 %mul.i133, 3656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i39.i = getelementptr inbounds %struct.drm_local_map, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %handle.i39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %handle.i39.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %73, i32 %add8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 0) #7, !srcloc !71
  %add10.i = add i32 %mul.i133, 3660
  %chain_start.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %51, i32 0, i32 7
  %74 = ptrtoint ptr %chain_start.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chain_start.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #7
  %77 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i42.i = getelementptr inbounds %struct.drm_local_map, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %handle.i42.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handle.i42.i, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %80, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43.i, i32 %76) #7, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %81 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i45.i = getelementptr inbounds %struct.drm_local_map, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %handle.i45.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle.i45.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %84, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46.i, i32 50331648) #7, !srcloc !71
  %85 = ptrtoint ptr %mmio.i.i135 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i.i135, align 4
  %handle.i48.i = getelementptr inbounds %struct.drm_local_map, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %handle.i48.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handle.i48.i, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %88, i32 %add4.i
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.i) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %90 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %is_active, align 4
  %91 = ptrtoint ptr %cur16151155 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %cur.0156, ptr %cur16151155, align 4
  %92 = ptrtoint ptr %num_outstanding to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_outstanding, align 4
  %dec = add i32 %93, -1
  store i32 %dec, ptr %num_outstanding, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %add54 = add i32 %94, 100
  %end55 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 8
  %95 = ptrtoint ptr %end55 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add54, ptr %end55, align 4
  %poll_timer = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 16
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %poll_timer, i32 0, i32 1
  %96 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %97, null
  br i1 %tobool.not.i.i.not, label %if.then58, label %if.then48.if.end72_crit_edge

if.then48.if.end72_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then58:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %add60 = add i32 %98, 1
  %call61 = tail call i32 @mod_timer(ptr noundef %poll_timer, i32 noundef %add60) #7
  br label %if.end72

if.else63:                                        ; preds = %if.then46
  %poll_timer64 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 16
  %pprev.i.i138 = getelementptr inbounds %struct.hlist_node, ptr %poll_timer64, i32 0, i32 1
  %99 = ptrtoint ptr %pprev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %pprev.i.i138, align 4
  %tobool.not.i.i139.not = icmp eq ptr %100, null
  br i1 %tobool.not.i.i139.not, label %if.else63.if.end70_crit_edge, label %if.then67

if.else63.if.end70_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then67:                                        ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  %call69 = tail call i32 @del_timer(ptr noundef %poll_timer64) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.else63.if.end70_crit_edge
  %101 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_private, align 4
  %mul.i142 = shl i32 %engine, 2
  %add.i143 = add i32 %mul.i142, 3728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %mmio.i.i144 = getelementptr inbounds %struct.drm_via_private, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %mmio.i.i144 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i.i144, align 4
  %handle.i.i145 = getelementptr inbounds %struct.drm_local_map, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %handle.i.i145 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %handle.i.i145, align 4
  %add.ptr.i.i146 = getelementptr i8, ptr %106, i32 %add.i143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i146, i32 402653184) #7, !srcloc !71
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.then58, %if.then48.if.end72_crit_edge, %if.end43.if.end72_crit_edge
  %blit_lock77 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 12
  br i1 %tobool.not, label %if.else76, label %if.then74

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef %blit_lock77) #7
  br label %if.end78

if.else76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock77, i32 noundef %irqsave.0) #7
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_init_dmablit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  tail call void @pci_set_master(ptr noundef %add.ptr) #7
  %blit_queues = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 37
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc27, %for.body.for.body_crit_edge ]
  %add.ptr2 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054
  %4 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %add.ptr2, align 4
  %cur_blit_handle = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 1
  %num_free = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 6
  %5 = call ptr @memset(ptr %cur_blit_handle, i32 0, i32 20)
  %6 = ptrtoint ptr %num_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 7, ptr %num_free, align 4
  %num_outstanding = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 7
  %7 = ptrtoint ptr %num_outstanding to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_outstanding, align 4
  %is_active = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 10
  %8 = ptrtoint ptr %is_active to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %is_active, align 4
  %aborting = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 9
  %9 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %aborting, align 4
  %blit_lock = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %blit_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @via_init_dmablit.__key, i16 noundef signext 3) #7
  %blit_queue = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %blit_queue, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.1 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.1, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.2 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.3 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.3, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.4 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.4, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.5 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.5, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.6 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.6, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %add.ptr9.7 = getelementptr %struct.wait_queue_head, ptr %blit_queue, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %add.ptr9.7, ptr noundef nonnull @.str.3, ptr noundef nonnull @via_init_dmablit.__key.2) #7
  %busy_queue = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %busy_queue, ptr noundef nonnull @.str.5, ptr noundef nonnull @via_init_dmablit.__key.4) #7
  %wq = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 15
  tail call void @__init_work(ptr noundef %wq, i32 noundef 0) #7
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %wq, align 4
  %lockdep_map = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @via_init_dmablit.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry19 = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 15, i32 1
  %11 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 15, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry19, ptr %prev.i, align 4
  %func = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 15, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @via_dmablit_workqueue, ptr %func, align 4
  %poll_timer = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %i.054, i32 16
  tail call void @init_timer_key(ptr noundef %poll_timer, ptr noundef nonnull @via_dmablit_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @via_init_dmablit.__key.8) #7
  %inc27 = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc27, 2
  br i1 %exitcond.not, label %for.end28, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end28:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_dmablit_workqueue(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -588
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 -136
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %blit_queues = getelementptr inbounds %struct.drm_via_private, ptr %5, i32 0, i32 37
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %blit_queues to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 680
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, i32 noundef %sub.ptr.div) #7
  %blit_lock = getelementptr i8, ptr %work, i32 -512
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock) #7
  %serviced = getelementptr i8, ptr %work, i32 -576
  %cur = getelementptr i8, ptr %work, i32 -568
  %6 = ptrtoint ptr %serviced to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %serviced, align 4
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp11.not52 = icmp eq i32 %7, %9
  br i1 %cmp11.not52, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %blits = getelementptr i8, ptr %work, i32 -544
  %num_free = getelementptr i8, ptr %work, i32 -564
  %busy_queue = getelementptr i8, ptr %work, i32 -52
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %10 = phi i32 [ %7, %while.body.lr.ph ], [ %20, %if.end.while.body_crit_edge ]
  %irqsave.053 = phi i32 [ %call8, %while.body.lr.ph ], [ %call29, %if.end.while.body_crit_edge ]
  %inc = add i32 %10, 1
  %11 = ptrtoint ptr %serviced to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %serviced, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %10) #7
  %12 = ptrtoint ptr %serviced to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %serviced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp15 = icmp ugt i32 %13, 7
  br i1 %cmp15, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %serviced to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %serviced, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %arrayidx = getelementptr [8 x ptr], ptr %blits, i32 0, i32 %10
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_free, align 4
  %inc18 = add i32 %18, 1
  store i32 %inc18, ptr %num_free, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock, i32 noundef %irqsave.053) #7
  tail call void @__wake_up(ptr noundef %busy_queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call fastcc void @via_free_sg_info(ptr noundef %add.ptr5, ptr noundef %16)
  tail call void @kfree(ptr noundef %16) #7
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock) #7
  %19 = ptrtoint ptr %serviced to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %serviced, align 4
  %21 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur, align 4
  %cmp11.not = icmp eq i32 %20, %22
  br i1 %cmp11.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %irqsave.0.lcssa = phi i32 [ %call8, %entry.while.end_crit_edge ], [ %call29, %if.end.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock, i32 noundef %irqsave.0.lcssa) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_dmablit_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -632
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %blit_queues = getelementptr inbounds %struct.drm_via_private, ptr %3, i32 0, i32 37
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %blit_queues to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 680
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %sub.ptr.div, i32 noundef %4) #7
  tail call void @via_dmablit_handler(ptr noundef %1, i32 noundef %sub.ptr.div, i32 noundef 0)
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 1
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  tail call void @via_dmablit_handler(ptr noundef %1, i32 noundef %sub.ptr.div, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_dma_blit_sync(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %engine = getelementptr inbounds %struct.drm_via_blitsync, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %engine, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call fastcc i32 @via_dmablit_sync(ptr noundef %dev, i32 noundef %3, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call)
  %cmp2 = icmp eq i32 %call, -4
  %spec.store.select = select i1 %cmp2, i32 -11, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @via_dmablit_sync(ptr nocapture noundef readonly %dev, i32 noundef %handle, i32 noundef %engine) #0 align 64 {
entry:
  %entry1 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %blit_queues = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 37
  %blit_lock.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock.i) #7
  %done_blit_handle.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 2
  %2 = ptrtoint ptr %done_blit_handle.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %done_blit_handle.i, align 4
  %sub.i = sub i32 %3, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %sub.i)
  %cmp5.i = icmp ugt i32 %sub.i, 8388608
  br i1 %cmp5.i, label %land.end.i, label %via_dmablit_active.exit.thread

via_dmablit_active.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call2.i) #7
  br label %if.end145

land.end.i:                                       ; preds = %entry
  %cur_blit_handle.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 1
  %4 = ptrtoint ptr %cur_blit_handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur_blit_handle.i, align 4
  %sub7.i = sub i32 %5, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %sub7.i)
  %cmp8.i = icmp ult i32 %sub7.i, 8388609
  br i1 %cmp8.i, label %do.body, label %via_dmablit_active.exit

via_dmablit_active.exit:                          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call2.i) #7
  br label %if.end145

do.body:                                          ; preds = %land.end.i
  %sub12.i = sub i32 %handle, %3
  %cur.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 5
  %6 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur.i, align 4
  %add.i = add i32 %7, %sub12.i
  %sub13.i = add i32 %add.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub13.i)
  %cmp14.i = icmp ugt i32 %sub13.i, 7
  %sub17.i = add i32 %add.i, -9
  %spec.select.i = select i1 %cmp14.i, i32 %sub17.i, i32 %sub13.i
  %blit_queue.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues, i32 %engine, i32 13
  %add.ptr.i = getelementptr %struct.wait_queue_head, ptr %blit_queue.i, i32 %spec.select.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call2.i) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry1) #7
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry1, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %entry1, align 4
  %13 = tail call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @default_wake_function, ptr %9, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %10, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %11, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  call void @add_wait_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %entry1) #7
  %add.neg = sub i32 -300, %21
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %do.body
  %22 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 212
  %24 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 ptrtoint (ptr blockaddress(@via_dmablit_sync, %__here) to i32), ptr %task_state_change, align 4
  %25 = load ptr, ptr %task, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 1, ptr %25, align 128
  %call2.i158 = call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock.i) #7
  %27 = ptrtoint ptr %done_blit_handle.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %done_blit_handle.i, align 4
  %sub.i160 = sub i32 %28, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %sub.i160)
  %cmp5.i161 = icmp ugt i32 %sub.i160, 8388608
  br i1 %cmp5.i161, label %via_dmablit_active.exit168, label %via_dmablit_active.exit168.thread

via_dmablit_active.exit168.thread:                ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call2.i158) #7
  br label %__here122

via_dmablit_active.exit168:                       ; preds = %__here
  %29 = ptrtoint ptr %cur_blit_handle.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_blit_handle.i, align 4
  %sub7.i163 = sub i32 %30, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %sub7.i163)
  %cmp8.i164 = icmp ugt i32 %sub7.i163, 8388608
  call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call2.i158) #7
  br i1 %cmp8.i164, label %via_dmablit_active.exit168.__here122_crit_edge, label %if.end62

via_dmablit_active.exit168.__here122_crit_edge:   ; preds = %via_dmablit_active.exit168
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here122

if.end62:                                         ; preds = %via_dmablit_active.exit168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end62.__here122_crit_edge, label %if.end64

if.end62.__here122_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here122

if.end64:                                         ; preds = %if.end62
  %call65 = call i32 @schedule_timeout(i32 noundef 1) #7
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stack.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %38 = and i32 %37, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end64.__here122_crit_edge, !prof !73

if.end64.__here122_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here122

signal_pending.exit:                              ; preds = %if.end64
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %35, align 4
  %and1.i.i.i.i.i = and i32 %40, 1
  %tobool69.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool69.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here122_crit_edge

signal_pending.exit.__here122_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here122

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here122:                                        ; preds = %signal_pending.exit.__here122_crit_edge, %if.end64.__here122_crit_edge, %if.end62.__here122_crit_edge, %via_dmablit_active.exit168.__here122_crit_edge, %via_dmablit_active.exit168.thread
  %ret.0 = phi i32 [ 0, %via_dmablit_active.exit168.thread ], [ -4, %if.end64.__here122_crit_edge ], [ -4, %signal_pending.exit.__here122_crit_edge ], [ -16, %if.end62.__here122_crit_edge ], [ 0, %via_dmablit_active.exit168.__here122_crit_edge ]
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %task_state_change126 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 212
  %43 = ptrtoint ptr %task_state_change126 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 ptrtoint (ptr blockaddress(@via_dmablit_sync, %__here122) to i32), ptr %task_state_change126, align 4
  %44 = load ptr, ptr %task, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 0, ptr %44, align 128
  call void @remove_wait_queue(ptr noundef %add.ptr.i, ptr noundef nonnull %entry1) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry1) #7
  br label %if.end145

if.end145:                                        ; preds = %__here122, %via_dmablit_active.exit, %via_dmablit_active.exit.thread
  %ret.1 = phi i32 [ %ret.0, %__here122 ], [ 0, %via_dmablit_active.exit ], [ 0, %via_dmablit_active.exit.thread ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.15, i32 noundef %handle, i32 noundef %engine, i32 noundef %ret.1) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_dma_blit(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #7
  br label %via_dmablit.exit

if.end.i:                                         ; preds = %entry
  %to_fb.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %to_fb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to_fb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %blit_queues.i = getelementptr inbounds %struct.drm_via_private, ptr %1, i32 0, i32 37
  %add.ptr.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i
  %call.i = tail call fastcc i32 @via_dmablit_grab_slot(ptr noundef %add.ptr.i, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.via_dmablit.exit_crit_edge

if.end.i.via_dmablit.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %via_dmablit.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 48) #10
  %cmp5.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %blit_lock.i.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 12
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock.i.i) #7
  %num_free.i.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 6
  %5 = ptrtoint ptr %num_free.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_free.i.i, align 4
  %inc.i.i = add i32 %6, 1
  store i32 %inc.i.i, ptr %num_free.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i.i, i32 noundef %call2.i.i) #7
  %busy_queue.i.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 14
  tail call void @__wake_up(ptr noundef %busy_queue.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %via_dmablit.exit

if.end7.i:                                        ; preds = %if.end3.i
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -136
  %9 = ptrtoint ptr %to_fb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %to_fb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 1
  %direction.i.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i.i, ptr %direction.i.i, align 4
  %bounce_buffer.i.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %bounce_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %bounce_buffer.i.i, align 8
  %state.i.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state.i.i, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i, label %if.end7.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end7.i.if.then.i.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end7.i
  %line_length.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %line_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i.i = icmp eq i32 %17, 0
  br i1 %cmp2.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end7.i.if.then.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %if.then10.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %mem_stride.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %mem_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mem_stride.i.i, align 4
  %sub.i.i = sub i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %sub.i.i)
  %cmp4.i.i = icmp ugt i32 %sub.i.i, 8192
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %19, i32 noundef %17) #7
  br label %if.then10.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp11.i.i = icmp eq i32 %19, %17
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %if.end8.i.i.if.end22.i.i_crit_edge

if.end8.i.i.if.end22.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %fb_stride.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %fb_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fb_stride.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %17)
  %cmp13.i.i = icmp eq i32 %21, %17
  br i1 %cmp13.i.i, label %if.end22.thread.i.i, label %land.lhs.true.i.i.if.end22.i.i_crit_edge

land.lhs.true.i.i.if.end22.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.end22.thread.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = mul i32 %17, %15
  %22 = ptrtoint ptr %mem_stride.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul.i.i, ptr %mem_stride.i.i, align 4
  %23 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i.i, ptr %line_length.i.i, align 4
  %24 = ptrtoint ptr %fb_stride.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul.i.i, ptr %fb_stride.i.i, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %data, align 4
  br label %lor.lhs.false25.i.i

if.end22.i.i:                                     ; preds = %land.lhs.true.i.i.if.end22.i.i_crit_edge, %if.end8.i.i.if.end22.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %cmp24.i.i = icmp ugt i32 %15, 2048
  br i1 %cmp24.i.i, label %if.end22.i.i.if.then30.i.i_crit_edge, label %if.end22.i.i.lor.lhs.false25.i.i_crit_edge

if.end22.i.i.lor.lhs.false25.i.i_crit_edge:       ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false25.i.i

if.end22.i.i.if.then30.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i

lor.lhs.false25.i.i:                              ; preds = %if.end22.i.i.lor.lhs.false25.i.i_crit_edge, %if.end22.thread.i.i
  %26 = phi i32 [ 1, %if.end22.thread.i.i ], [ %15, %if.end22.i.i.lor.lhs.false25.i.i_crit_edge ]
  %27 = ptrtoint ptr %mem_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mem_stride.i.i, align 4
  %mul28.i.i = mul i32 %28, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %mul28.i.i)
  %cmp29.i.i = icmp ugt i32 %mul28.i.i, 16777216
  br i1 %cmp29.i.i, label %lor.lhs.false25.i.i.if.then30.i.i_crit_edge, label %if.end31.i.i

lor.lhs.false25.i.i.if.then30.i.i_crit_edge:      ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30.i.i

if.then30.i.i:                                    ; preds = %lor.lhs.false25.i.i.if.then30.i.i_crit_edge, %if.end22.i.i.if.then30.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #7
  br label %if.then10.i

if.end31.i.i:                                     ; preds = %lor.lhs.false25.i.i
  %29 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %line_length.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp34.i.i = icmp ult i32 %28, %30
  br i1 %cmp34.i.i, label %if.end31.i.i.if.then43.i.i_crit_edge, label %lor.lhs.false35.i.i

if.end31.i.i.if.then43.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i.i

lor.lhs.false35.i.i:                              ; preds = %if.end31.i.i
  %fb_stride36.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %fb_stride36.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fb_stride36.i.i, align 4
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp42.i.i = icmp ult i32 %33, %30
  br i1 %cmp42.i.i, label %lor.lhs.false35.i.i.if.then43.i.i_crit_edge, label %if.end44.i.i

lor.lhs.false35.i.i.if.then43.i.i_crit_edge:      ; preds = %lor.lhs.false35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %lor.lhs.false35.i.i.if.then43.i.i_crit_edge, %if.end31.i.i.if.then43.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #7
  br label %if.then10.i

if.end44.i.i:                                     ; preds = %lor.lhs.false35.i.i
  %mem_addr.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %mem_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mem_addr.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool45.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool45.not.i.i, label %lor.lhs.false46.i.i, label %if.end44.i.i.if.then60.i.i_crit_edge

if.end44.i.i.if.then60.i.i_crit_edge:             ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i

lor.lhs.false46.i.i:                              ; preds = %if.end44.i.i
  %fb_addr.i.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 2
  %37 = ptrtoint ptr %fb_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fb_addr.i.i, align 4
  %and47.i.i = and i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %lor.lhs.false46.i.i.if.then60.i.i_crit_edge

lor.lhs.false46.i.i.if.then60.i.i_crit_edge:      ; preds = %lor.lhs.false46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i

lor.lhs.false49.i.i:                              ; preds = %lor.lhs.false46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp51.i.i = icmp ugt i32 %26, 1
  br i1 %cmp51.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.if.end61.i.i_crit_edge

lor.lhs.false49.i.i.if.end61.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %and54.i.i = and i32 %28, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %tobool55.not.i.i = icmp eq i32 %and54.i.i, 0
  %and58.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i = icmp eq i32 %and58.i.i, 0
  %or.cond.i.i = select i1 %tobool55.not.i.i, i1 %tobool59.not.i.i, i1 false
  br i1 %or.cond.i.i, label %land.lhs.true52.i.i.if.end61.i.i_crit_edge, label %land.lhs.true52.i.i.if.then60.i.i_crit_edge

land.lhs.true52.i.i.if.then60.i.i_crit_edge:      ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then60.i.i

land.lhs.true52.i.i.if.end61.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i.i

if.then60.i.i:                                    ; preds = %land.lhs.true52.i.i.if.then60.i.i_crit_edge, %lor.lhs.false46.i.i.if.then60.i.i_crit_edge, %if.end44.i.i.if.then60.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #7
  br label %if.then10.i

if.end61.i.i:                                     ; preds = %land.lhs.true52.i.i.if.end61.i.i_crit_edge, %lor.lhs.false49.i.i.if.end61.i.i_crit_edge
  %shr.i = lshr i32 %36, 12
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data, align 4
  %mul.i = mul i32 %40, %28
  %sub.i15 = add i32 %mul.i, -1
  %add.ptr.i16 = getelementptr i8, ptr %35, i32 %sub.i15
  %41 = ptrtoint ptr %add.ptr.i16 to i32
  %shr2.i = lshr i32 %41, 12
  %sub3.i = sub nsw i32 %shr2.i, %shr.i
  %add.i17 = add nsw i32 %sub3.i, 1
  %num_pages.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i17, ptr %num_pages.i, align 4
  %43 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i17, i32 4) #7
  %44 = extractvalue { i32, i1 } %43, 1
  %45 = extractvalue { i32, i1 } %43, 0
  %retval.0.i.i = select i1 %44, i32 -1, i32 %45
  %call5.i = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i.i) #11
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call5.i, ptr %call7.i.i, align 8
  %cmp.i18 = icmp eq ptr %call5.i, null
  br i1 %cmp.i18, label %if.end61.i.i.if.then63.i.i_crit_edge, label %if.end.i21

if.end61.i.i.if.then63.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63.i.i

if.end.i21:                                       ; preds = %if.end61.i.i
  %47 = ptrtoint ptr %mem_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem_addr.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_pages.i, align 4
  %52 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %direction.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp9.i = icmp eq i32 %53, 2
  %cond.i20 = zext i1 %cmp9.i to i32
  %call11.i = tail call i32 @pin_user_pages_fast(i32 noundef %49, i32 noundef %51, i32 noundef %cond.i20, ptr noundef nonnull %call5.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %51)
  %cmp13.not.i = icmp eq i32 %call11.i, %51
  br i1 %cmp13.not.i, label %if.end64.i.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp15.i = icmp slt i32 %call11.i, 0
  br i1 %cmp15.i, label %if.then14.i.if.then63.i.i_crit_edge, label %if.end17.i

if.then14.i.if.then63.i.i_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63.i.i

if.end17.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %state.i.i, align 4
  br label %if.then63.i.i

if.then63.i.i:                                    ; preds = %if.end17.i, %if.then14.i.if.then63.i.i_crit_edge, %if.end61.i.i.if.then63.i.i_crit_edge
  %retval.0.i23.ph = phi i32 [ %call11.i, %if.then14.i.if.then63.i.i_crit_edge ], [ -12, %if.end61.i.i.if.then63.i.i_crit_edge ], [ -22, %if.end17.i ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #7
  tail call fastcc void @via_free_sg_info(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call7.i.i) #7
  br label %if.then10.i

if.end64.i.i:                                     ; preds = %if.end.i21
  %55 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %state.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.26) #7
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp386.not.i = icmp eq i32 %57, 0
  br i1 %cmp386.not.i, label %if.end64.i.i.via_map_blit_for_device.exit_crit_edge, label %for.body.i9.preheader

if.end64.i.i.via_map_blit_for_device.exit_crit_edge: ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %via_map_blit_for_device.exit

for.body.i9.preheader:                            ; preds = %if.end64.i.i
  %58 = ptrtoint ptr %mem_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mem_addr.i.i, align 4
  %60 = ptrtoint ptr %line_length.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %line_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4.not72.i = icmp eq i32 %61, 0
  %62 = ptrtoint ptr %mem_stride.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mem_stride.i.i, align 4
  br label %for.body.i9

for.body.i9:                                      ; preds = %while.end.i.for.body.i9_crit_edge, %for.body.i9.preheader
  %cur_line.093.i = phi i32 [ %inc28.i, %while.end.i.for.body.i9_crit_edge ], [ 0, %for.body.i9.preheader ]
  %num_desc.092.i = phi i32 [ %num_desc.1.lcssa.i, %while.end.i.for.body.i9_crit_edge ], [ 0, %for.body.i9.preheader ]
  %mem_addr.088.i = phi ptr [ %add.ptr26.i, %while.end.i.for.body.i9_crit_edge ], [ %59, %for.body.i9.preheader ]
  br i1 %cmp4.not72.i, label %for.body.i9.while.end.i_crit_edge, label %for.body.i9.while.body.i_crit_edge

for.body.i9.while.body.i_crit_edge:               ; preds = %for.body.i9
  br label %while.body.i

for.body.i9.while.end.i_crit_edge:                ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body.i9.while.body.i_crit_edge
  %num_desc.177.i = phi i32 [ %inc25.i11, %while.body.i.while.body.i_crit_edge ], [ %num_desc.092.i, %for.body.i9.while.body.i_crit_edge ]
  %line_len.076.i = phi i32 [ %sub7.i, %while.body.i.while.body.i_crit_edge ], [ %61, %for.body.i9.while.body.i_crit_edge ]
  %cur_mem.074.i = phi ptr [ %add.ptr.i12, %while.body.i.while.body.i_crit_edge ], [ %mem_addr.088.i, %for.body.i9.while.body.i_crit_edge ]
  %64 = ptrtoint ptr %cur_mem.074.i to i32
  %and5.i = and i32 %64, 4095
  %sub.i10 = sub nuw nsw i32 4096, %and5.i
  %65 = tail call i32 @llvm.umin.i32(i32 %sub.i10, i32 %line_len.076.i) #7
  %sub7.i = sub i32 %line_len.076.i, %65
  %inc25.i11 = add i32 %num_desc.177.i, 1
  %add.ptr.i12 = getelementptr i8, ptr %cur_mem.074.i, i32 %65
  %cmp4.not.i = icmp eq i32 %sub7.i, 0
  br i1 %cmp4.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %for.body.i9.while.end.i_crit_edge
  %num_desc.1.lcssa.i = phi i32 [ %num_desc.092.i, %for.body.i9.while.end.i_crit_edge ], [ %inc25.i11, %while.body.i.while.end.i_crit_edge ]
  %add.ptr26.i = getelementptr i8, ptr %mem_addr.088.i, i32 %63
  %inc28.i = add nuw i32 %cur_line.093.i, 1
  %exitcond.not = icmp eq i32 %inc28.i, %57
  br i1 %exitcond.not, label %while.end.i.via_map_blit_for_device.exit_crit_edge, label %while.end.i.for.body.i9_crit_edge

while.end.i.for.body.i9_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i9

while.end.i.via_map_blit_for_device.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %via_map_blit_for_device.exit

via_map_blit_for_device.exit:                     ; preds = %while.end.i.via_map_blit_for_device.exit_crit_edge, %if.end64.i.i.via_map_blit_for_device.exit_crit_edge
  %num_desc.0.lcssa.i = phi i32 [ 0, %if.end64.i.i.via_map_blit_for_device.exit_crit_edge ], [ %num_desc.1.lcssa.i, %while.end.i.via_map_blit_for_device.exit_crit_edge ]
  %num_desc32.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %num_desc32.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %num_desc.0.lcssa.i, ptr %num_desc32.i, align 8
  %descriptors_per_page.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 9
  %67 = ptrtoint ptr %descriptors_per_page.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 256, ptr %descriptors_per_page.i, align 4
  %sub.i = add i32 %num_desc.0.lcssa.i, 255
  %div26.i = lshr i32 %sub.i, 8
  %num_desc_pages.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %num_desc_pages.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div26.i, ptr %num_desc_pages.i, align 4
  %69 = shl nuw nsw i32 %div26.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %69, i32 noundef 3520) #11
  %desc_pages.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %call7.i.i, i32 0, i32 2
  %70 = ptrtoint ptr %desc_pages.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call8.i.i.i, ptr %desc_pages.i, align 8
  %cmp.i1 = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.i1, label %via_map_blit_for_device.exit.if.then67.i.i_crit_edge, label %if.end.i2

via_map_blit_for_device.exit.if.then67.i.i_crit_edge: ; preds = %via_map_blit_for_device.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i

if.end.i2:                                        ; preds = %via_map_blit_for_device.exit
  %71 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %state.i.i, align 4
  %72 = ptrtoint ptr %num_desc_pages.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_desc_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp536.i = icmp sgt i32 %73, 0
  br i1 %cmp536.i, label %if.end.i2.for.body.i_crit_edge, label %if.end.i2.do.body12.i_crit_edge

if.end.i2.do.body12.i_crit_edge:                  ; preds = %if.end.i2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

if.end.i2.for.body.i_crit_edge:                   ; preds = %if.end.i2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i3 = add nuw nsw i32 %i.037.i, 1
  %74 = ptrtoint ptr %num_desc_pages.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_desc_pages.i, align 4
  %cmp5.i4 = icmp slt i32 %inc.i3, %75
  br i1 %cmp5.i4, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.do.body12.i_crit_edge

for.cond.i.do.body12.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i2.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i3, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i2.for.body.i_crit_edge ]
  %call6.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #7
  %76 = inttoptr i32 %call6.i to ptr
  %77 = ptrtoint ptr %desc_pages.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc_pages.i, align 8
  %arrayidx.i5 = getelementptr ptr, ptr %78, i32 %i.037.i
  %79 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %arrayidx.i5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp8.i = icmp eq i32 %call6.i, 0
  br i1 %cmp8.i, label %for.body.i.if.then67.i.i_crit_edge, label %for.cond.i

for.body.i.if.then67.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then67.i.i

if.then67.i.i:                                    ; preds = %for.body.i.if.then67.i.i_crit_edge, %via_map_blit_for_device.exit.if.then67.i.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #7
  tail call fastcc void @via_free_sg_info(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call7.i.i) #7
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then67.i.i, %if.then63.i.i, %if.then60.i.i, %if.then43.i.i, %if.then30.i.i, %if.then5.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -12, %if.then67.i.i ], [ %retval.0.i23.ph, %if.then63.i.i ], [ -22, %if.then60.i.i ], [ -22, %if.then43.i.i ], [ -22, %if.then30.i.i ], [ -22, %if.then5.i.i ], [ -22, %if.then.i.i ]
  %blit_lock.i56.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 12
  %call2.i57.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock.i56.i) #7
  %num_free.i58.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 6
  %80 = ptrtoint ptr %num_free.i58.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_free.i58.i, align 4
  %inc.i59.i = add i32 %81, 1
  store i32 %inc.i59.i, ptr %num_free.i58.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i56.i, i32 noundef %call2.i57.i) #7
  %busy_queue.i60.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 14
  tail call void @__wake_up(ptr noundef %busy_queue.i60.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %via_dmablit.exit

do.body12.i:                                      ; preds = %for.cond.i.do.body12.i_crit_edge, %if.end.i2.do.body12.i_crit_edge
  %.lcssa.i = phi i32 [ %73, %if.end.i2.do.body12.i_crit_edge ], [ %75, %for.cond.i.do.body12.i_crit_edge ]
  %82 = ptrtoint ptr %num_desc32.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_desc32.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.29, i32 noundef %.lcssa.i, i32 noundef %83) #7
  tail call fastcc void @via_map_blit_for_device(ptr noundef %add.ptr.i.i, ptr noundef %data, ptr noundef nonnull %call7.i.i, i32 noundef 1) #7
  %blit_lock.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 12
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock.i) #7
  %head.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 4
  %84 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %head.i, align 4
  %inc.i = add i32 %85, 1
  store i32 %inc.i, ptr %head.i, align 4
  %arrayidx.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 11, i32 %85
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  %87 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %87)
  %cmp19.i = icmp ugt i32 %87, 7
  br i1 %cmp19.i, label %if.then21.i, label %do.body12.i.if.end23.i_crit_edge

do.body12.i.if.end23.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then21.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %head.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %do.body12.i.if.end23.i_crit_edge
  %num_outstanding.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 7
  %89 = ptrtoint ptr %num_outstanding.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_outstanding.i, align 4
  %inc24.i = add i32 %90, 1
  store i32 %inc24.i, ptr %num_outstanding.i, align 4
  %cur_blit_handle.i = getelementptr %struct._drm_via_blitq, ptr %blit_queues.i, i32 %cond.i, i32 1
  %91 = ptrtoint ptr %cur_blit_handle.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cur_blit_handle.i, align 4
  %inc25.i = add i32 %92, 1
  store i32 %inc25.i, ptr %cur_blit_handle.i, align 4
  %sync.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 8
  %93 = ptrtoint ptr %sync.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %inc25.i, ptr %sync.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock.i, i32 noundef %call15.i) #7
  %engine28.i = getelementptr inbounds %struct.drm_via_dmablit, ptr %data, i32 0, i32 8, i32 1
  %94 = ptrtoint ptr %engine28.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond.i, ptr %engine28.i, align 4
  tail call void @via_dmablit_handler(ptr noundef %dev, i32 noundef %cond.i, i32 noundef 0) #7
  br label %via_dmablit.exit

via_dmablit.exit:                                 ; preds = %if.end23.i, %if.then10.i, %if.then6.i, %if.end.i.via_dmablit.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ -12, %if.then6.i ], [ %retval.0.i.ph.i, %if.then10.i ], [ 0, %if.end23.i ], [ %call.i, %if.end.i.via_dmablit.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_free_sg_info(ptr noundef %pdev, ptr nocapture noundef %vsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.default_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb8_crit_edge
  ]

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %num_desc1.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 4
  %3 = ptrtoint ptr %num_desc1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_desc1.i, align 4
  %descriptors_per_page.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 9
  %desc_pages.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not30.i = icmp eq i32 %4, 0
  br i1 %tobool.not30.i, label %sw.bb.sw.bb1_crit_edge, label %while.body.lr.ph.i

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

while.body.lr.ph.i:                               ; preds = %sw.bb
  %chain_start.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 7
  %5 = ptrtoint ptr %desc_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_pages.i, align 4
  %7 = ptrtoint ptr %descriptors_per_page.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %descriptors_per_page.i, align 4
  %.frozen = freeze i32 %4
  %.frozen30 = freeze i32 %8
  %div.i = udiv i32 %.frozen, %.frozen30
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %div.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %11 = mul i32 %div.i, %.frozen30
  %rem.i.decomposed = sub i32 %.frozen, %11
  %add.ptr.i = getelementptr %struct._drm_via_descriptor, ptr %10, i32 %rem.i.decomposed
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %direction.i = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec35.in.i = phi i32 [ %4, %while.body.lr.ph.i ], [ %dec35.i, %if.end.i.while.body.i_crit_edge ]
  %next.034.in.i = phi ptr [ %chain_start.i, %while.body.lr.ph.i ], [ %next10.i, %if.end.i.while.body.i_crit_edge ]
  %desc_ptr.033.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %descriptor_this_page.032.i = phi i32 [ %rem.i.decomposed, %while.body.lr.ph.i ], [ %descriptor_this_page.1.i, %if.end.i.while.body.i_crit_edge ]
  %cur_descriptor_page.031.i = phi i32 [ %div.i, %while.body.lr.ph.i ], [ %cur_descriptor_page.1.i, %if.end.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %next.034.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %next.034.i = load i32, ptr %next.034.in.i, align 4
  %dec35.i = add i32 %dec35.in.i, -1
  %dec3.i = add i32 %descriptor_this_page.032.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %descriptor_this_page.032.i)
  %cmp.i = icmp eq i32 %descriptor_this_page.032.i, 0
  br i1 %cmp.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec4.i = add i32 %cur_descriptor_page.031.i, -1
  %13 = ptrtoint ptr %descriptors_per_page.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %descriptors_per_page.i, align 4
  %sub.i = add i32 %14, -1
  %15 = ptrtoint ptr %desc_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_pages.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %16, i32 %dec4.i
  %17 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7.i, align 4
  %add.ptr8.i = getelementptr %struct._drm_via_descriptor, ptr %18, i32 %sub.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %cur_descriptor_page.1.i = phi i32 [ %dec4.i, %if.then.i ], [ %cur_descriptor_page.031.i, %while.body.i.if.end.i_crit_edge ]
  %descriptor_this_page.1.i = phi i32 [ %sub.i, %if.then.i ], [ %dec3.i, %while.body.i.if.end.i_crit_edge ]
  %desc_ptr.1.i = phi ptr [ %add.ptr8.i, %if.then.i ], [ %desc_ptr.033.i, %while.body.i.if.end.i_crit_edge ]
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %next.034.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #7
  %19 = ptrtoint ptr %desc_ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_ptr.1.i, align 4
  %size.i = getelementptr inbounds %struct._drm_via_descriptor, ptr %desc_ptr.1.i, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %23 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %direction.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef 0) #7
  %next10.i = getelementptr inbounds %struct._drm_via_descriptor, ptr %desc_ptr.1.i, i32 0, i32 3
  %incdec.ptr.i = getelementptr %struct._drm_via_descriptor, ptr %desc_ptr.1.i, i32 -1
  %tobool.not.i = icmp eq i32 %dec35.i, 0
  br i1 %tobool.not.i, label %if.end.i.sw.bb1_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.sw.bb1_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

sw.bb1:                                           ; preds = %if.end.i.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  %num_desc_pages = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 3
  %25 = ptrtoint ptr %num_desc_pages to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_desc_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp28 = icmp sgt i32 %26, 0
  br i1 %cmp28, label %for.body.lr.ph, label %sw.bb1.for.end_crit_edge

sw.bb1.for.end_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %sw.bb1
  %desc_pages = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %desc_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc_pages, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.029
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %cmp2.not = icmp eq ptr %30, null
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %30 to i32
  tail call void @free_pages(i32 noundef %31, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %32 = ptrtoint ptr %num_desc_pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_desc_pages, align 4
  %cmp = icmp slt i32 %inc, %33
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.bb1.for.end_crit_edge
  %desc_pages5 = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 2
  %34 = ptrtoint ptr %desc_pages5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_pages5, align 4
  tail call void @kfree(ptr noundef %35) #7
  br label %sw.bb6

sw.bb6:                                           ; preds = %for.end, %entry.sw.bb6_crit_edge
  %36 = ptrtoint ptr %vsg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsg, align 4
  %num_pages = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 1
  %38 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_pages, align 4
  %direction = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 5
  %40 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp7 = icmp eq i32 %41, 2
  tail call void @unpin_user_pages_dirty_lock(ptr noundef %37, i32 noundef %39, i1 noundef zeroext %cmp7) #7
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb6, %entry.sw.bb8_crit_edge
  %42 = ptrtoint ptr %vsg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsg, align 4
  tail call void @vfree(ptr noundef %43) #7
  br label %sw.default

sw.default:                                       ; preds = %sw.bb8, %entry.sw.default_crit_edge
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %state, align 4
  %bounce_buffer = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 6
  %45 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bounce_buffer, align 4
  tail call void @vfree(ptr noundef %46) #7
  %47 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %bounce_buffer, align 4
  %free_on_sequence = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 8
  %48 = ptrtoint ptr %free_on_sequence to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %free_on_sequence, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @via_dmablit_grab_slot(ptr noundef %blitq, i32 noundef %engine) #0 align 64 {
entry:
  %entry10 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_free = getelementptr inbounds %struct._drm_via_blitq, ptr %blitq, i32 0, i32 6
  %0 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_free, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %1) #7
  %blit_lock = getelementptr inbounds %struct._drm_via_blitq, ptr %blitq, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock) #7
  %2 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6203 = icmp eq i32 %3, 0
  br i1 %cmp6203, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry10, i32 0, i32 1
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry10, i32 0, i32 2
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry10, i32 0, i32 3
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %entry10, i32 0, i32 3, i32 1
  %busy_queue = getelementptr inbounds %struct._drm_via_blitq, ptr %blitq, i32 0, i32 14
  %8 = getelementptr inbounds i8, ptr %entry10, i32 4
  br label %while.body

while.body:                                       ; preds = %do.body167.while.body_crit_edge, %while.body.lr.ph
  %irqsave.0204 = phi i32 [ %call2, %while.body.lr.ph ], [ %call175, %do.body167.while.body_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock, i32 noundef %irqsave.0204) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %entry10) #7
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %entry10, align 4
  %11 = call i32 @llvm.read_register.i32(metadata !58) #7
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %4, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @default_wake_function, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %6, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  call void @add_wait_queue(ptr noundef %busy_queue, ptr noundef nonnull %entry10) #7
  %add.neg = sub i32 -100, %19
  br label %__here

__here:                                           ; preds = %signal_pending.exit.__here_crit_edge, %while.body
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@via_dmablit_grab_slot, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %23, align 128
  %25 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp71.not = icmp eq i32 %26, 0
  br i1 %cmp71.not, label %if.end74, label %__here.__here137_crit_edge

__here.__here137_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here137

if.end74:                                         ; preds = %__here
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp75 = icmp sgt i32 %sub, -1
  br i1 %cmp75, label %if.end74.__here137_crit_edge, label %if.end78

if.end74.__here137_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here137

if.end78:                                         ; preds = %if.end74
  %call79 = call i32 @schedule_timeout(i32 noundef 1) #7
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stack.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %34 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end78.__here137_crit_edge, !prof !73

if.end78.__here137_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here137

signal_pending.exit:                              ; preds = %if.end78
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %31, align 4
  %and1.i.i.i.i.i = and i32 %36, 1
  %tobool83.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool83.not, label %signal_pending.exit.__here_crit_edge, label %signal_pending.exit.__here137_crit_edge

signal_pending.exit.__here137_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here137

signal_pending.exit.__here_crit_edge:             ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here137:                                        ; preds = %signal_pending.exit.__here137_crit_edge, %if.end78.__here137_crit_edge, %if.end74.__here137_crit_edge, %__here.__here137_crit_edge
  %cmp163 = phi i32 [ 0, %__here.__here137_crit_edge ], [ -16, %if.end74.__here137_crit_edge ], [ -11, %signal_pending.exit.__here137_crit_edge ], [ -11, %if.end78.__here137_crit_edge ]
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %task_state_change141 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 212
  %39 = ptrtoint ptr %task_state_change141 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 ptrtoint (ptr blockaddress(@via_dmablit_grab_slot, %__here137) to i32), ptr %task_state_change141, align 4
  %40 = load ptr, ptr %task, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %40, align 128
  call void @remove_wait_queue(ptr noundef %busy_queue, ptr noundef nonnull %entry10) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %entry10) #7
  br i1 %cmp71.not, label %__here137.cleanup_crit_edge, label %do.body167

__here137.cleanup_crit_edge:                      ; preds = %__here137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body167:                                       ; preds = %__here137
  %call175 = call i32 @_raw_spin_lock_irqsave(ptr noundef %blit_lock) #7
  %42 = ptrtoint ptr %num_free to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_free, align 4
  %cmp6 = icmp eq i32 %43, 0
  br i1 %cmp6, label %do.body167.while.body_crit_edge, label %do.body167.while.end_crit_edge

do.body167.while.end_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body167.while.body_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %do.body167.while.end_crit_edge, %entry.while.end_crit_edge
  %irqsave.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call175, %do.body167.while.end_crit_edge ]
  %.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %43, %do.body167.while.end_crit_edge ]
  %dec = add i32 %.lcssa, -1
  %44 = ptrtoint ptr %num_free to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %dec, ptr %num_free, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %blit_lock, i32 noundef %irqsave.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %__here137.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ %cmp163, %__here137.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @via_map_blit_for_device(ptr noundef %pdev, ptr nocapture noundef readonly %xfer, ptr nocapture noundef %vsg, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_addr1 = getelementptr inbounds %struct.drm_via_dmablit, ptr %xfer, i32 0, i32 4
  %0 = ptrtoint ptr %mem_addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_addr1, align 4
  %2 = ptrtoint ptr %1 to i32
  %fb_addr2 = getelementptr inbounds %struct.drm_via_dmablit, ptr %xfer, i32 0, i32 2
  %3 = ptrtoint ptr %fb_addr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fb_addr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %desc_pages = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 2
  %5 = ptrtoint ptr %desc_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_pages, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %desc_ptr.0 = phi ptr [ %8, %if.then ], [ null, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xfer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp386.not = icmp eq i32 %10, 0
  br i1 %cmp386.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %line_length = getelementptr inbounds %struct.drm_via_dmablit, ptr %xfer, i32 0, i32 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %shr10 = lshr i32 %2, 12
  %direction = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %descriptors_per_page = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 9
  %desc_pages20 = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 2
  %mem_stride = getelementptr inbounds %struct.drm_via_dmablit, ptr %xfer, i32 0, i32 5
  %fb_stride = getelementptr inbounds %struct.drm_via_dmablit, ptr %xfer, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %cur_descriptor_page.096 = phi i32 [ 0, %for.body.lr.ph ], [ %cur_descriptor_page.1.lcssa, %while.end.for.body_crit_edge ]
  %desc_ptr.195 = phi ptr [ %desc_ptr.0, %for.body.lr.ph ], [ %desc_ptr.2.lcssa, %while.end.for.body_crit_edge ]
  %next.094 = phi i32 [ 2, %for.body.lr.ph ], [ %next.1.lcssa, %while.end.for.body_crit_edge ]
  %cur_line.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %while.end.for.body_crit_edge ]
  %num_desc.092 = phi i32 [ 0, %for.body.lr.ph ], [ %num_desc.1.lcssa, %while.end.for.body_crit_edge ]
  %fb_addr.090 = phi i32 [ %4, %for.body.lr.ph ], [ %add27, %while.end.for.body_crit_edge ]
  %mem_addr.088 = phi ptr [ %1, %for.body.lr.ph ], [ %add.ptr26, %while.end.for.body_crit_edge ]
  %num_descriptors_this_page.087 = phi i32 [ 0, %for.body.lr.ph ], [ %num_descriptors_this_page.1.lcssa, %while.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4.not72 = icmp eq i32 %12, 0
  br i1 %cmp4.not72, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end24.while.body_crit_edge, %for.body.while.body_crit_edge
  %cur_descriptor_page.181 = phi i32 [ %cur_descriptor_page.2, %if.end24.while.body_crit_edge ], [ %cur_descriptor_page.096, %for.body.while.body_crit_edge ]
  %desc_ptr.279 = phi ptr [ %desc_ptr.3, %if.end24.while.body_crit_edge ], [ %desc_ptr.195, %for.body.while.body_crit_edge ]
  %next.178 = phi i32 [ %next.2, %if.end24.while.body_crit_edge ], [ %next.094, %for.body.while.body_crit_edge ]
  %num_desc.177 = phi i32 [ %inc25, %if.end24.while.body_crit_edge ], [ %num_desc.092, %for.body.while.body_crit_edge ]
  %line_len.076 = phi i32 [ %sub7, %if.end24.while.body_crit_edge ], [ %12, %for.body.while.body_crit_edge ]
  %cur_fb.075 = phi i32 [ %add, %if.end24.while.body_crit_edge ], [ %fb_addr.090, %for.body.while.body_crit_edge ]
  %cur_mem.074 = phi ptr [ %add.ptr, %if.end24.while.body_crit_edge ], [ %mem_addr.088, %for.body.while.body_crit_edge ]
  %num_descriptors_this_page.173 = phi i32 [ %num_descriptors_this_page.2, %if.end24.while.body_crit_edge ], [ %num_descriptors_this_page.087, %for.body.while.body_crit_edge ]
  %13 = ptrtoint ptr %cur_mem.074 to i32
  %and5 = and i32 %13, 4095
  %sub = sub nuw nsw i32 4096, %and5
  %14 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %line_len.076)
  %sub7 = sub i32 %line_len.076, %14
  br i1 %cmp, label %if.then9, label %while.body.if.end24_crit_edge

while.body.if.end24_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then9:                                         ; preds = %while.body
  %15 = ptrtoint ptr %vsg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vsg, align 4
  %shr = lshr i32 %13, 12
  %sub11 = sub nsw i32 %shr, %shr10
  %arrayidx12 = getelementptr ptr, ptr %16, i32 %sub11
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12, align 4
  %19 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %direction, align 4
  %call = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %18, i32 noundef %and5, i32 noundef %14, i32 noundef %20, i32 noundef 0) #7
  %21 = ptrtoint ptr %desc_ptr.279 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call, ptr %desc_ptr.279, align 4
  %dev_addr = getelementptr inbounds %struct._drm_via_descriptor, ptr %desc_ptr.279, i32 0, i32 1
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cur_fb.075, ptr %dev_addr, align 4
  %size = getelementptr inbounds %struct._drm_via_descriptor, ptr %desc_ptr.279, i32 0, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %14, ptr %size, align 4
  %next15 = getelementptr inbounds %struct._drm_via_descriptor, ptr %desc_ptr.279, i32 0, i32 3
  %24 = ptrtoint ptr %next15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %next.178, ptr %next15, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %desc_ptr.279) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then9
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !73

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #7
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %desc_ptr.279, i32 noundef 16) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %29 = load ptr, ptr @mem_map, align 4
  %30 = ptrtoint ptr %desc_ptr.279 to i32
  %sub.i = add i32 %30, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %29, i32 %shr.i
  %and.i = and i32 %30, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 16, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %incdec.ptr = getelementptr %struct._drm_via_descriptor, ptr %desc_ptr.279, i32 1
  %inc = add i32 %num_descriptors_this_page.173, 1
  %31 = ptrtoint ptr %descriptors_per_page to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %descriptors_per_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %32)
  %cmp18.not = icmp ult i32 %inc, %32
  br i1 %cmp18.not, label %dma_map_single_attrs.exit.if.end24_crit_edge, label %if.then19

dma_map_single_attrs.exit.if.end24_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %desc_pages20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc_pages20, align 4
  %inc21 = add i32 %cur_descriptor_page.181, 1
  %arrayidx22 = getelementptr ptr, ptr %34, i32 %inc21
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %dma_map_single_attrs.exit.if.end24_crit_edge, %while.body.if.end24_crit_edge
  %num_descriptors_this_page.2 = phi i32 [ 0, %if.then19 ], [ %inc, %dma_map_single_attrs.exit.if.end24_crit_edge ], [ %num_descriptors_this_page.173, %while.body.if.end24_crit_edge ]
  %next.2 = phi i32 [ %retval.0.i, %if.then19 ], [ %retval.0.i, %dma_map_single_attrs.exit.if.end24_crit_edge ], [ %next.178, %while.body.if.end24_crit_edge ]
  %desc_ptr.3 = phi ptr [ %36, %if.then19 ], [ %incdec.ptr, %dma_map_single_attrs.exit.if.end24_crit_edge ], [ %desc_ptr.279, %while.body.if.end24_crit_edge ]
  %cur_descriptor_page.2 = phi i32 [ %inc21, %if.then19 ], [ %cur_descriptor_page.181, %dma_map_single_attrs.exit.if.end24_crit_edge ], [ %cur_descriptor_page.181, %while.body.if.end24_crit_edge ]
  %inc25 = add i32 %num_desc.177, 1
  %add.ptr = getelementptr i8, ptr %cur_mem.074, i32 %14
  %add = add i32 %14, %cur_fb.075
  %cmp4.not = icmp eq i32 %sub7, 0
  br i1 %cmp4.not, label %if.end24.while.end_crit_edge, label %if.end24.while.body_crit_edge

if.end24.while.body_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end24.while.end_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end24.while.end_crit_edge, %for.body.while.end_crit_edge
  %num_descriptors_this_page.1.lcssa = phi i32 [ %num_descriptors_this_page.087, %for.body.while.end_crit_edge ], [ %num_descriptors_this_page.2, %if.end24.while.end_crit_edge ]
  %num_desc.1.lcssa = phi i32 [ %num_desc.092, %for.body.while.end_crit_edge ], [ %inc25, %if.end24.while.end_crit_edge ]
  %next.1.lcssa = phi i32 [ %next.094, %for.body.while.end_crit_edge ], [ %next.2, %if.end24.while.end_crit_edge ]
  %desc_ptr.2.lcssa = phi ptr [ %desc_ptr.195, %for.body.while.end_crit_edge ], [ %desc_ptr.3, %if.end24.while.end_crit_edge ]
  %cur_descriptor_page.1.lcssa = phi i32 [ %cur_descriptor_page.096, %for.body.while.end_crit_edge ], [ %cur_descriptor_page.2, %if.end24.while.end_crit_edge ]
  %37 = ptrtoint ptr %mem_stride to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mem_stride, align 4
  %add.ptr26 = getelementptr i8, ptr %mem_addr.088, i32 %38
  %39 = ptrtoint ptr %fb_stride to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fb_stride, align 4
  %add27 = add i32 %40, %fb_addr.090
  %inc28 = add nuw i32 %cur_line.093, 1
  %41 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xfer, align 4
  %cmp3 = icmp ult i32 %inc28, %42
  br i1 %cmp3, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %if.end.for.end_crit_edge
  %num_desc.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %num_desc.1.lcssa, %while.end.for.end_crit_edge ]
  %next.0.lcssa = phi i32 [ 2, %if.end.for.end_crit_edge ], [ %next.1.lcssa, %while.end.for.end_crit_edge ]
  br i1 %cmp, label %if.then30, label %for.end.if.end31_crit_edge

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %chain_start = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 7
  %43 = ptrtoint ptr %chain_start to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %next.0.lcssa, ptr %chain_start, align 4
  %state = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 11
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %for.end.if.end31_crit_edge
  %num_desc32 = getelementptr inbounds %struct._drm_via_sg_info, ptr %vsg, i32 0, i32 4
  %45 = ptrtoint ptr %num_desc32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %num_desc.0.lcssa, ptr %num_desc32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 321, i32 2}
!2 = !{ptr @via_init_dmablit.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 561, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @via_init_dmablit.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 563, i32 4}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @via_init_dmablit.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 564, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @via_init_dmablit.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 565, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @via_init_dmablit.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 566, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 503, i32 2}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 512, i32 3}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 464, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 436, i32 3}
!25 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 439, i32 2}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 734, i32 3}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 685, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 690, i32 3}
!35 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 588, i32 3}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 600, i32 3}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 619, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 630, i32 3}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 651, i32 3}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 657, i32 3}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 664, i32 3}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 253, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/via/via_dmablit.c", i32 281, i32 2}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 5937706}
!69 = !{i64 2154916190}
!70 = !{i64 2154916602}
!71 = !{i64 5937288}
!72 = !{i64 2154921660}
!73 = !{!"branch_weights", i32 2000, i32 1}
