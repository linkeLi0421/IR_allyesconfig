; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mga/mga_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/mga/mga_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_mga_private = type { %struct.drm_mga_primary_buffer, ptr, ptr, ptr, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_mga_primary_buffer = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct._drm_mga_sarea = type { %struct.drm_mga_context_regs_t, %struct.drm_mga_server_regs_t, [2 x %struct.drm_mga_texture_regs_t], i32, i32, i32, [8 x %struct.drm_clip_rect], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.drm_clip_rect], [4 x i32], i32, %struct.drm_mga_age_t, i32, i32, i32, [2 x [17 x %struct.drm_tex_region]], [2 x i32], i32 }
%struct.drm_mga_context_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mga_server_regs_t = type { i32 }
%struct.drm_mga_texture_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_mga_age_t = type { i32, i32 }
%struct.drm_tex_region = type { i8, i8, i8, i8, i32 }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mga_freelist = type { ptr, ptr, %struct.drm_mga_age_t, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.drm_buf_desc = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_mga_dma_bootstrap = type { i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_mga_init = type { i32, i32, %union.anon.74, i32, i32, i32, i32, i32, i32 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_mga_buf_priv_t = type { ptr, i32, i32 }
%struct.drm_lock = type { i32, i32 }
%struct.drm_dma = type { i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, i32 }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
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

@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   bailing out...\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   head = 0x%06lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   tail = 0x%06lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  space = 0x%06x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"done.\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   tail = 0x%06x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   wrap = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"age=0x%06lx wrap=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@mga_dma_bootstrap.modes = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.mga_dma_init = private unnamed_addr constant [13 x i8] c"mga_dma_init\00", align 1
@__func__.mga_dma_flush = private unnamed_addr constant [14 x i8] c"mga_dma_flush\00", align 1
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"flush, \00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"flush all, \00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"idle, \00", [25 x i8] zeroinitializer }, align 32
@__func__.mga_dma_reset = private unnamed_addr constant [14 x i8] c"mga_dma_reset\00", align 1
@__func__.mga_dma_buffers = private unnamed_addr constant [16 x i8] c"mga_dma_buffers\00", align 1
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to send %d buffers via drmDMA\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to get %d buffers (of %d max)\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to map MMIO region: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to map status region: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dev->dma is NULL\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to create mapping for WARP microcode: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to allocate primary DMA region: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mga_do_pci_dma_bootstrap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016[drm] Primary DMA buffer size reduced from %u to %u.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mga_do_pci_dma_bootstrap\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/mga/mga_dma.c\00", [34 x i8] zeroinitializer }, align 32
@mga_do_pci_dma_bootstrap._entry_ptr = internal global ptr @mga_do_pci_dma_bootstrap._entry, section ".printk_index", align 4
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unable to add secondary DMA buffers: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mga_do_pci_dma_bootstrap._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.23, ptr @.str.24, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016[drm] Secondary PCI DMA buffer bin count reduced from %u to %u.\0A\00", [61 x i8] zeroinitializer }, align 32
@mga_do_pci_dma_bootstrap._entry_ptr.28 = internal global ptr @mga_do_pci_dma_bootstrap._entry.26, section ".printk_index", align 4
@mga_do_pci_dma_bootstrap._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.23, ptr @.str.24, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016[drm] Initialized card for PCI DMA.\0A\00", [57 x i8] zeroinitializer }, align 32
@mga_do_pci_dma_bootstrap._entry_ptr.31 = internal global ptr @mga_do_pci_dma_bootstrap._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to find sarea!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find status page!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find mmio region!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to find warp microcode region!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to find primary dma region!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to find dma buffer region!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to ioremap agp regions!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to install WARP ucode!: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init WARP engine!: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not initialize freelist\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"count=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"   tail=0x%06lx %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"   head=0x%06lx %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"returning NULL!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 57, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 121, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 148, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 149, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 150, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 155, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 187, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 188, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 361, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 780, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1020, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1047, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1123, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 1131, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 734, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 742, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 640, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 654, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 674, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 679, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 697, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 702, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 713, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 834, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 845, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 850, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 855, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 860, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 867, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 885, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 891, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 897, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 935, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 251, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 334, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 338, i32 2 }
@___asan_gen_.185 = private constant [33 x i8] c"../drivers/gpu/drm/mga/mga_dma.c\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 351, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 174, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @mga_do_pci_dma_bootstrap._entry, ptr @mga_do_pci_dma_bootstrap._entry.26, ptr @mga_do_pci_dma_bootstrap._entry.29, ptr @mga_do_pci_dma_bootstrap._entry_ptr, ptr @mga_do_pci_dma_bootstrap._entry_ptr.28, ptr @mga_do_pci_dma_bootstrap._entry_ptr.31, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mga_dma_bootstrap.modes, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.48], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_dma_bootstrap.modes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_do_pci_dma_bootstrap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_do_pci_dma_bootstrap._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mga_do_pci_dma_bootstrap._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_do_wait_for_idle(ptr nocapture noundef readonly %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %usec_timeout = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10 = icmp sgt i32 %1, 0
  br i1 %cmp10, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7700
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %7 = and i32 %6, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp2 = icmp eq i32 %7, 512
  br i1 %cmp2, label %do.body, label %if.end

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %handle4 = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle4, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 8148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 0) #7, !srcloc !113
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.011, 1
  %13 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -16, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_do_dma_flush(ptr nocapture noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %usec_timeout = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp122 = icmp sgt i32 %1, 0
  br i1 %cmp122, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0123 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 7700
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %7 = and i32 %6, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp3 = icmp eq i32 %7, 512
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #7
  %inc = add nuw nsw i32 %i.0123, 1
  %9 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tail4 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %11 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tail4, align 4
  %last_flush = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 7
  %13 = ptrtoint ptr %last_flush to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_flush, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp5 = icmp eq i32 %12, %14
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %for.end
  %primary9 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 33
  %15 = ptrtoint ptr %primary9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %primary9, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add = add i32 %18, %12
  %19 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv, align 4
  %add.ptr15 = getelementptr i8, ptr %20, i32 %12
  %21 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 353703189, ptr %add.ptr15, align 4
  %add.ptr21 = getelementptr i8, ptr %add.ptr15, i32 4
  %22 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 0, ptr %add.ptr21, align 4
  %add.ptr26 = getelementptr i8, ptr %add.ptr15, i32 8
  %23 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %add.ptr26, align 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr15, i32 12
  %24 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %add.ptr31, align 4
  %add.ptr36 = getelementptr i8, ptr %add.ptr15, i32 16
  %25 = ptrtoint ptr %add.ptr36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %add.ptr36, align 4
  %add39 = add i32 %12, 20
  %26 = ptrtoint ptr %tail4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add39, ptr %tail4, align 4
  %27 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add39, ptr %last_flush, align 4
  %28 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio, align 4
  %handle52 = getelementptr inbounds %struct.drm_local_map, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %handle52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle52, align 4
  %add.ptr53 = getelementptr i8, ptr %31, i32 7768
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !110
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add)
  %cmp57.not = icmp ugt i32 %33, %add
  br i1 %cmp57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 2
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  %36 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail4, align 4
  %sub = sub i32 %35, %37
  br label %if.end62

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %sub60 = sub i32 %33, %add
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then58
  %sub.sink = phi i32 [ %sub60, %if.else ], [ %sub, %if.then58 ]
  %38 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.sink, ptr %38, align 4
  %40 = ptrtoint ptr %primary9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %primary9, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %sub65 = sub i32 %33, %43
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %sub65) #7
  %44 = ptrtoint ptr %primary9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %primary9, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %sub68 = sub i32 %add, %47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %sub68) #7
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %38, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %dma_access = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 9
  %50 = ptrtoint ptr %dma_access to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_access, align 4
  %or = or i32 %51, %add
  %52 = tail call i32 @llvm.bswap.i32(i32 %or)
  %53 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mmio, align 4
  %handle77 = getelementptr inbounds %struct.drm_local_map, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %handle77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handle77, align 4
  %add.ptr78 = getelementptr i8, ptr %56, i32 7772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %52) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %for.end.cleanup_crit_edge
  %.str.5.sink = phi ptr [ @.str.5, %if.end62 ], [ @.str.1, %for.end.cleanup_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %.str.5.sink) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_do_dma_wrap_start(ptr noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %0 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv, align 4
  %tail4 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 3
  %2 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail4, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 353703189, ptr %add.ptr, align 4
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 4
  %5 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %add.ptr12, align 4
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 8
  %6 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %add.ptr17, align 4
  %add.ptr22 = getelementptr i8, ptr %add.ptr, i32 12
  %7 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %add.ptr22, align 4
  %add.ptr27 = getelementptr i8, ptr %add.ptr, i32 16
  %8 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %add.ptr27, align 4
  %add = add i32 %3, 20
  store i32 %add, ptr %tail4, align 4
  %primary38 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 33
  %9 = ptrtoint ptr %primary38 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary38, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  store i32 0, ptr %tail4, align 4
  %last_flush = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 7
  %13 = ptrtoint ptr %last_flush to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %last_flush, align 4
  %last_wrap = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 8
  %14 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_wrap, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %last_wrap, align 4
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle, align 4
  %add.ptr41 = getelementptr i8, ptr %19, i32 7768
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !110
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %22 = ptrtoint ptr %primary38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %primary38, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp = icmp eq i32 %21, %25
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %21, %25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.sink = phi i32 [ %27, %if.then ], [ %sub, %if.else ]
  %28 = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.sink, ptr %28, align 4
  %add39 = add i32 %12, %add
  %30 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %23, align 4
  %sub50 = sub i32 %21, %31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %sub50) #7
  %32 = ptrtoint ptr %tail4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tail4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %33) #7
  %34 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %last_wrap, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %35) #7
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %28, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %dma_access = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 9
  %38 = ptrtoint ptr %dma_access to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_access, align 4
  %or = or i32 %39, %add39
  %40 = tail call i32 @llvm.bswap.i32(i32 %or)
  %41 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio, align 4
  %handle61 = getelementptr inbounds %struct.drm_local_map, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %handle61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %handle61, align 4
  %add.ptr62 = getelementptr i8, ptr %44, i32 7772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %40) #7, !srcloc !118
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %wrapped) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_do_dma_wrap_end(ptr noundef %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sarea_priv1 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 1
  %0 = ptrtoint ptr %sarea_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sarea_priv1, align 4
  %primary2 = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 33
  %2 = ptrtoint ptr %primary2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %last_wrap = getelementptr inbounds %struct._drm_mga_sarea, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %last_wrap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_wrap, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %last_wrap, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %inc) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %dev_priv, i32 0, i32 30
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 7768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #7, !srcloc !118
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %dev_priv, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %wrapped) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_freelist_put(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev_private1 = getelementptr inbounds %struct.drm_buf, ptr %buf, i32 0, i32 15
  %2 = ptrtoint ptr %dev_private1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %age = getelementptr inbounds %struct.drm_mga_freelist, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %age to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %age, align 4
  %primary = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 33
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %sub = sub i32 %7, %11
  %wrap = getelementptr inbounds %struct.drm_mga_freelist, ptr %5, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %wrap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wrap, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %sub, i32 noundef %13) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %age9 = getelementptr inbounds %struct.drm_mga_freelist, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %age9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %age9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp eq i32 %17, -1
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %age9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %age9, align 4
  %wrap14 = getelementptr inbounds %struct.drm_mga_freelist, ptr %15, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %wrap14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %wrap14, align 4
  %tail = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %head7 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %head7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head7, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  store ptr %15, ptr %23, align 4
  %prev19 = getelementptr inbounds %struct.drm_mga_freelist, ptr %25, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  %prev19.sink = phi ptr [ %prev19, %if.else ], [ %21, %do.body ]
  %.sink = phi ptr [ %23, %if.else ], [ %21, %do.body ]
  %storemerge = phi ptr [ %25, %if.else ], [ null, %do.body ]
  %26 = ptrtoint ptr %prev19.sink to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %15, ptr %prev19.sink, align 4
  %27 = getelementptr inbounds %struct.drm_mga_freelist, ptr %15, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %.sink, ptr %27, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %storemerge, ptr %15, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_driver_load(ptr noundef %dev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %device = getelementptr i8, ptr %1, i32 -102
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1317, i16 %3)
  %cmp = icmp eq i16 %3, 1317
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %bus = getelementptr i8, ptr %1, i32 -128
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 13192, i16 %9)
  %cmp7 = icmp eq i16 %9, 13192
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true3
  %device12 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %device12 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device12, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %11)
  %cmp14 = icmp eq i16 %11, 33
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true9
  %agp = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %12 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agp, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true16.if.end_crit_edge, label %if.then

land.lhs.true16.if.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %13) #7
  %14 = ptrtoint ptr %agp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %agp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true16.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 292) #10
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %usec_timeout = getelementptr inbounds %struct.drm_mga_private, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 10000, ptr %usec_timeout, align 4
  %chipset = getelementptr inbounds %struct.drm_mga_private, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %chipset to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %flags, ptr %chipset, align 8
  tail call void @pci_set_master(ptr noundef %add.ptr) #7
  %arrayidx = getelementptr i8, ptr %1, i32 968
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 8
  %mmio_base = getelementptr inbounds %struct.drm_mga_private, ptr %call7.i.i, i32 0, i32 11
  %21 = ptrtoint ptr %mmio_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %mmio_base, align 4
  %end = getelementptr i8, ptr %1, i32 972
  %22 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp26 = icmp eq i32 %23, 0
  br i1 %cmp26, label %if.end23.cond.end_crit_edge, label %cond.false

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %23, 1
  %add = sub i32 %sub, %25
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end23.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end23.cond.end_crit_edge ]
  %mmio_size = getelementptr inbounds %struct.drm_mga_private, ptr %call7.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %mmio_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %mmio_size, align 8
  %call34 = tail call i32 @drm_vblank_init(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %cond.end.cleanup_crit_edge, label %if.then36

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %28) #7
  %29 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %dev_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.then36 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_driver_unload(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dev_private, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_dma_bootstrap(ptr noundef %dev, ptr nocapture noundef %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %req.i.i = alloca %struct.drm_buf_desc, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %agp_mode.i = getelementptr inbounds %struct.drm_mga_dma_bootstrap, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %agp_mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agp_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %entry.land.end.i_crit_edge, label %land.rhs.i

entry.land.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %agp.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 38
  %4 = ptrtoint ptr %agp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %agp.i, align 4
  %tobool.i = icmp ne ptr %5, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %entry.land.end.i_crit_edge
  %6 = phi i1 [ false, %entry.land.end.i_crit_edge ], [ %tobool.i, %land.rhs.i ]
  %used_new_dma_init.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %used_new_dma_init.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %used_new_dma_init.i, align 4
  %mmio_base.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %mmio_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mmio_base.i, align 4
  %mmio_size.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %mmio_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmio_size.i, align 4
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  %call.i = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 2, ptr noundef %mmio.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call.i) #7
  br label %if.then

if.end.i:                                         ; preds = %land.end.i
  %status.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 31
  %call2.i = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef 0, i32 noundef 8192, i32 noundef 2, i32 noundef 14, ptr noundef %status.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call2.i) #7
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  br i1 %6, label %if.then7.i, label %if.end5.i.if.then16.i_crit_edge

if.end5.i.if.then16.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef 0) #7
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.then7.i, %if.end5.i.if.then16.i_crit_edge
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %req.i.i) #7
  %14 = getelementptr inbounds %struct.drm_buf_desc, ptr %req.i.i, i32 0, i32 1
  %dma.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %15 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma.i.i, align 4
  %cmp.i.i = icmp eq ptr %16, null
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #7
  br label %mga_do_dma_bootstrap.exit.thread28

if.end.i.i:                                       ; preds = %if.then16.i
  %warp.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %13, i32 0, i32 32
  %call.i.i = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef 0, i32 noundef 32768, i32 noundef 5, i32 noundef 2, ptr noundef %warp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp4.not.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #7
  br label %mga_do_dma_bootstrap.exit.thread28

if.end6.i.i:                                      ; preds = %if.end.i.i
  %primary_size7.i.i = getelementptr inbounds %struct.drm_mga_dma_bootstrap, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %primary_size7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %primary_size7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp8.not106.i.i = icmp eq i32 %18, 0
  br i1 %cmp8.not106.i.i, label %if.end6.i.i.if.end14.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end6.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end6.i.i
  %primary.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %13, i32 0, i32 33
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %shr.i.i = lshr i32 %primary_size.0107.i.i, 1
  %cmp8.not.i.i = icmp ult i32 %primary_size.0107.i.i, 2
  br i1 %cmp8.not.i.i, label %if.then13.i.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %primary_size.0107.i.i = phi i32 [ %18, %for.body.lr.ph.i.i ], [ %shr.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %call9.i.i = tail call i32 @drm_legacy_addmap(ptr noundef %dev, i32 noundef 0, i32 noundef %primary_size.0107.i.i, i32 noundef 5, i32 noundef 2, ptr noundef %primary.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end14.i.i_crit_edge, label %for.cond.i.i

for.body.i.i.if.end14.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then13.i.i:                                    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21, i32 noundef %call9.i.i) #7
  br label %mga_do_dma_bootstrap.exit.thread28

if.end14.i.i:                                     ; preds = %for.body.i.i.if.end14.i.i_crit_edge, %if.end6.i.i.if.end14.i.i_crit_edge
  %primary15.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %13, i32 0, i32 33
  %19 = ptrtoint ptr %primary15.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %primary15.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i, align 4
  %23 = ptrtoint ptr %primary_size7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %primary_size7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp17.not.i.i = icmp eq i32 %22, %24
  br i1 %cmp17.not.i.i, label %if.end14.i.i.if.end26.i.i_crit_edge, label %do.end.i.i

if.end14.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i.i

do.end.i.i:                                       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %24, i32 noundef %22) #11
  %25 = ptrtoint ptr %primary15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %primary15.i.i, align 4
  %size24.i.i = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %size24.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size24.i.i, align 4
  %29 = ptrtoint ptr %primary_size7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %primary_size7.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %do.end.i.i, %if.end14.i.i.if.end26.i.i_crit_edge
  %secondary_bin_count.i.i = getelementptr inbounds %struct.drm_mga_dma_bootstrap, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %secondary_bin_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %secondary_bin_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp28.not108.i.i = icmp eq i32 %31, 0
  br i1 %cmp28.not108.i.i, label %mga_do_dma_bootstrap.exit.thread35, label %for.body29.lr.ph.i.i

mga_do_dma_bootstrap.exit.thread35:               ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #7
  br label %if.end

for.body29.lr.ph.i.i:                             ; preds = %if.end26.i.i
  %secondary_bin_size.i.i = getelementptr inbounds %struct.drm_mga_dma_bootstrap, ptr %data, i32 0, i32 4
  %32 = getelementptr inbounds i8, ptr %req.i.i, i32 8
  br label %for.body29.i.i

for.body29.i.i:                                   ; preds = %for.inc35.i.i.for.body29.i.i_crit_edge, %for.body29.lr.ph.i.i
  %bin_count.0109.i.i = phi i32 [ %31, %for.body29.lr.ph.i.i ], [ %dec.i.i, %for.inc35.i.i.for.body29.i.i_crit_edge ]
  %33 = call ptr @memset(ptr %32, i32 0, i32 16)
  %34 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %bin_count.0109.i.i, ptr %req.i.i, align 4
  %35 = ptrtoint ptr %secondary_bin_size.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %secondary_bin_size.i.i, align 4
  %37 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %14, align 4
  %call31.i.i = call i32 @drm_legacy_addbufs_pci(ptr noundef %dev, ptr noundef nonnull %req.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end39.i.i, label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %for.body29.i.i
  %dec.i.i = add i32 %bin_count.0109.i.i, -1
  %cmp28.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp28.not.i.i, label %mga_do_dma_bootstrap.exit, label %for.inc35.i.i.for.body29.i.i_crit_edge

for.inc35.i.i.for.body29.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.i.i

if.end39.i.i:                                     ; preds = %for.body29.i.i
  %38 = ptrtoint ptr %secondary_bin_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %secondary_bin_count.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bin_count.0109.i.i, i32 %39)
  %cmp41.not.i.i = icmp eq i32 %bin_count.0109.i.i, %39
  br i1 %cmp41.not.i.i, label %if.end39.i.i.mga_do_dma_bootstrap.exit.thread31_crit_edge, label %do.end45.i.i

if.end39.i.i.mga_do_dma_bootstrap.exit.thread31_crit_edge: ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_do_dma_bootstrap.exit.thread31

do.end45.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call48.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %39, i32 noundef %bin_count.0109.i.i) #11
  %40 = ptrtoint ptr %secondary_bin_count.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %bin_count.0109.i.i, ptr %secondary_bin_count.i.i, align 4
  br label %mga_do_dma_bootstrap.exit.thread31

mga_do_dma_bootstrap.exit.thread31:               ; preds = %do.end45.i.i, %if.end39.i.i.mga_do_dma_bootstrap.exit.thread31_crit_edge
  %dma_access.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %13, i32 0, i32 9
  %41 = ptrtoint ptr %dma_access.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %dma_access.i.i, align 4
  %wagp_enable.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %13, i32 0, i32 10
  %42 = ptrtoint ptr %wagp_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %wagp_enable.i.i, align 4
  %43 = ptrtoint ptr %agp_mode.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %agp_mode.i, align 4
  %call55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #7
  br label %if.end

mga_do_dma_bootstrap.exit.thread28:               ; preds = %if.then13.i.i, %if.then5.i.i, %if.then.i.i
  %retval.0.i.i.ph = phi i32 [ -12, %if.then13.i.i ], [ %call.i.i, %if.then5.i.i ], [ -14, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #7
  br label %if.then

mga_do_dma_bootstrap.exit:                        ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call31.i.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %req.i.i) #7
  br label %if.then

if.then:                                          ; preds = %mga_do_dma_bootstrap.exit, %mga_do_dma_bootstrap.exit.thread28, %if.then4.i, %if.then.i
  %retval.0.i26 = phi i32 [ %call31.i.i, %mga_do_dma_bootstrap.exit ], [ %retval.0.i.i.ph, %mga_do_dma_bootstrap.exit.thread28 ], [ %call2.i, %if.then4.i ], [ %call.i, %if.then.i ]
  call fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef 1)
  br label %cleanup

if.end:                                           ; preds = %mga_do_dma_bootstrap.exit.thread31, %mga_do_dma_bootstrap.exit.thread35
  %agp_textures = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 34
  %44 = ptrtoint ptr %agp_textures to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %agp_textures, align 4
  %cmp.not = icmp eq ptr %45, null
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %48 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %data, align 4
  %49 = ptrtoint ptr %agp_textures to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %agp_textures, align 4
  %size = getelementptr inbounds %struct.drm_local_map, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %.sink = phi i32 [ 0, %if.else ], [ %52, %if.then2 ]
  %54 = getelementptr inbounds %struct.drm_mga_dma_bootstrap, ptr %data, i32 0, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %54, align 4
  %56 = ptrtoint ptr %agp_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %agp_mode.i, align 4
  %and = and i32 %57, 7
  %arrayidx = getelementptr [8 x i32], ptr @mga_dma_bootstrap.modes, i32 0, i32 %and
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx, align 4
  store i32 %59, ptr %agp_mode.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0.i25 = phi i32 [ 0, %if.end7 ], [ %retval.0.i26, %if.then ]
  ret i32 %retval.0.i25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef %full_cleanup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %irq_enabled = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_enabled, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end34_crit_edge, label %if.then2

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then2:                                         ; preds = %if.end
  %warp = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 32
  %4 = ptrtoint ptr %warp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %warp, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %if.then2.if.end8_crit_edge, label %land.lhs.true

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.then2
  %type = getelementptr inbounds %struct.drm_local_map, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp5.not = icmp eq i32 %7, 5
  br i1 %cmp5.not, label %land.lhs.true.if.end8_crit_edge, label %if.then6

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_legacy_ioremapfree(ptr noundef nonnull %5, ptr noundef %dev) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true.if.end8_crit_edge, %if.then2.if.end8_crit_edge
  %primary = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 33
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %cmp9.not = icmp eq ptr %9, null
  br i1 %cmp9.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true10

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end8
  %type12 = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp13.not = icmp eq i32 %11, 5
  br i1 %cmp13.not, label %land.lhs.true10.if.end16_crit_edge, label %if.then14

land.lhs.true10.if.end16_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_legacy_ioremapfree(ptr noundef nonnull %9, ptr noundef %dev) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %land.lhs.true10.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %agp_buffer_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %12 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %agp_buffer_map, align 4
  %cmp17.not = icmp eq ptr %13, null
  br i1 %cmp17.not, label %if.end16.if.end20_crit_edge, label %if.then18

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_legacy_ioremapfree(ptr noundef nonnull %13, ptr noundef %dev) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  %14 = ptrtoint ptr %warp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %warp, align 4
  %15 = ptrtoint ptr %primary to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %primary, align 4
  %sarea = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 29
  %16 = ptrtoint ptr %sarea to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sarea, align 4
  %sarea_priv = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %sarea_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %sarea_priv, align 4
  %18 = ptrtoint ptr %agp_buffer_map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %agp_buffer_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %full_cleanup)
  %tobool27.not = icmp eq i32 %full_cleanup, 0
  br i1 %tobool27.not, label %if.end20.if.end30_crit_edge, label %if.then28

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %used_new_dma_init = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 8
  %mmio = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 30
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %mmio, align 4
  %status = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 31
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %status, align 4
  %21 = ptrtoint ptr %used_new_dma_init to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %used_new_dma_init, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end20.if.end30_crit_edge
  %22 = call ptr @memset(ptr %3, i32 0, i32 40)
  %warp_pipe = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 4
  %head = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 2
  %23 = call ptr @memset(ptr %warp_pipe, i32 0, i32 68)
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head, align 4
  %cmp31.not = icmp eq ptr %25, null
  br i1 %cmp31.not, label %if.end30.if.end34_crit_edge, label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  %26 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %head.i = getelementptr inbounds %struct.drm_mga_private, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i, align 4
  %tobool.not8.i = icmp eq ptr %29, null
  br i1 %tobool.not8.i, label %if.then32.mga_freelist_cleanup.exit_crit_edge, label %if.then32.while.body.i_crit_edge

if.then32.while.body.i_crit_edge:                 ; preds = %if.then32
  br label %while.body.i

if.then32.mga_freelist_cleanup.exit_crit_edge:    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_cleanup.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then32.while.body.i_crit_edge
  %entry1.09.i = phi ptr [ %31, %while.body.i.while.body.i_crit_edge ], [ %29, %if.then32.while.body.i_crit_edge ]
  %30 = ptrtoint ptr %entry1.09.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %entry1.09.i, align 4
  tail call void @kfree(ptr noundef nonnull %entry1.09.i) #7
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %while.body.i.mga_freelist_cleanup.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.mga_freelist_cleanup.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_cleanup.exit

mga_freelist_cleanup.exit:                        ; preds = %while.body.i.mga_freelist_cleanup.exit_crit_edge, %if.then32.mga_freelist_cleanup.exit_crit_edge
  %tail.i = getelementptr inbounds %struct.drm_mga_private, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %tail.i, align 4
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %head.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %mga_freelist_cleanup.exit, %if.end30.if.end34_crit_edge, %if.end.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_dma_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %3, align 4
  %and9 = and i32 %9, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mga_dma_init, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %sgram.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %sgram.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sgram.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  %spec.select.i = select i1 %tobool.not.i, i32 -1072924652, i32 -1072924604
  %19 = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.select.i, ptr %19, align 4
  %maccess.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 2
  %21 = ptrtoint ptr %maccess.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maccess.i, align 4
  %maccess2.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 14
  %23 = ptrtoint ptr %maccess2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %maccess2.i, align 4
  %fb_cpp.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %fb_cpp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fb_cpp.i, align 4
  %fb_cpp3.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 19
  %26 = ptrtoint ptr %fb_cpp3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fb_cpp3.i, align 4
  %front_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 4
  %27 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %front_offset.i, align 4
  %front_offset4.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 20
  %29 = ptrtoint ptr %front_offset4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %front_offset4.i, align 4
  %front_pitch.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 5
  %30 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %front_pitch.i, align 4
  %front_pitch5.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 21
  %32 = ptrtoint ptr %front_pitch5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %front_pitch5.i, align 4
  %back_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 6
  %33 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %back_offset.i, align 4
  %back_offset6.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 22
  %35 = ptrtoint ptr %back_offset6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %back_offset6.i, align 4
  %back_pitch.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 7
  %36 = ptrtoint ptr %back_pitch.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %back_pitch.i, align 4
  %back_pitch7.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 23
  %38 = ptrtoint ptr %back_pitch7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %back_pitch7.i, align 4
  %depth_cpp.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 8
  %39 = ptrtoint ptr %depth_cpp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %depth_cpp.i, align 4
  %depth_cpp8.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 24
  %41 = ptrtoint ptr %depth_cpp8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %depth_cpp8.i, align 4
  %depth_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 9
  %42 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %depth_offset.i, align 4
  %depth_offset9.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 25
  %44 = ptrtoint ptr %depth_offset9.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %depth_offset9.i, align 4
  %depth_pitch.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 10
  %45 = ptrtoint ptr %depth_pitch.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %depth_pitch.i, align 4
  %depth_pitch10.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 26
  %47 = ptrtoint ptr %depth_pitch10.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %depth_pitch10.i, align 4
  %texture_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 11
  %48 = ptrtoint ptr %texture_offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %texture_offset.i, align 4
  %texture_offset11.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 27
  %50 = ptrtoint ptr %texture_offset11.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %texture_offset11.i, align 4
  %texture_size.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 2, i32 0, i32 12
  %51 = ptrtoint ptr %texture_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %texture_size.i, align 4
  %texture_size13.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 28
  %53 = ptrtoint ptr %texture_size13.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %texture_size13.i, align 4
  %call.i = tail call ptr @drm_legacy_getsarea(ptr noundef %dev) #7
  %sarea.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 29
  %54 = ptrtoint ptr %sarea.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %sarea.i, align 4
  %tobool15.not.i = icmp eq ptr %call.i, null
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end17.i

if.then16.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #7
  br label %if.then14

if.end17.i:                                       ; preds = %sw.bb
  %used_new_dma_init.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 8
  %55 = ptrtoint ptr %used_new_dma_init.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %used_new_dma_init.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool18.not.i = icmp eq i32 %56, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end17.i.if.end49.i_crit_edge

if.end17.i.if.end49.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

if.then19.i:                                      ; preds = %if.end17.i
  %dma_access.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 9
  %57 = ptrtoint ptr %dma_access.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %dma_access.i, align 4
  %wagp_enable.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 10
  %58 = ptrtoint ptr %wagp_enable.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %wagp_enable.i, align 4
  %status_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 5
  %59 = ptrtoint ptr %status_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status_offset.i, align 4
  %call20.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %60) #7
  %status.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 31
  %61 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call20.i, ptr %status.i, align 4
  %tobool22.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %if.then14

if.end24.i:                                       ; preds = %if.then19.i
  %mmio_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 4
  %62 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mmio_offset.i, align 4
  %call25.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %63) #7
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 30
  %64 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call25.i, ptr %mmio.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end29.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #7
  br label %if.then14

if.end29.i:                                       ; preds = %if.end24.i
  %warp_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 6
  %65 = ptrtoint ptr %warp_offset.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %warp_offset.i, align 4
  %call30.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %66) #7
  %warp.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 32
  %67 = ptrtoint ptr %warp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call30.i, ptr %warp.i, align 4
  %tobool32.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end34.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #7
  br label %if.then14

if.end34.i:                                       ; preds = %if.end29.i
  %primary_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 7
  %68 = ptrtoint ptr %primary_offset.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %primary_offset.i, align 4
  %call35.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %69) #7
  %primary.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 33
  %70 = ptrtoint ptr %primary.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call35.i, ptr %primary.i, align 4
  %tobool37.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end39.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #7
  br label %if.then14

if.end39.i:                                       ; preds = %if.end34.i
  %buffers_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 8
  %71 = ptrtoint ptr %buffers_offset.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %buffers_offset.i, align 4
  %agp_buffer_token.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 53
  %73 = ptrtoint ptr %agp_buffer_token.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %agp_buffer_token.i, align 4
  %74 = load i32, ptr %buffers_offset.i, align 4
  %call41.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %74) #7
  %agp_buffer_map.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %75 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call41.i, ptr %agp_buffer_map.i, align 4
  %tobool43.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool43.not.i, label %if.then44.i, label %if.end45.i

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #7
  br label %if.then14

if.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %warp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %warp.i, align 4
  tail call void @drm_legacy_ioremap(ptr noundef %77, ptr noundef %dev) #7
  %78 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %primary.i, align 4
  tail call void @drm_legacy_ioremap(ptr noundef %79, ptr noundef %dev) #7
  %80 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %agp_buffer_map.i, align 4
  tail call void @drm_legacy_ioremap(ptr noundef %81, ptr noundef %dev) #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end45.i, %if.end17.i.if.end49.i_crit_edge
  %82 = ptrtoint ptr %sarea.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sarea.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handle.i, align 4
  %sarea_priv_offset.i = getelementptr inbounds %struct.drm_mga_init, ptr %data, i32 0, i32 1
  %86 = ptrtoint ptr %sarea_priv_offset.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sarea_priv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %85, i32 %87
  %sarea_priv.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 1
  %88 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr.i, ptr %sarea_priv.i, align 4
  %warp51.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 32
  %89 = ptrtoint ptr %warp51.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %warp51.i, align 4
  %handle52.i = getelementptr inbounds %struct.drm_local_map, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %handle52.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handle52.i, align 4
  %tobool53.not.i = icmp eq ptr %92, null
  br i1 %tobool53.not.i, label %if.end49.i.if.then65.i_crit_edge, label %lor.lhs.false.i

if.end49.i.if.then65.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %primary54.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 33
  %93 = ptrtoint ptr %primary54.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %primary54.i, align 4
  %handle55.i = getelementptr inbounds %struct.drm_local_map, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %handle55.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %handle55.i, align 4
  %tobool56.not.i = icmp eq ptr %96, null
  br i1 %tobool56.not.i, label %lor.lhs.false.i.if.then65.i_crit_edge, label %lor.lhs.false57.i

lor.lhs.false.i.if.then65.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

lor.lhs.false57.i:                                ; preds = %lor.lhs.false.i
  %dma_access58.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 9
  %97 = ptrtoint ptr %dma_access58.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_access58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp.not.i = icmp eq i32 %98, 0
  br i1 %cmp.not.i, label %lor.lhs.false57.i.if.end66.i_crit_edge, label %land.lhs.true.i

lor.lhs.false57.i.if.end66.i_crit_edge:           ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false57.i
  %agp_buffer_map59.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %99 = ptrtoint ptr %agp_buffer_map59.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %agp_buffer_map59.i, align 4
  %cmp60.i = icmp eq ptr %100, null
  br i1 %cmp60.i, label %land.lhs.true.i.if.then65.i_crit_edge, label %lor.lhs.false61.i

land.lhs.true.i.if.then65.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

lor.lhs.false61.i:                                ; preds = %land.lhs.true.i
  %handle63.i = getelementptr inbounds %struct.drm_local_map, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %handle63.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %handle63.i, align 4
  %cmp64.i = icmp eq ptr %102, null
  br i1 %cmp64.i, label %lor.lhs.false61.i.if.then65.i_crit_edge, label %lor.lhs.false61.i.if.end66.i_crit_edge

lor.lhs.false61.i.if.end66.i_crit_edge:           ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

lor.lhs.false61.i.if.then65.i_crit_edge:          ; preds = %lor.lhs.false61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false61.i.if.then65.i_crit_edge, %land.lhs.true.i.if.then65.i_crit_edge, %lor.lhs.false.i.if.then65.i_crit_edge, %if.end49.i.if.then65.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #7
  br label %if.then14

if.end66.i:                                       ; preds = %lor.lhs.false61.i.if.end66.i_crit_edge, %lor.lhs.false57.i.if.end66.i_crit_edge
  %call67.i = tail call i32 @mga_warp_install_microcode(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %cmp68.i = icmp slt i32 %call67.i, 0
  br i1 %cmp68.i, label %if.then69.i, label %if.end70.i

if.then69.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39, i32 noundef %call67.i) #7
  br label %if.then14

if.end70.i:                                       ; preds = %if.end66.i
  %call71.i = tail call i32 @mga_warp_init(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.then73.i, label %if.end74.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40, i32 noundef %call71.i) #7
  br label %if.then14

if.end74.i:                                       ; preds = %if.end70.i
  %status75.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 31
  %103 = ptrtoint ptr %status75.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %status75.i, align 4
  %handle76.i = getelementptr inbounds %struct.drm_local_map, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %handle76.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %handle76.i, align 4
  %status77.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 6
  %107 = ptrtoint ptr %status77.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %status77.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %usec_timeout.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 7
  %108 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %usec_timeout.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp10.i.i = icmp sgt i32 %109, 0
  br i1 %cmp10.i.i, label %for.body.lr.ph.i.i, label %if.end74.i.mga_do_wait_for_idle.exit.i_crit_edge

if.end74.i.mga_do_wait_for_idle.exit.i_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_do_wait_for_idle.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end74.i
  %mmio.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 30
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %110 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i.i, align 4
  %handle.i.i = getelementptr inbounds %struct.drm_local_map, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %handle.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %113, i32 7700
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %115 = and i32 %114, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %115)
  %cmp2.i.i = icmp eq i32 %115, 512
  br i1 %cmp2.i.i, label %do.body.i.i, label %if.end.i.i

do.body.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %116 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio.i.i, align 4
  %handle4.i.i = getelementptr inbounds %struct.drm_local_map, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %handle4.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %handle4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %119, i32 8148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i.i, i8 0) #7, !srcloc !113
  br label %mga_do_wait_for_idle.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748) #7
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %121 = ptrtoint ptr %usec_timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %usec_timeout.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %122
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.mga_do_wait_for_idle.exit.i_crit_edge

if.end.i.i.mga_do_wait_for_idle.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_do_wait_for_idle.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

mga_do_wait_for_idle.exit.i:                      ; preds = %if.end.i.i.mga_do_wait_for_idle.exit.i_crit_edge, %do.body.i.i, %if.end74.i.mga_do_wait_for_idle.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %123 = ptrtoint ptr %primary54.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %primary54.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #7
  %mmio80.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 30
  %128 = ptrtoint ptr %mmio80.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mmio80.i, align 4
  %handle81.i = getelementptr inbounds %struct.drm_local_map, ptr %129, i32 0, i32 4
  %130 = ptrtoint ptr %handle81.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %handle81.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %131, i32 7768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %127) #7, !srcloc !118
  %132 = ptrtoint ptr %primary54.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %primary54.i, align 4
  %handle84.i = getelementptr inbounds %struct.drm_local_map, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %handle84.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %handle84.i, align 4
  %136 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %135, ptr %16, align 4
  %137 = load ptr, ptr %handle84.i, align 4
  %size.i = getelementptr inbounds %struct.drm_local_map, ptr %133, i32 0, i32 1
  %138 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %size.i, align 4
  %add.ptr89.i = getelementptr i8, ptr %137, i32 %139
  %end.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 1
  %140 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr89.i, ptr %end.i, align 4
  %141 = load i32, ptr %size.i, align 4
  %size94.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 2
  %142 = ptrtoint ptr %size94.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %size94.i, align 4
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 3
  %143 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %tail.i, align 4
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 4
  %144 = ptrtoint ptr %space.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %141, ptr %space.i, align 4
  %wrapped.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 5
  %145 = ptrtoint ptr %wrapped.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile i32 0, ptr %wrapped.i, align 4
  %last_flush.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 7
  %146 = ptrtoint ptr %last_flush.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %last_flush.i, align 4
  %last_wrap.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 8
  %147 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %last_wrap.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %16, i32 0, i32 9
  %148 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 5120, ptr %high_mark.i, align 4
  %149 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %133, align 4
  %151 = ptrtoint ptr %status77.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %status77.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile i32 %150, ptr %152, align 4
  %154 = load ptr, ptr %status77.i, align 4
  %arrayidx110.i = getelementptr i32, ptr %154, i32 1
  %155 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 0, ptr %arrayidx110.i, align 4
  %156 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sarea_priv.i, align 4
  %last_wrap112.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %157, i32 0, i32 24
  %158 = ptrtoint ptr %last_wrap112.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %last_wrap112.i, align 4
  %159 = load ptr, ptr %sarea_priv.i, align 4
  %last_frame.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %159, i32 0, i32 25
  %160 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %last_frame.i, align 4
  %161 = load ptr, ptr %sarea_priv.i, align 4
  %wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %161, i32 0, i32 25, i32 1
  %162 = ptrtoint ptr %wrap.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %wrap.i, align 4
  %dma1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %163 = ptrtoint ptr %dma1.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dma1.i.i, align 4
  %buf_count.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %buf_count.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.42, i32 noundef %166) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %167 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3520, i32 noundef 20) #10
  %head.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 2
  %168 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call7.i.i.i.i, ptr %head.i.i, align 4
  %cmp.i220.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i220.i, label %mga_do_wait_for_idle.exit.i.if.then118.i_crit_edge, label %do.body.i221.i

mga_do_wait_for_idle.exit.i.if.then118.i_crit_edge: ; preds = %mga_do_wait_for_idle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118.i

do.body.i221.i:                                   ; preds = %mga_do_wait_for_idle.exit.i
  %age.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %age.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %age.i.i, align 8
  %wrap.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %170 = ptrtoint ptr %wrap.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %wrap.i.i, align 4
  %buflist.i.i = getelementptr inbounds %struct.drm_device_dma, ptr %164, i32 0, i32 2
  %171 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %buf_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp970.i.i = icmp sgt i32 %172, 0
  br i1 %cmp970.i.i, label %for.body.lr.ph.i222.i, label %do.body.i221.i.cleanup_crit_edge

do.body.i221.i.cleanup_crit_edge:                 ; preds = %do.body.i221.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i222.i:                            ; preds = %do.body.i221.i
  %tail.i.i = getelementptr inbounds %struct.drm_mga_private, ptr %16, i32 0, i32 3
  br label %for.body.i223.i

for.body.i223.i:                                  ; preds = %if.end36.i.i.for.body.i223.i_crit_edge, %for.body.lr.ph.i222.i
  %i.071.i.i = phi i32 [ 0, %for.body.lr.ph.i222.i ], [ %inc.i224.i, %if.end36.i.i.for.body.i223.i_crit_edge ]
  %173 = ptrtoint ptr %buflist.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %buflist.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %174, i32 %i.071.i.i
  %175 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i.i, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_buf, ptr %176, i32 0, i32 15
  %177 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev_private.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %179 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i69.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3520, i32 noundef 20) #10
  %cmp11.i.i = icmp eq ptr %call7.i.i69.i.i, null
  br i1 %cmp11.i.i, label %for.body.i223.i.if.then118.i_crit_edge, label %if.end13.i.i

for.body.i223.i.if.then118.i_crit_edge:           ; preds = %for.body.i223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118.i

if.end13.i.i:                                     ; preds = %for.body.i223.i
  %180 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %head.i.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %184 = ptrtoint ptr %call7.i.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %call7.i.i69.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i69.i.i, i32 0, i32 1
  %185 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %181, ptr %prev.i.i, align 4
  %age18.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i69.i.i, i32 0, i32 2
  %186 = ptrtoint ptr %age18.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %age18.i.i, align 8
  %wrap21.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i69.i.i, i32 0, i32 2, i32 1
  %187 = ptrtoint ptr %wrap21.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %wrap21.i.i, align 4
  %buf24.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %call7.i.i69.i.i, i32 0, i32 3
  %188 = ptrtoint ptr %buf24.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %176, ptr %buf24.i.i, align 8
  %189 = load ptr, ptr %181, align 4
  %cmp27.not.i.i = icmp eq ptr %189, null
  br i1 %cmp27.not.i.i, label %if.end13.i.i.if.end32.i.i_crit_edge, label %if.then28.i.i

if.end13.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i

if.then28.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev31.i.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %prev31.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call7.i.i69.i.i, ptr %prev31.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then28.i.i, %if.end13.i.i.if.end32.i.i_crit_edge
  %191 = ptrtoint ptr %call7.i.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %call7.i.i69.i.i, align 8
  %cmp34.i.i = icmp eq ptr %192, null
  br i1 %cmp34.i.i, label %if.then35.i.i, label %if.end32.i.i.if.end36.i.i_crit_edge

if.end32.i.i.if.end36.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %call7.i.i69.i.i, ptr %tail.i.i, align 4
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i.if.end36.i.i_crit_edge
  %194 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call7.i.i69.i.i, ptr %178, align 4
  %discard.i.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %178, i32 0, i32 1
  %195 = ptrtoint ptr %discard.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %discard.i.i, align 4
  %dispatched.i.i = getelementptr inbounds %struct.drm_mga_buf_priv_t, ptr %178, i32 0, i32 2
  %196 = ptrtoint ptr %dispatched.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %dispatched.i.i, align 4
  %197 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %head.i.i, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call7.i.i69.i.i, ptr %198, align 4
  %inc.i224.i = add nuw nsw i32 %i.071.i.i, 1
  %200 = ptrtoint ptr %buf_count.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %buf_count.i.i, align 4
  %cmp9.i.i = icmp slt i32 %inc.i224.i, %201
  br i1 %cmp9.i.i, label %if.end36.i.i.for.body.i223.i_crit_edge, label %if.end36.i.i.cleanup_crit_edge

if.end36.i.i.cleanup_crit_edge:                   ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.i.i.for.body.i223.i_crit_edge:           ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i223.i

if.then118.i:                                     ; preds = %for.body.i223.i.if.then118.i_crit_edge, %mga_do_wait_for_idle.exit.i.if.then118.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #7
  br label %if.then14

if.then14:                                        ; preds = %if.then118.i, %if.then73.i, %if.then69.i, %if.then65.i, %if.then44.i, %if.then38.i, %if.then33.i, %if.then28.i, %if.then23.i, %if.then16.i
  %retval.0.i.ph = phi i32 [ -22, %if.then16.i ], [ -22, %if.then23.i ], [ -22, %if.then28.i ], [ -22, %if.then33.i ], [ -22, %if.then38.i ], [ -22, %if.then44.i ], [ -12, %if.then118.i ], [ %call71.i, %if.then73.i ], [ %call67.i, %if.then69.i ], [ -12, %if.then65.i ]
  tail call fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef 1)
  br label %cleanup

sw.bb17:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb17, %if.then14, %if.end36.i.i.cleanup_crit_edge, %do.body.i221.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %sw.bb17 ], [ %retval.0.i.ph, %if.then14 ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %do.body.i221.i.cleanup_crit_edge ], [ 0, %if.end36.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_dma_flush(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %lock1 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %lock1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and10 = and i32 %11, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mga_dma_flush, i32 noundef %and10, ptr noundef %13, ptr noundef %file_priv) #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.drm_lock, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and14 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, ptr @.str.12, ptr @.str.11
  %and17 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.12, ptr @.str.13
  %and21 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.12, ptr @.str.14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23) #7
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool25.not = icmp eq i32 %and1.i, 0
  br i1 %tobool25.not, label %do.end.do.end33_crit_edge, label %if.then26

do.end.do.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

if.then26:                                        ; preds = %do.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %usec_timeout.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10.i = icmp sgt i32 %19, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.then26
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 7700
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %25 = and i32 %24, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %25)
  %cmp2.i = icmp eq i32 %25, 512
  br i1 %cmp2.i, label %if.end30, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %27 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %28
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end30:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %32, i32 8148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #7, !srcloc !113
  %sarea_priv1.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sarea_priv1.i, align 4
  %primary2.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 33
  %35 = ptrtoint ptr %primary2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %primary2.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %last_wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %34, i32 0, i32 24
  %39 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %last_wrap.i, align 4
  %inc.i58 = add i32 %40, 1
  store i32 %inc.i58, ptr %last_wrap.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %inc.i58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %42 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i, align 4
  %handle.i60 = getelementptr inbounds %struct.drm_local_map, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %handle.i60 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %handle.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %45, i32 7768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %41) #7, !srcloc !118
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %wrapped) #7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #7
  br label %do.end33

do.end33:                                         ; preds = %if.end30, %do.end.do.end33_crit_edge
  %46 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags, align 4
  %and35 = and i32 %47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end33.if.end38_crit_edge, label %if.then37

do.end33.if.end38_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then37:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mga_do_dma_flush(ptr noundef %1)
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %do.end33.if.end38_crit_edge
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and40 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %if.then42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %usec_timeout.i62 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %usec_timeout.i62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %usec_timeout.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp10.i63 = icmp sgt i32 %51, 0
  br i1 %cmp10.i63, label %for.body.lr.ph.i65, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i65:                               ; preds = %if.then42
  %mmio.i64 = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  br label %for.body.i70

for.body.i70:                                     ; preds = %if.end.i76.for.body.i70_crit_edge, %for.body.lr.ph.i65
  %i.011.i66 = phi i32 [ 0, %for.body.lr.ph.i65 ], [ %inc.i74, %if.end.i76.for.body.i70_crit_edge ]
  %52 = ptrtoint ptr %mmio.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mmio.i64, align 4
  %handle.i67 = getelementptr inbounds %struct.drm_local_map, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %handle.i67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %handle.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %55, i32 7700
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %57 = and i32 %56, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %57)
  %cmp2.i69 = icmp eq i32 %57, 512
  br i1 %cmp2.i69, label %do.body.i73, label %if.end.i76

do.body.i73:                                      ; preds = %for.body.i70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %mmio.i64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i64, align 4
  %handle4.i71 = getelementptr inbounds %struct.drm_local_map, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handle4.i71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handle4.i71, align 4
  %add.ptr5.i72 = getelementptr i8, ptr %61, i32 8148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i72, i8 0) #7, !srcloc !113
  br label %cleanup

if.end.i76:                                       ; preds = %for.body.i70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748) #7
  %inc.i74 = add nuw nsw i32 %i.011.i66, 1
  %63 = ptrtoint ptr %usec_timeout.i62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usec_timeout.i62, align 4
  %cmp.i75 = icmp slt i32 %inc.i74, %64
  br i1 %cmp.i75, label %if.end.i76.for.body.i70_crit_edge, label %if.end.i76.cleanup_crit_edge

if.end.i76.cleanup_crit_edge:                     ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i76.for.body.i70_crit_edge:                ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i70

cleanup:                                          ; preds = %if.end.i76.cleanup_crit_edge, %do.body.i73, %if.then42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %do.body.i73 ], [ -16, %if.then42.cleanup_crit_edge ], [ -16, %if.then26.cleanup_crit_edge ], [ -16, %if.end.i76.cleanup_crit_edge ], [ -16, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_dma_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %5, align 4
  %and9 = and i32 %11, -2147483648
  %file_priv12 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %file_priv12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %file_priv12, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mga_dma_reset, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %sarea_priv1.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %sarea_priv1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sarea_priv1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %tail.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tail.i, align 4
  %size.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size.i, align 4
  %space.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %space.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %space.i, align 4
  %last_flush.i = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %last_flush.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %last_flush.i, align 4
  %last_wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %15, i32 0, i32 24
  %21 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %last_wrap.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_dma_buffers(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %master = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 8
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %lock = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %11, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %7, align 4
  %and10 = and i32 %13, -2147483648
  %file_priv13 = getelementptr inbounds %struct.drm_master, ptr %5, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %file_priv13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %file_priv13, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mga_dma_buffers, i32 noundef %and10, ptr noundef %15, ptr noundef %file_priv) #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %send_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %send_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %send_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp14.not = icmp eq i32 %17, 0
  br i1 %cmp14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 68
  %22 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %23, i32 noundef %17) #7
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %request_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 5
  %24 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp19 = icmp slt i32 %25, 0
  br i1 %cmp19, label %if.end18.if.then23_crit_edge, label %lor.lhs.false20

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

lor.lhs.false20:                                  ; preds = %if.end18
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp22 = icmp sgt i32 %25, %27
  br i1 %cmp22, label %lor.lhs.false20.if.then23_crit_edge, label %do.body30

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %28 = tail call i32 @llvm.read_register.i32(metadata !100) #7
  %and.i74 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i74 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task25, align 8
  %pid.i75 = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 68
  %32 = ptrtoint ptr %pid.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pid.i75, align 8
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buf_count28, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %33, i32 noundef %25, i32 noundef %35) #7
  br label %cleanup

do.body30:                                        ; preds = %lor.lhs.false20
  %wrapped = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %wrapped to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %wrapped, align 4
  %and1.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool32.not = icmp eq i32 %and1.i, 0
  br i1 %tobool32.not, label %do.body30.do.end45_crit_edge, label %if.then33

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.then33:                                        ; preds = %do.body30
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %3, i32 0, i32 30
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %41, i32 7700
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %43 = and i32 %42, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %43)
  %cmp.i.not = icmp eq i32 %43, 512
  br i1 %cmp.i.not, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mga_do_dma_wrap_end(ptr noundef %3)
  br label %do.end45

if.else:                                          ; preds = %if.then33
  %space = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %space to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %space, align 4
  %high_mark = getelementptr inbounds %struct.drm_mga_primary_buffer, ptr %3, i32 0, i32 9
  %46 = ptrtoint ptr %high_mark to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %high_mark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp39 = icmp ult i32 %45, %47
  br i1 %cmp39, label %if.else.cleanup_crit_edge, label %if.else.do.end45_crit_edge

if.else.do.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.else.do.end45_crit_edge, %if.then36, %do.body30.do.end45_crit_edge
  %granted_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 9
  %48 = ptrtoint ptr %granted_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %granted_count, align 4
  %49 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool47.not = icmp eq i32 %50, 0
  br i1 %tobool47.not, label %do.end45.cleanup_crit_edge, label %if.then48

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then48:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call fastcc i32 @mga_dma_get_buffers(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %do.end45.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then23, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then23 ], [ -16, %if.else.cleanup_crit_edge ], [ %call49, %if.then48 ], [ 0, %do.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mga_dma_get_buffers(ptr nocapture noundef readonly %dev, ptr noundef %file_priv, ptr nocapture noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %granted_count = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 9
  %0 = ptrtoint ptr %granted_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %granted_count, align 4
  %request_count = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp45 = icmp slt i32 %1, %3
  br i1 %cmp45, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %request_indices = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 7
  %request_sizes = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ %1, %for.body.lr.ph ], [ %inc12, %if.end10.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %tail1.i = getelementptr inbounds %struct.drm_mga_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %5, i32 0, i32 30
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 7768
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %sarea_priv.i = getelementptr inbounds %struct.drm_mga_private, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sarea_priv.i, align 4
  %last_wrap.i = getelementptr inbounds %struct._drm_mga_sarea, ptr %15, i32 0, i32 24
  %16 = ptrtoint ptr %last_wrap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last_wrap.i, align 4
  %age.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %7, i32 0, i32 2
  %18 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %age.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.cond.end.i_crit_edge, label %cond.true.i

for.body.cond.end.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %primary.i = getelementptr inbounds %struct.drm_mga_private, ptr %5, i32 0, i32 33
  %20 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %primary.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %sub.i = sub i32 %19, %23
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %for.body.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i, %cond.true.i ], [ 0, %for.body.cond.end.i_crit_edge ]
  %wrap7.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %7, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %wrap7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wrap7.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.43, i32 noundef %cond.i, i32 noundef %25) #7
  %primary8.i = getelementptr inbounds %struct.drm_mga_private, ptr %5, i32 0, i32 33
  %26 = ptrtoint ptr %primary8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %primary8.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %sub10.i = sub i32 %13, %29
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef %sub10.i, i32 noundef %17) #7
  %30 = ptrtoint ptr %wrap7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wrap7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %17)
  %cmp.i = icmp ult i32 %31, %17
  br i1 %cmp.i, label %cond.end.i.mga_freelist_get.exit_crit_edge, label %lor.lhs.false.i

cond.end.i.mga_freelist_get.exit_crit_edge:       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_get.exit

lor.lhs.false.i:                                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %17)
  %cmp15.i = icmp eq i32 %31, %17
  br i1 %cmp15.i, label %land.lhs.true.i, label %lor.lhs.false.i.mga_freelist_get.exit.thread_crit_edge

lor.lhs.false.i.mga_freelist_get.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_get.exit.thread

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %32 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %age.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %13)
  %cmp18.i = icmp ult i32 %33, %13
  br i1 %cmp18.i, label %land.lhs.true.i.mga_freelist_get.exit_crit_edge, label %land.lhs.true.i.mga_freelist_get.exit.thread_crit_edge

land.lhs.true.i.mga_freelist_get.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_get.exit.thread

land.lhs.true.i.mga_freelist_get.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_freelist_get.exit

mga_freelist_get.exit.thread:                     ; preds = %land.lhs.true.i.mga_freelist_get.exit.thread_crit_edge, %lor.lhs.false.i.mga_freelist_get.exit.thread_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.45) #7
  br label %cleanup

mga_freelist_get.exit:                            ; preds = %land.lhs.true.i.mga_freelist_get.exit_crit_edge, %cond.end.i.mga_freelist_get.exit_crit_edge
  %34 = ptrtoint ptr %tail1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail1.i, align 4
  %prev20.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev20.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %37, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %35, align 4
  store ptr null, ptr %prev20.i, align 4
  store ptr %37, ptr %tail1.i, align 4
  %age26.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %age26.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %age26.i, align 4
  %wrap29.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %35, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %wrap29.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %wrap29.i, align 4
  %buf.i = getelementptr inbounds %struct.drm_mga_freelist, ptr %35, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf.i, align 4
  %tobool.not = icmp eq ptr %43, null
  br i1 %tobool.not, label %mga_freelist_get.exit.cleanup_crit_edge, label %if.end

mga_freelist_get.exit.cleanup_crit_edge:          ; preds = %mga_freelist_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %mga_freelist_get.exit
  %file_priv1 = getelementptr inbounds %struct.drm_buf, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %file_priv1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %file_priv, ptr %file_priv1, align 4
  %45 = ptrtoint ptr %request_indices to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %request_indices, align 4
  %arrayidx = getelementptr i32, ptr %46, i32 %i.046
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 4, i32 -1226833920) #12, !srcloc !128
  %asmresult.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %43, i32 noundef 4) #7
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef nonnull %43, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool3.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %copy_to_user.exit
  %48 = ptrtoint ptr %request_sizes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %request_sizes, align 4
  %arrayidx6 = getelementptr i32, ptr %49, i32 %i.046
  %total = getelementptr inbounds %struct.drm_buf, ptr %43, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.48, i32 noundef 174) #7
  %call.i.i26 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i26, label %if.end5.cleanup_crit_edge, label %if.end.i.i30

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i30:                                     ; preds = %if.end5
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx6, i32 4, i32 -1226833920) #12, !srcloc !128
  %asmresult.i.i28 = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i28)
  %cmp.i.i29 = icmp eq i32 %asmresult.i.i28, 0
  br i1 %cmp.i.i29, label %copy_to_user.exit35, label %if.end.i.i30.cleanup_crit_edge

if.end.i.i30.cleanup_crit_edge:                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit35:                              ; preds = %if.end.i.i30
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total, i32 noundef 4) #7
  %call.i1.i.i32 = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx6, ptr noundef %total, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i32)
  %tobool8.not = icmp eq i32 %call.i1.i.i32, 0
  br i1 %tobool8.not, label %if.end10, label %copy_to_user.exit35.cleanup_crit_edge

copy_to_user.exit35.cleanup_crit_edge:            ; preds = %copy_to_user.exit35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %copy_to_user.exit35
  %51 = ptrtoint ptr %granted_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %granted_count, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %granted_count, align 4
  %inc12 = add nsw i32 %i.046, 1
  %53 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %request_count, align 4
  %cmp = icmp slt i32 %inc12, %54
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %copy_to_user.exit35.cleanup_crit_edge, %if.end.i.i30.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mga_freelist_get.exit.cleanup_crit_edge, %mga_freelist_get.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %mga_freelist_get.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -11, %mga_freelist_get.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit35.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -14, %if.end.i.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mga_driver_lastclose(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mga_do_cleanup_dma(ptr noundef %dev, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mga_driver_dma_quiescent(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str) #7
  %usec_timeout.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.i = icmp sgt i32 %3, 0
  br i1 %cmp10.i, label %for.body.lr.ph.i, label %entry.mga_do_wait_for_idle.exit_crit_edge

entry.mga_do_wait_for_idle.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_do_wait_for_idle.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.drm_mga_private, ptr %1, i32 0, i32 30
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 7700
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %9 = and i32 %8, 16777984
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp2.i = icmp eq i32 %9, 512
  br i1 %cmp2.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 8148
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5.i, i8 0) #7, !srcloc !113
  br label %mga_do_wait_for_idle.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %15 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %16
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mga_do_wait_for_idle.exit_crit_edge

if.end.i.mga_do_wait_for_idle.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mga_do_wait_for_idle.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mga_do_wait_for_idle.exit:                        ; preds = %if.end.i.mga_do_wait_for_idle.exit_crit_edge, %do.body.i, %entry.mga_do_wait_for_idle.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body.i ], [ -16, %entry.mga_do_wait_for_idle.exit_crit_edge ], [ -16, %if.end.i.mga_do_wait_for_idle.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_addbufs_pci(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_uninstall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremapfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_getsarea(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_findmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_legacy_ioremap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_warp_install_microcode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mga_warp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 57, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 121, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 148, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 149, i32 2}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 150, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 155, i32 2}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 187, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 188, i32 2}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 361, i32 2}
!18 = !{ptr @mga_dma_bootstrap.modes, !19, !"modes", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 780, i32 19}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1020, i32 2}
!22 = !{ptr @__func__.mga_dma_init, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @__func__.mga_dma_flush, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1045, i32 2}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1047, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__func__.mga_dma_reset, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1076, i32 2}
!33 = !{ptr @__func__.mga_dma_buffers, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1118, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1123, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 1131, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 734, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 742, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 640, i32 3}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 654, i32 3}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 674, i32 3}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 679, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @mga_do_pci_dma_bootstrap._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @mga_do_pci_dma_bootstrap._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 697, i32 3}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 702, i32 3}
!59 = !{ptr @mga_do_pci_dma_bootstrap._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @mga_do_pci_dma_bootstrap._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 713, i32 2}
!63 = !{ptr @mga_do_pci_dma_bootstrap._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @mga_do_pci_dma_bootstrap._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 834, i32 3}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 845, i32 4}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 850, i32 4}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 855, i32 4}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 860, i32 4}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 867, i32 4}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 885, i32 3}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 891, i32 3}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 897, i32 3}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 935, i32 3}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 251, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 334, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 338, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/mga/mga_dma.c", i32 351, i32 2}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!95 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{i64 5036352}
!111 = !{i64 2155123604}
!112 = !{i64 2155124037}
!113 = !{i64 5035737}
!114 = !{i64 2155125500}
!115 = !{i64 2155148456}
!116 = !{i64 2155148919}
!117 = !{i64 2155149297}
!118 = !{i64 5035934}
!119 = !{i64 2155171684}
!120 = !{i64 2155172189}
!121 = !{i64 2155172567}
!122 = !{i64 2155173285}
!123 = !{i64 2155173648}
!124 = !{i8 0, i8 2}
!125 = !{i64 2155187441}
!126 = !{i64 2155122749}
!127 = !{i64 2155175591}
!128 = !{i64 2153932979, i64 2153933004}
