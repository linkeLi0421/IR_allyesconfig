; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/r128/r128_cce.c_pt.bc'
source_filename = "../drivers/gpu/drm/r128/r128_cce.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_r128_private = type { %struct.drm_r128_ring_buffer, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_ati_pcigart_info }
%struct.drm_r128_ring_buffer = type { ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.drm_ati_pcigart_info = type { i32, i32, ptr, i32, i32, ptr, %struct.drm_local_map, i32 }
%struct.drm_local_map = type { i32, i32, i32, i32, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.72, ptr, i32, ptr, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.72 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_r128_init = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_sg_mem = type { i32, ptr, i32, ptr, ptr }
%struct.drm_r128_sarea = type { %struct.drm_r128_context_regs_t, [2 x %struct.drm_r128_texture_regs_t], i32, i32, i32, [12 x %struct.drm_clip_rect], i32, i32, i32, [2 x [65 x %struct.drm_tex_region]], [2 x i32], i32, i32, i32 }
%struct.drm_r128_context_regs_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_r128_texture_regs_t = type { i32, i32, i32, [11 x i32], i32 }
%struct.drm_clip_rect = type { i16, i16, i16, i16 }
%struct.drm_tex_region = type { i8, i8, i8, i8, i32 }
%struct.drm_r128_cce_stop = type { i32, i32 }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@__UNIQUE_ID_firmware230 = internal constant [32 x i8] c"r128.firmware=r128/r128_cce.bin\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to cleanup PCI GART!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s called without lock held, held  %d owner %p %p\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.r128_cce_init = private unnamed_addr constant [14 x i8] c"r128_cce_init\00", align 1
@__func__.r128_cce_start = private unnamed_addr constant [15 x i8] c"r128_cce_start\00", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"called with no initialization\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"while CCE running\0A\00", [45 x i8] zeroinitializer }, align 32
@__func__.r128_cce_stop = private unnamed_addr constant [14 x i8] c"r128_cce_stop\00", align 1
@__func__.r128_cce_reset = private unnamed_addr constant [15 x i8] c"r128_cce_reset\00", align 1
@__func__.r128_cce_idle = private unnamed_addr constant [14 x i8] c"r128_cce_idle\00", align 1
@__func__.r128_engine_reset = private unnamed_addr constant [18 x i8] c"r128_engine_reset\00", align 1
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"failed!\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.r128_cce_buffers = private unnamed_addr constant [17 x i8] c"r128_cce_buffers\00", align 1
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to send %d buffers via drmDMA\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Process %d trying to get %d buffers (of %d max)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"called when already initialized\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCI GART memory not allocated!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TIMEOUT problem!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Bad cce_mode!\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not find sarea!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not find mmio region!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not find cce ring region!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not find ring read pointer!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not find dma buffer region!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not find agp texture region!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to init PCI GART!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to load firmware!\0A\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r128_cce\00", [23 x i8] zeroinitializer }, align 32
@r128_cce_load_microcode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.23, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013r128_cce: Failed to register firmware\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"r128_cce_load_microcode\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/r128/r128_cce.c\00", [32 x i8] zeroinitializer }, align 32
@r128_cce_load_microcode._entry_ptr = internal global ptr @r128_cce_load_microcode._entry, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"r128/r128_cce.bin\00", [46 x i8] zeroinitializer }, align 32
@r128_cce_load_microcode._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.23, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013r128_cce: Failed to load firmware \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@r128_cce_load_microcode._entry_ptr.27 = internal global ptr @r128_cce_load_microcode._entry.25, section ".printk_index", align 4
@r128_cce_load_microcode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.22, ptr @.str.23, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013r128_cce: Bogus length %zu in firmware \22%s\22\0A\00", [49 x i8] zeroinitializer }, align 32
@r128_cce_load_microcode._entry_ptr.30 = internal global ptr @r128_cce_load_microcode._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"returning NULL!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.r128_cce_init = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 0, i32 192, i32 192, i32 128, i32 128, i32 64, i32 64, i32 64], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 6, i64 7]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 626, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 641, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 643, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 662, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 665, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 884, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 925, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 933, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 356, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 367, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 376, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 396, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 463, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 471, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 478, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 485, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 493, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 503, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 572, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 590, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 157, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 159, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 162, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 165, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 171, i32 3 }
@___asan_gen_.127 = private constant [35 x i8] c"../drivers/gpu/drm/r128/r128_cce.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 851, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 174, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"switch.table.r128_cce_init\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_firmware230, ptr @r128_cce_load_microcode._entry, ptr @r128_cce_load_microcode._entry.25, ptr @r128_cce_load_microcode._entry.28, ptr @r128_cce_load_microcode._entry_ptr, ptr @r128_cce_load_microcode._entry_ptr.27, ptr @r128_cce_load_microcode._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @switch.table.r128_cce_init], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_cce_load_microcode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_cce_load_microcode._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r128_cce_load_microcode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.r128_cce_init to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_do_cce_idle(ptr nocapture noundef readonly %dev_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %entry
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %tail = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %cce_fifo_size = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1808
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %8 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp eq i32 %7, %9
  br i1 %cmp2, label %if.then, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %for.body
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %handle6 = getelementptr inbounds %struct.drm_local_map, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle6, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 1976
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !92
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %and = and i32 %15, 4095
  %16 = ptrtoint ptr %cce_fifo_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cce_fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp11.not = icmp sge i32 %and, %17
  %and12 = and i32 %15, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  %or.cond = and i1 %cmp11.not, %tobool.not
  br i1 %or.cond, label %if.then13, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.then
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 388
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %23 = or i32 %22, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %27, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %23) #9, !srcloc !97
  %28 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp19.i = icmp sgt i32 %29, 0
  br i1 %cmp19.i, label %if.then13.for.body.i_crit_edge, label %if.then13.cleanup16_crit_edge

if.then13.cleanup16_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.then13.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio, align 4
  %handle9.i = getelementptr inbounds %struct.drm_local_map, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %handle9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %handle9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %33, i32 388
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %.mask.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup16_crit_edge, label %if.end.i

for.body.i.cleanup16_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %36 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %usec_timeout, align 4
  %cmp.i = icmp slt i32 %inc.i, %37
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup16_crit_edge

if.end.i.cleanup16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %for.body.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.029, 1
  %39 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %40
  br i1 %cmp, label %if.end15.for.body_crit_edge, label %if.end15.cleanup16_crit_edge

if.end15.cleanup16_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup16:                                        ; preds = %if.end15.cleanup16_crit_edge, %if.end.i.cleanup16_crit_edge, %for.body.i.cleanup16_crit_edge, %if.then13.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.3 = phi i32 [ -16, %if.then13.cleanup16_crit_edge ], [ -16, %entry.cleanup16_crit_edge ], [ -16, %if.end.i.cleanup16_crit_edge ], [ 0, %for.body.i.cleanup16_crit_edge ], [ -16, %if.end15.cleanup16_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_do_cleanup_cce(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_enabled = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_enabled, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end14_crit_edge, label %if.then2

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %bus_addr = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 34, i32 3
  %4 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.then2.if.end11_crit_edge, label %if.then5

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.then2
  %gart_info = getelementptr inbounds %struct.drm_r128_private, ptr %3, i32 0, i32 34
  %call7 = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then5.if.end11_crit_edge, %if.then2.if.end11_crit_edge
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dev_private, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_legacy_irq_uninstall(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ati_pcigart_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_init(ptr noundef %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_init, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #9
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 216) #12
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i
  %is_pci.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %is_pci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %is_pci.i, align 4
  %is_pci3.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %is_pci3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %is_pci3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not.i = icmp eq i32 %19, 0
  br i1 %tobool5.not.i, label %if.end2.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end2.i.if.end10.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end2.i
  %sg.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %21 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg.i, align 4
  %tobool6.not.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i, label %if.then7.i, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #9
  %23 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %irq_enabled.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %24 = ptrtoint ptr %irq_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %irq_enabled.i.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i.i, label %if.then7.i.if.then2.i.i_crit_edge, label %if.end.i.i

if.then7.i.if.then2.i.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.end.i.i:                                       ; preds = %if.then7.i
  %call.i.i = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #9
  %26 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr.i = load ptr, ptr %dev_private.i, align 4
  %tobool1.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.if.then2.i.i_crit_edge

if.end.i.i.if.then2.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i.i:                                     ; preds = %if.end.i.i.if.then2.i.i_crit_edge, %if.then7.i.if.then2.i.i_crit_edge
  %27 = phi ptr [ %.pr.i, %if.end.i.i.if.then2.i.i_crit_edge ], [ %call7.i.i.i, %if.then7.i.if.then2.i.i_crit_edge ]
  %bus_addr.i.i = getelementptr inbounds %struct.drm_r128_private, ptr %27, i32 0, i32 34, i32 3
  %28 = ptrtoint ptr %bus_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bus_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool4.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.if.end11.i.i_crit_edge, label %if.then5.i.i

if.then2.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %if.then2.i.i
  %gart_info.i.i = getelementptr inbounds %struct.drm_r128_private, ptr %27, i32 0, i32 34
  %call7.i.i = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.then5.i.i.if.end11.i.i_crit_edge

if.then5.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then9.i.i:                                     ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then9.i.i, %if.then5.i.i.if.end11.i.i_crit_edge, %if.then2.i.i.if.end11.i.i_crit_edge
  %30 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dev_private.i, align 4
  br label %cleanup

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end2.i.if.end10.i_crit_edge
  %usec_timeout.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 6
  %33 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %usec_timeout.i, align 4
  %usec_timeout11.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %usec_timeout11.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %usec_timeout11.i, align 8
  %36 = add i32 %34, -100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -100000, i32 %36)
  %37 = icmp ult i32 %36, -100000
  br i1 %37, label %if.then16.i, label %if.end19.i

if.then16.i:                                      ; preds = %if.end10.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.10) #9
  %38 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %irq_enabled.i411.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %39 = ptrtoint ptr %irq_enabled.i411.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %irq_enabled.i411.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i412.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i412.i, label %if.then16.i.if.then2.i420.i_crit_edge, label %if.end.i417.i

if.then16.i.if.then2.i420.i_crit_edge:            ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i420.i

if.end.i417.i:                                    ; preds = %if.then16.i
  %call.i413.i = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #9
  %41 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr447.i = load ptr, ptr %dev_private.i, align 4
  %tobool1.not.i416.i = icmp eq ptr %.pr447.i, null
  br i1 %tobool1.not.i416.i, label %if.end.i417.i.cleanup_crit_edge, label %if.end.i417.i.if.then2.i420.i_crit_edge

if.end.i417.i.if.then2.i420.i_crit_edge:          ; preds = %if.end.i417.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i420.i

if.end.i417.i.cleanup_crit_edge:                  ; preds = %if.end.i417.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i420.i:                                  ; preds = %if.end.i417.i.if.then2.i420.i_crit_edge, %if.then16.i.if.then2.i420.i_crit_edge
  %42 = phi ptr [ %.pr447.i, %if.end.i417.i.if.then2.i420.i_crit_edge ], [ %call7.i.i.i, %if.then16.i.if.then2.i420.i_crit_edge ]
  %bus_addr.i418.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 34, i32 3
  %43 = ptrtoint ptr %bus_addr.i418.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bus_addr.i418.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool4.not.i419.i = icmp eq i32 %44, 0
  br i1 %tobool4.not.i419.i, label %if.then2.i420.i.if.end11.i426.i_crit_edge, label %if.then5.i424.i

if.then2.i420.i.if.end11.i426.i_crit_edge:        ; preds = %if.then2.i420.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i426.i

if.then5.i424.i:                                  ; preds = %if.then2.i420.i
  %gart_info.i421.i = getelementptr inbounds %struct.drm_r128_private, ptr %42, i32 0, i32 34
  %call7.i422.i = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info.i421.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i422.i)
  %tobool8.not.i423.i = icmp eq i32 %call7.i422.i, 0
  br i1 %tobool8.not.i423.i, label %if.then9.i425.i, label %if.then5.i424.i.if.end11.i426.i_crit_edge

if.then5.i424.i.if.end11.i426.i_crit_edge:        ; preds = %if.then5.i424.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i426.i

if.then9.i425.i:                                  ; preds = %if.then5.i424.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end11.i426.i

if.end11.i426.i:                                  ; preds = %if.then9.i425.i, %if.then5.i424.i.if.end11.i426.i_crit_edge, %if.then2.i420.i.if.end11.i426.i_crit_edge
  %45 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i, align 4
  tail call void @kfree(ptr noundef %46) #9
  %47 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %dev_private.i, align 4
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  %cce_mode.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 3
  %48 = ptrtoint ptr %cce_mode.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cce_mode.i, align 4
  %cce_mode20.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %cce_mode20.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %cce_mode20.i, align 4
  %idle_count.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %idle_count.i, i32 noundef 4) #9
  %51 = ptrtoint ptr %idle_count.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 0, ptr %idle_count.i, align 4
  %52 = ptrtoint ptr %cce_mode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cce_mode.i, align 4
  %54 = xor i32 %53, -2147483648
  %55 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %54, i32 3) #9
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %55, label %if.then32.i [
    i32 5, label %if.end19.i.if.end35.i_crit_edge
    i32 6, label %if.end19.i.if.end35.i_crit_edge28
    i32 7, label %if.end19.i.if.end35.i_crit_edge29
    i32 0, label %if.end19.i.if.end35.i_crit_edge30
  ]

if.end19.i.if.end35.i_crit_edge30:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end19.i.if.end35.i_crit_edge29:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end19.i.if.end35.i_crit_edge28:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.end19.i.if.end35.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.11) #9
  %57 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call34.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end35.i:                                       ; preds = %if.end19.i.if.end35.i_crit_edge, %if.end19.i.if.end35.i_crit_edge28, %if.end19.i.if.end35.i_crit_edge29, %if.end19.i.if.end35.i_crit_edge30
  %58 = tail call i32 @llvm.fshl.i32(i32 %53, i32 %54, i32 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %58)
  %59 = icmp ult i32 %58, 16
  br i1 %59, label %switch.hole_check, label %if.end35.i.sw.epilog.i_crit_edge

if.end35.i.sw.epilog.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.hole_check:                                ; preds = %if.end35.i
  %switch.maskindex = trunc i32 %58 to i16
  %switch.shifted = lshr i16 -127, %switch.maskindex
  %60 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %switch.lobit.not = icmp eq i16 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [16 x i32], ptr @switch.table.r128_cce_init, i32 0, i32 %58
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load i32, ptr %switch.gep, align 4
  %cce_fifo_size42.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %cce_fifo_size42.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %switch.load, ptr %cce_fifo_size42.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %switch.hole_check.sw.epilog.i_crit_edge, %if.end35.i.sw.epilog.i_crit_edge
  %fb_bpp.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 7
  %63 = ptrtoint ptr %fb_bpp.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fb_bpp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %64)
  %cond.i = icmp eq i32 %64, 16
  %.sink.i = select i1 %cond.i, i32 4, i32 6
  %65 = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 16
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink.i, ptr %65, align 4
  %front_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 8
  %67 = ptrtoint ptr %front_offset.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %front_offset.i, align 4
  %front_offset47.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %front_offset47.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %front_offset47.i, align 8
  %front_pitch.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 9
  %70 = ptrtoint ptr %front_pitch.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %front_pitch.i, align 4
  %front_pitch48.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 18
  %72 = ptrtoint ptr %front_pitch48.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %front_pitch48.i, align 4
  %back_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 10
  %73 = ptrtoint ptr %back_offset.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %back_offset.i, align 4
  %back_offset49.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 19
  %75 = ptrtoint ptr %back_offset49.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %back_offset49.i, align 8
  %back_pitch.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 11
  %76 = ptrtoint ptr %back_pitch.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %back_pitch.i, align 4
  %back_pitch50.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 20
  %78 = ptrtoint ptr %back_pitch50.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %back_pitch50.i, align 4
  %depth_bpp.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 12
  %79 = ptrtoint ptr %depth_bpp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %depth_bpp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %80)
  %cond237.i = icmp eq i32 %80, 16
  %.sink451.i = select i1 %cond237.i, i32 4, i32 6
  %81 = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 21
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %.sink451.i, ptr %81, align 8
  %depth_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 13
  %83 = ptrtoint ptr %depth_offset.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %depth_offset.i, align 4
  %depth_offset56.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 22
  %85 = ptrtoint ptr %depth_offset56.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %depth_offset56.i, align 4
  %depth_pitch.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 14
  %86 = ptrtoint ptr %depth_pitch.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %depth_pitch.i, align 4
  %depth_pitch57.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 23
  %88 = ptrtoint ptr %depth_pitch57.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %depth_pitch57.i, align 8
  %span_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 15
  %89 = ptrtoint ptr %span_offset.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %span_offset.i, align 4
  %span_offset58.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 24
  %91 = ptrtoint ptr %span_offset58.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %span_offset58.i, align 4
  %92 = shl i32 %71, 18
  %shl.i = and i32 %92, -2097152
  %shr.i = lshr i32 %68, 5
  %or.i = or i32 %shl.i, %shr.i
  %front_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 25
  %93 = ptrtoint ptr %front_pitch_offset_c.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or.i, ptr %front_pitch_offset_c.i, align 8
  %94 = shl i32 %77, 18
  %shl63.i = and i32 %94, -2097152
  %shr65.i = lshr i32 %74, 5
  %or66.i = or i32 %shl63.i, %shr65.i
  %back_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 26
  %95 = ptrtoint ptr %back_pitch_offset_c.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or66.i, ptr %back_pitch_offset_c.i, align 4
  %96 = shl i32 %87, 18
  %shl69.i = and i32 %96, 2145386496
  %shr71.i = lshr i32 %84, 5
  %or72.i = or i32 %shr71.i, %shl69.i
  %or73.i = or i32 %or72.i, -2147483648
  %depth_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 27
  %97 = ptrtoint ptr %depth_pitch_offset_c.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or73.i, ptr %depth_pitch_offset_c.i, align 8
  %shl76.i = and i32 %96, -2097152
  %shr78.i = lshr i32 %90, 5
  %or79.i = or i32 %shr78.i, %shl76.i
  %span_pitch_offset_c.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 28
  %98 = ptrtoint ptr %span_pitch_offset_c.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or79.i, ptr %span_pitch_offset_c.i, align 4
  %call80.i = tail call ptr @drm_legacy_getsarea(ptr noundef %dev) #9
  %sarea.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 29
  %99 = ptrtoint ptr %sarea.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call80.i, ptr %sarea.i, align 8
  %tobool82.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool82.not.i, label %if.then83.i, label %if.end86.i

if.then83.i:                                      ; preds = %sw.epilog.i
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #9
  %100 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %irq_enabled.i428.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %101 = ptrtoint ptr %irq_enabled.i428.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %irq_enabled.i428.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i429.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i429.i, label %if.then83.i.if.then2.i437.i_crit_edge, label %if.end.i434.i

if.then83.i.if.then2.i437.i_crit_edge:            ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i437.i

if.end.i434.i:                                    ; preds = %if.then83.i
  %call.i430.i = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #9
  %103 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr449.i = load ptr, ptr %dev_private.i, align 4
  %tobool1.not.i433.i = icmp eq ptr %.pr449.i, null
  br i1 %tobool1.not.i433.i, label %if.end.i434.i.cleanup_crit_edge, label %if.end.i434.i.if.then2.i437.i_crit_edge

if.end.i434.i.if.then2.i437.i_crit_edge:          ; preds = %if.end.i434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2.i437.i

if.end.i434.i.cleanup_crit_edge:                  ; preds = %if.end.i434.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i437.i:                                  ; preds = %if.end.i434.i.if.then2.i437.i_crit_edge, %if.then83.i.if.then2.i437.i_crit_edge
  %104 = phi ptr [ %.pr449.i, %if.end.i434.i.if.then2.i437.i_crit_edge ], [ %call7.i.i.i, %if.then83.i.if.then2.i437.i_crit_edge ]
  %bus_addr.i435.i = getelementptr inbounds %struct.drm_r128_private, ptr %104, i32 0, i32 34, i32 3
  %105 = ptrtoint ptr %bus_addr.i435.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bus_addr.i435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool4.not.i436.i = icmp eq i32 %106, 0
  br i1 %tobool4.not.i436.i, label %if.then2.i437.i.if.end11.i443.i_crit_edge, label %if.then5.i441.i

if.then2.i437.i.if.end11.i443.i_crit_edge:        ; preds = %if.then2.i437.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i443.i

if.then5.i441.i:                                  ; preds = %if.then2.i437.i
  %gart_info.i438.i = getelementptr inbounds %struct.drm_r128_private, ptr %104, i32 0, i32 34
  %call7.i439.i = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info.i438.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i439.i)
  %tobool8.not.i440.i = icmp eq i32 %call7.i439.i, 0
  br i1 %tobool8.not.i440.i, label %if.then9.i442.i, label %if.then5.i441.i.if.end11.i443.i_crit_edge

if.then5.i441.i.if.end11.i443.i_crit_edge:        ; preds = %if.then5.i441.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i443.i

if.then9.i442.i:                                  ; preds = %if.then5.i441.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end11.i443.i

if.end11.i443.i:                                  ; preds = %if.then9.i442.i, %if.then5.i441.i.if.end11.i443.i_crit_edge, %if.then2.i437.i.if.end11.i443.i_crit_edge
  %107 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_private.i, align 4
  tail call void @kfree(ptr noundef %108) #9
  %109 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %dev_private.i, align 4
  br label %cleanup

if.end86.i:                                       ; preds = %sw.epilog.i
  %mmio_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 17
  %110 = ptrtoint ptr %mmio_offset.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mmio_offset.i, align 4
  %call87.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %111) #9
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 30
  %112 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call87.i, ptr %mmio.i, align 4
  %tobool89.not.i = icmp eq ptr %call87.i, null
  br i1 %tobool89.not.i, label %if.then90.i, label %if.end93.i

if.then90.i:                                      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #9
  %113 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call92.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end93.i:                                       ; preds = %if.end86.i
  %ring_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 18
  %114 = ptrtoint ptr %ring_offset.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ring_offset.i, align 4
  %call94.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %115) #9
  %cce_ring.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 31
  %116 = ptrtoint ptr %cce_ring.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call94.i, ptr %cce_ring.i, align 8
  %tobool96.not.i = icmp eq ptr %call94.i, null
  br i1 %tobool96.not.i, label %if.then97.i, label %if.end100.i

if.then97.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #9
  %117 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call99.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end100.i:                                      ; preds = %if.end93.i
  %ring_rptr_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 19
  %118 = ptrtoint ptr %ring_rptr_offset.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ring_rptr_offset.i, align 4
  %call101.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %119) #9
  %ring_rptr.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 32
  %120 = ptrtoint ptr %ring_rptr.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call101.i, ptr %ring_rptr.i, align 4
  %tobool103.not.i = icmp eq ptr %call101.i, null
  br i1 %tobool103.not.i, label %if.then104.i, label %if.end107.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #9
  %121 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call106.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end107.i:                                      ; preds = %if.end100.i
  %buffers_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 20
  %122 = ptrtoint ptr %buffers_offset.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %buffers_offset.i, align 4
  %agp_buffer_token.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 53
  %124 = ptrtoint ptr %agp_buffer_token.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %agp_buffer_token.i, align 4
  %125 = load i32, ptr %buffers_offset.i, align 4
  %call109.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %125) #9
  %agp_buffer_map.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 52
  %126 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call109.i, ptr %agp_buffer_map.i, align 4
  %tobool111.not.i = icmp eq ptr %call109.i, null
  br i1 %tobool111.not.i, label %if.then112.i, label %if.end115.i

if.then112.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #9
  %127 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call114.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end115.i:                                      ; preds = %if.end107.i
  %128 = ptrtoint ptr %is_pci3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %is_pci3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool117.not.i = icmp eq i32 %129, 0
  br i1 %tobool117.not.i, label %if.then118.i, label %if.end115.i.if.end126.i_crit_edge

if.end115.i.if.end126.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then118.i:                                     ; preds = %if.end115.i
  %agp_textures_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 21
  %130 = ptrtoint ptr %agp_textures_offset.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %agp_textures_offset.i, align 4
  %call119.i = tail call ptr @drm_legacy_findmap(ptr noundef %dev, i32 noundef %131) #9
  %agp_textures.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 33
  %132 = ptrtoint ptr %agp_textures.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call119.i, ptr %agp_textures.i, align 8
  %tobool121.not.i = icmp eq ptr %call119.i, null
  br i1 %tobool121.not.i, label %if.then122.i, label %if.then118.i.if.end126.i_crit_edge

if.then118.i.if.end126.i_crit_edge:               ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then122.i:                                     ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #9
  %133 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call124.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

if.end126.i:                                      ; preds = %if.then118.i.if.end126.i_crit_edge, %if.end115.i.if.end126.i_crit_edge
  %134 = ptrtoint ptr %sarea.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sarea.i, align 8
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %handle.i, align 4
  %sarea_priv_offset.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 1
  %138 = ptrtoint ptr %sarea_priv_offset.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %sarea_priv_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %137, i32 %139
  %sarea_priv.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %add.ptr.i, ptr %sarea_priv.i, align 8
  %141 = ptrtoint ptr %cce_ring.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cce_ring.i, align 8
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %142, align 4
  %145 = inttoptr i32 %144 to ptr
  %handle130.i = getelementptr inbounds %struct.drm_local_map, ptr %142, i32 0, i32 4
  %146 = ptrtoint ptr %handle130.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %145, ptr %handle130.i, align 4
  %147 = ptrtoint ptr %ring_rptr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ring_rptr.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %151 = inttoptr i32 %150 to ptr
  %handle134.i = getelementptr inbounds %struct.drm_local_map, ptr %148, i32 0, i32 4
  %152 = ptrtoint ptr %handle134.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %handle134.i, align 4
  %153 = ptrtoint ptr %agp_buffer_map.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %agp_buffer_map.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %157 = inttoptr i32 %156 to ptr
  %handle138.i = getelementptr inbounds %struct.drm_local_map, ptr %154, i32 0, i32 4
  %158 = ptrtoint ptr %handle138.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %handle138.i, align 4
  %sg139.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %159 = ptrtoint ptr %sg139.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sg139.i, align 4
  %virtual.i = getelementptr inbounds %struct.drm_sg_mem, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %virtual.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %virtual.i, align 4
  %163 = ptrtoint ptr %162 to i32
  %cce_buffers_offset.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 9
  %164 = ptrtoint ptr %cce_buffers_offset.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %cce_buffers_offset.i, align 8
  %165 = load ptr, ptr %cce_ring.i, align 8
  %handle141.i = getelementptr inbounds %struct.drm_local_map, ptr %165, i32 0, i32 4
  %166 = ptrtoint ptr %handle141.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %handle141.i, align 4
  %168 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %167, ptr %call7.i.i.i, align 8
  %169 = load ptr, ptr %handle141.i, align 4
  %ring_size.i = getelementptr inbounds %struct.drm_r128_init, ptr %data, i32 0, i32 5
  %170 = ptrtoint ptr %ring_size.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ring_size.i, align 4
  %div144406.i = lshr i32 %171, 2
  %add.ptr145.i = getelementptr i32, ptr %169, i32 %div144406.i
  %end.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %call7.i.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr145.i, ptr %end.i, align 4
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %call7.i.i.i, i32 0, i32 2
  %173 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %171, ptr %size.i, align 8
  %div150.i = sdiv i32 %171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div150.i)
  %cmp.i.i = icmp ugt i32 %div150.i, 1
  %sub.i445.i = add nsw i32 %div150.i, -1
  %174 = tail call i32 @llvm.ctlz.i32(i32 %sub.i445.i, i1 true) #9, !range !100
  %add.i.i = sub nuw nsw i32 32, %174
  %cond186.i = select i1 %cmp.i.i, i32 %add.i.i, i32 0
  %size_l2qw.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %call7.i.i.i, i32 0, i32 3
  %175 = ptrtoint ptr %size_l2qw.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %cond186.i, ptr %size_l2qw.i, align 4
  %sub191.i = add nsw i32 %div144406.i, -1
  %tail_mask.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %call7.i.i.i, i32 0, i32 5
  %176 = ptrtoint ptr %tail_mask.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %sub191.i, ptr %tail_mask.i, align 4
  %high_mark.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %call7.i.i.i, i32 0, i32 7
  %177 = ptrtoint ptr %high_mark.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 128, ptr %high_mark.i, align 4
  %178 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sarea_priv.i, align 8
  %last_frame.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %179, i32 0, i32 7
  %180 = ptrtoint ptr %last_frame.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %last_frame.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %181 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sarea_priv.i, align 8
  %last_frame196.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %182, i32 0, i32 7
  %183 = ptrtoint ptr %last_frame196.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %last_frame196.i, align 4
  %185 = tail call i32 @llvm.bswap.i32(i32 %184) #9
  %186 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i, align 4
  %handle198.i = getelementptr inbounds %struct.drm_local_map, ptr %187, i32 0, i32 4
  %188 = ptrtoint ptr %handle198.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %handle198.i, align 4
  %add.ptr199.i = getelementptr i8, ptr %189, i32 5600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199.i, i32 %185) #9, !srcloc !97
  %190 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %sarea_priv.i, align 8
  %last_dispatch.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %last_dispatch.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %last_dispatch.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %193 = ptrtoint ptr %sarea_priv.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sarea_priv.i, align 8
  %last_dispatch205.i = getelementptr inbounds %struct.drm_r128_sarea, ptr %194, i32 0, i32 8
  %195 = ptrtoint ptr %last_dispatch205.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %last_dispatch205.i, align 4
  %197 = tail call i32 @llvm.bswap.i32(i32 %196) #9
  %198 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mmio.i, align 4
  %handle207.i = getelementptr inbounds %struct.drm_local_map, ptr %199, i32 0, i32 4
  %200 = ptrtoint ptr %handle207.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %handle207.i, align 4
  %add.ptr208.i = getelementptr i8, ptr %201, i32 5604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208.i, i32 %197) #9, !srcloc !97
  %gart_info.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34
  %table_mask.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34, i32 4
  %202 = ptrtoint ptr %table_mask.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 -1, ptr %table_mask.i, align 4
  %203 = ptrtoint ptr %gart_info.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1, ptr %gart_info.i, align 4
  %table_size.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34, i32 7
  %204 = ptrtoint ptr %table_size.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 32768, ptr %table_size.i, align 4
  %addr.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34, i32 2
  %205 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %addr.i, align 4
  %bus_addr.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34, i32 3
  %206 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %bus_addr.i, align 8
  %gart_reg_if.i = getelementptr inbounds %struct.drm_r128_private, ptr %call7.i.i.i, i32 0, i32 34, i32 1
  %207 = ptrtoint ptr %gart_reg_if.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 1, ptr %gart_reg_if.i, align 8
  %call215.i = tail call i32 @drm_ati_pcigart_init(ptr noundef %dev, ptr noundef %gart_info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i)
  %tobool216.not.i = icmp eq i32 %call215.i, 0
  br i1 %tobool216.not.i, label %do.body221.i, label %if.then217.i

if.then217.i:                                     ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #9
  %208 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  %call219.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

do.body221.i:                                     ; preds = %if.end126.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %209 = ptrtoint ptr %bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %bus_addr.i, align 8
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #9
  %212 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %mmio.i, align 4
  %handle227.i = getelementptr inbounds %struct.drm_local_map, ptr %213, i32 0, i32 4
  %214 = ptrtoint ptr %handle227.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %handle227.i, align 4
  %add.ptr228.i = getelementptr i8, ptr %215, i32 380
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228.i, i32 %211) #9, !srcloc !97
  tail call fastcc void @r128_cce_init_ring_buffer(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i) #9
  %call229.i = tail call fastcc i32 @r128_cce_load_microcode(ptr noundef nonnull %call7.i.i.i) #9
  %216 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %call7.i.i.i, ptr %dev_private.i, align 4
  tail call fastcc void @r128_do_engine_reset(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i)
  %tobool232.not.i = icmp eq i32 %call229.i, 0
  br i1 %tobool232.not.i, label %do.body221.i.cleanup_crit_edge, label %if.then233.i

do.body221.i.cleanup_crit_edge:                   ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then233.i:                                     ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #9
  %call234.i = tail call i32 @r128_do_cleanup_cce(ptr noundef %dev) #9
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  %irq_enabled.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 55
  %217 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %irq_enabled.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %218)
  %tobool.not.i22 = icmp eq i8 %218, 0
  br i1 %tobool.not.i22, label %sw.bb13.if.end.i25_crit_edge, label %if.then.i23

sw.bb13.if.end.i25_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

if.then.i23:                                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %dev) #9
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i23, %sw.bb13.if.end.i25_crit_edge
  %dev_private.i24 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %219 = ptrtoint ptr %dev_private.i24 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev_private.i24, align 4
  %tobool1.not.i = icmp eq ptr %220, null
  br i1 %tobool1.not.i, label %if.end.i25.cleanup_crit_edge, label %if.then2.i

if.end.i25.cleanup_crit_edge:                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i25
  %bus_addr.i26 = getelementptr inbounds %struct.drm_r128_private, ptr %220, i32 0, i32 34, i32 3
  %221 = ptrtoint ptr %bus_addr.i26 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %bus_addr.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool4.not.i = icmp eq i32 %222, 0
  br i1 %tobool4.not.i, label %if.then2.i.if.end11.i_crit_edge, label %if.then5.i

if.then2.i.if.end11.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.then2.i
  %gart_info.i27 = getelementptr inbounds %struct.drm_r128_private, ptr %220, i32 0, i32 34
  %call7.i = tail call i32 @drm_ati_pcigart_cleanup(ptr noundef %dev, ptr noundef %gart_info.i27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then5.i.if.end11.i_crit_edge

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.then5.i.if.end11.i_crit_edge, %if.then2.i.if.end11.i_crit_edge
  %223 = ptrtoint ptr %dev_private.i24 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev_private.i24, align 4
  tail call void @kfree(ptr noundef %224) #9
  %225 = ptrtoint ptr %dev_private.i24 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr null, ptr %dev_private.i24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i, %if.end.i25.cleanup_crit_edge, %if.then233.i, %do.body221.i.cleanup_crit_edge, %if.then217.i, %if.then122.i, %if.then112.i, %if.then104.i, %if.then97.i, %if.then90.i, %if.end11.i443.i, %if.end.i434.i.cleanup_crit_edge, %if.then32.i, %if.end11.i426.i, %if.end.i417.i.cleanup_crit_edge, %if.end11.i.i, %if.end.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %if.then.i ], [ -22, %if.then32.i ], [ %call215.i, %if.then217.i ], [ -22, %if.then122.i ], [ -22, %if.then112.i ], [ -22, %if.then104.i ], [ -22, %if.then97.i ], [ -22, %if.then90.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call229.i, %if.then233.i ], [ 0, %do.body221.i.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ -22, %if.end11.i.i ], [ -22, %if.end.i417.i.cleanup_crit_edge ], [ -22, %if.end11.i426.i ], [ -22, %if.end.i434.i.cleanup_crit_edge ], [ -22, %if.end11.i443.i ], [ 0, %if.end.i25.cleanup_crit_edge ], [ 0, %if.end11.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_start(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_start, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  %cce_running = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cce_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cce_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %do.end18.if.then22_crit_edge

do.end18.if.then22_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

lor.lhs.false20:                                  ; preds = %do.end18
  %cce_mode = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %cce_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cce_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %lor.lhs.false20.if.then22_crit_edge, label %if.end23

lor.lhs.false20.if.then22_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %lor.lhs.false20.if.then22_crit_edge, %do.end18.if.then22_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @r128_do_wait_for_idle(ptr noundef nonnull %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %cce_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cce_mode, align 4
  %size_l2qw.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %size_l2qw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size_l2qw.i, align 4
  %or.i = or i32 %19, %21
  %or1.i = or i32 %or.i, 134217728
  %22 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #9
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #9, !srcloc !97
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %handle3.i = getelementptr inbounds %struct.drm_local_map, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %handle3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %handle3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 2032
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %handle10.i = getelementptr inbounds %struct.drm_local_map, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %handle10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %35, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 64) #9, !srcloc !97
  %36 = ptrtoint ptr %cce_running to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %cce_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.then22 ], [ 0, %if.end23 ], [ -22, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_stop(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_stop, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %do.end18.if.end21_crit_edge, label %if.then20

do.end18.if.end21_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1812
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %21 = or i32 %20, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %21) #9, !srcloc !97
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end18.if.end21_crit_edge
  %idle = getelementptr inbounds %struct.drm_r128_cce_stop, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not = icmp eq i32 %27, 0
  br i1 %tobool22.not, label %if.end21.if.end27_crit_edge, label %if.then23

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  %call = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then23.if.end27_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23.if.end27_crit_edge, %if.end21.if.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %mmio.i42 = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %28 = ptrtoint ptr %mmio.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i42, align 4
  %handle.i43 = getelementptr inbounds %struct.drm_local_map, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %handle.i43 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %31, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 0) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %mmio.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i42, align 4
  %handle4.i45 = getelementptr inbounds %struct.drm_local_map, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %handle4.i45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle4.i45, align 4
  %add.ptr5.i46 = getelementptr i8, ptr %35, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i46, i32 8) #9, !srcloc !97
  %cce_running.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %cce_running.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %cce_running.i, align 4
  tail call fastcc void @r128_do_engine_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then23.cleanup_crit_edge, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end27 ], [ -22, %if.then15 ], [ %call, %if.then23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_do_engine_reset(ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 388
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %7 = or i32 %6, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %7) #9, !srcloc !97
  %usec_timeout.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19.i = icmp sgt i32 %13, 0
  br i1 %cmp19.i, label %entry.for.body.i_crit_edge, label %entry.r128_do_pixcache_flush.exit_crit_edge

entry.r128_do_pixcache_flush.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_do_pixcache_flush.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.020.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %handle9.i = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 388
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %.mask.i = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.body.i.r128_do_pixcache_flush.exit_crit_edge, label %if.end.i

for.body.i.r128_do_pixcache_flush.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_do_pixcache_flush.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %20 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %21
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.r128_do_pixcache_flush.exit_crit_edge

if.end.i.r128_do_pixcache_flush.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_do_pixcache_flush.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

r128_do_pixcache_flush.exit:                      ; preds = %if.end.i.r128_do_pixcache_flush.exit_crit_edge, %for.body.i.r128_do_pixcache_flush.exit_crit_edge, %entry.r128_do_pixcache_flush.exit_crit_edge
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %27 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %mmio.i1 = getelementptr inbounds %struct.drm_r128_private, ptr %28, i32 0, i32 30
  %29 = ptrtoint ptr %mmio.i1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i1, align 4
  %handle.i2 = getelementptr inbounds %struct.drm_local_map, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %handle.i2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %handle.i2, align 4
  %add.ptr.i3 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3, i8 15) #9, !srcloc !113
  %33 = ptrtoint ptr %mmio.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i1, align 4
  %handle2.i = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio.i, align 4
  %handle6 = getelementptr inbounds %struct.drm_local_map, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %handle6, align 4
  %add.ptr7 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 -113) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  %42 = or i32 %37, 768
  %43 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i, align 4
  %handle13 = getelementptr inbounds %struct.drm_local_map, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %handle13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle13, align 4
  %add.ptr14 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %42) #9, !srcloc !97
  %47 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i, align 4
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %handle20, align 4
  %add.ptr21 = getelementptr i8, ptr %50, i32 240
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !92
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %or28 = or i32 %52, 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %54 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio.i, align 4
  %handle30 = getelementptr inbounds %struct.drm_local_map, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %handle30 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %handle30, align 4
  %add.ptr31 = getelementptr i8, ptr %57, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %53) #9, !srcloc !97
  %58 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mmio.i, align 4
  %handle35 = getelementptr inbounds %struct.drm_local_map, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %handle35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handle35, align 4
  %add.ptr36 = getelementptr i8, ptr %61, i32 240
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %and = and i32 %52, -2
  %63 = tail call i32 @llvm.bswap.i32(i32 %and)
  %64 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i, align 4
  %handle44 = getelementptr inbounds %struct.drm_local_map, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %handle44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %handle44, align 4
  %add.ptr45 = getelementptr i8, ptr %67, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %63) #9, !srcloc !97
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %handle49 = getelementptr inbounds %struct.drm_local_map, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %handle49 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %handle49, align 4
  %add.ptr50 = getelementptr i8, ptr %71, i32 240
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmio.i, align 4
  %handle59 = getelementptr inbounds %struct.drm_local_map, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %handle59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle59, align 4
  %add.ptr60 = getelementptr i8, ptr %76, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 -113) #9, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %77 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio.i, align 4
  %handle65 = getelementptr inbounds %struct.drm_local_map, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %handle65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %handle65, align 4
  %add.ptr66 = getelementptr i8, ptr %80, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %37) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  %handle73 = getelementptr inbounds %struct.drm_local_map, ptr %82, i32 0, i32 4
  %83 = ptrtoint ptr %handle73 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %handle73, align 4
  %add.ptr74 = getelementptr i8, ptr %84, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %26) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mmio.i, align 4
  %handle79 = getelementptr inbounds %struct.drm_local_map, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %handle79 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %handle79, align 4
  %add.ptr80 = getelementptr i8, ptr %88, i32 240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %51) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mmio.i, align 4
  %handle.i5 = getelementptr inbounds %struct.drm_local_map, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %handle.i5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %handle.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %92, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 0) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %93 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mmio.i, align 4
  %handle4.i7 = getelementptr inbounds %struct.drm_local_map, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %handle4.i7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %handle4.i7, align 4
  %add.ptr5.i8 = getelementptr i8, ptr %96, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i8, i32 0) #9, !srcloc !97
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %tail.i, align 4
  %cce_running = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 4
  %98 = ptrtoint ptr %cce_running to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %cce_running, align 4
  %dma1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %99 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma1.i, align 4
  %buf_count.i = getelementptr inbounds %struct.drm_device_dma, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp5.i = icmp sgt i32 %102, 0
  br i1 %cmp5.i, label %for.body.lr.ph.i, label %r128_do_pixcache_flush.exit.r128_freelist_reset.exit_crit_edge

r128_do_pixcache_flush.exit.r128_freelist_reset.exit_crit_edge: ; preds = %r128_do_pixcache_flush.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_freelist_reset.exit

for.body.lr.ph.i:                                 ; preds = %r128_do_pixcache_flush.exit
  %buflist.i = getelementptr inbounds %struct.drm_device_dma, ptr %100, i32 0, i32 2
  br label %for.body.i12

for.body.i12:                                     ; preds = %for.body.i12.for.body.i12_crit_edge, %for.body.lr.ph.i
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i10, %for.body.i12.for.body.i12_crit_edge ]
  %103 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %buflist.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %104, i32 %i.06.i
  %105 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i, align 4
  %dev_private.i9 = getelementptr inbounds %struct.drm_buf, ptr %106, i32 0, i32 15
  %107 = ptrtoint ptr %dev_private.i9 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_private.i9, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %108, align 4
  %inc.i10 = add nuw nsw i32 %i.06.i, 1
  %110 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %buf_count.i, align 4
  %cmp.i11 = icmp slt i32 %inc.i10, %111
  br i1 %cmp.i11, label %for.body.i12.for.body.i12_crit_edge, label %for.body.i12.r128_freelist_reset.exit_crit_edge

for.body.i12.r128_freelist_reset.exit_crit_edge:  ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_freelist_reset.exit

for.body.i12.for.body.i12_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i12

r128_freelist_reset.exit:                         ; preds = %for.body.i12.r128_freelist_reset.exit_crit_edge, %r128_do_pixcache_flush.exit.r128_freelist_reset.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_reset, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #9, !srcloc !97
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tail.i, align 4
  %cce_running = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %cce_running to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %cce_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end18 ], [ -22, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_idle(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_idle, i32 noundef %and9, ptr noundef %13, ptr noundef %file_priv) #9
  br label %cleanup

do.body13:                                        ; preds = %lor.lhs.false
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %if.then15, label %do.end18

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %cleanup

do.end18:                                         ; preds = %do.body13
  %cce_running = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cce_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cce_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool19.not = icmp eq i32 %15, 0
  br i1 %tobool19.not, label %do.end18.if.end21_crit_edge, label %if.then20

do.end18.if.end21_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %1, i32 0, i32 30
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 1812
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %21 = or i32 %20, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %21) #9, !srcloc !97
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %do.end18.if.end21_crit_edge
  %call = tail call i32 @r128_do_cce_idle(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end21 ], [ -22, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_engine_reset(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv4 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %file_priv4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file_priv4, align 4
  %cmp.not = icmp eq ptr %7, %file_priv
  br i1 %cmp.not, label %do.body13, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_engine_reset, i32 noundef %and9, ptr noundef %11, ptr noundef %file_priv) #9
  br label %return

do.body13:                                        ; preds = %lor.lhs.false
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.then15, label %do.end17

if.then15:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #9
  br label %return

do.end17:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @r128_do_engine_reset(ptr noundef %dev)
  br label %return

return:                                           ; preds = %do.end17, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %do.end17 ], [ -22, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @r128_fullscreen(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %file_priv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r128_freelist_reset(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %buflist = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %buflist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buflist, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.06
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %dev_private = getelementptr inbounds %struct.drm_buf, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %11 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buf_count, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_wait_ring(ptr nocapture noundef %dev_priv, i32 noundef %n) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usec_timeout = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %tail.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 4
  %space.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 6
  %size.i = getelementptr inbounds %struct.drm_r128_ring_buffer, ptr %dev_priv, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 1808
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tail.i, align 4
  %sub.i = sub i32 %7, %9
  %mul.i = shl i32 %sub.i, 2
  %10 = ptrtoint ptr %space.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %space.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  br i1 %cmp.i, label %if.then.i, label %for.body.r128_update_ring_snapshot.exit_crit_edge

for.body.r128_update_ring_snapshot.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_update_ring_snapshot.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size.i, align 4
  %add.i = add i32 %12, %mul.i
  %13 = ptrtoint ptr %space.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %space.i, align 4
  br label %r128_update_ring_snapshot.exit

r128_update_ring_snapshot.exit:                   ; preds = %if.then.i, %for.body.r128_update_ring_snapshot.exit_crit_edge
  %14 = ptrtoint ptr %space.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %space.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %n)
  %cmp2.not = icmp slt i32 %15, %n
  br i1 %cmp2.not, label %if.end, label %r128_update_ring_snapshot.exit.cleanup_crit_edge

r128_update_ring_snapshot.exit.cleanup_crit_edge: ; preds = %r128_update_ring_snapshot.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %r128_update_ring_snapshot.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.08, 1
  %17 = ptrtoint ptr %usec_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usec_timeout, align 4
  %cmp = icmp slt i32 %inc, %18
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %r128_update_ring_snapshot.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %for.end ], [ 0, %r128_update_ring_snapshot.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @r128_cce_buffers(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %file_priv5 = getelementptr inbounds %struct.drm_master, ptr %3, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %file_priv5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %file_priv5, align 4
  %cmp.not = icmp eq ptr %9, %file_priv
  br i1 %cmp.not, label %do.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.r128_cce_buffers, i32 noundef %and10, ptr noundef %13, ptr noundef %file_priv) #9
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %send_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %send_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %send_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14.not = icmp eq i32 %15, 0
  br i1 %cmp14.not, label %if.end18, label %if.then15

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 68
  %20 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pid.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %15) #9
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %request_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %request_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp19 = icmp slt i32 %23, 0
  br i1 %cmp19, label %if.end18.if.then23_crit_edge, label %lor.lhs.false20

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

lor.lhs.false20:                                  ; preds = %if.end18
  %buf_count = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %buf_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp22 = icmp sgt i32 %23, %25
  br i1 %cmp22, label %lor.lhs.false20.if.then23_crit_edge, label %if.end29

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #9
  %and.i52 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i52 to ptr
  %task25 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %task25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task25, align 8
  %pid.i53 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 68
  %30 = ptrtoint ptr %pid.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pid.i53, align 8
  %buf_count28 = getelementptr inbounds %struct.drm_device_dma, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %buf_count28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf_count28, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef %23, i32 noundef %33) #9
  br label %cleanup

if.end29:                                         ; preds = %lor.lhs.false20
  %granted_count = getelementptr inbounds %struct.drm_dma, ptr %data, i32 0, i32 9
  %34 = ptrtoint ptr %granted_count to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %granted_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not = icmp eq i32 %23, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call fastcc i32 @r128_cce_get_buffers(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %data)
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end29.cleanup_crit_edge, %if.then23, %if.then15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then15 ], [ -22, %if.then23 ], [ %call33, %if.then32 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_get_buffers(ptr nocapture noundef readonly %dev, ptr noundef %file_priv, ptr nocapture noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %cmp50 = icmp slt i32 %1, %3
  br i1 %cmp50, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dma1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 45
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %request_indices = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 7
  %request_sizes = getelementptr inbounds %struct.drm_dma, ptr %d, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ %1, %for.body.lr.ph ], [ %inc12, %if.end10.for.body_crit_edge ]
  %4 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma1.i, align 4
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  %buf_count.i = getelementptr inbounds %struct.drm_device_dma, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp51.i = icmp sgt i32 %9, 0
  br i1 %cmp51.i, label %for.body.lr.ph.i, label %for.body.for.cond3.preheader.i_crit_edge

for.body.for.cond3.preheader.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i

for.body.lr.ph.i:                                 ; preds = %for.body
  %buflist.i = getelementptr inbounds %struct.drm_device_dma, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %buflist.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buflist.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.for.cond3.preheader.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.for.cond3.preheader.i_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond.i.for.cond3.preheader.i_crit_edge, %for.body.for.cond3.preheader.i_crit_edge
  %usec_timeout.i = getelementptr inbounds %struct.drm_r128_private, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp456.i = icmp sgt i32 %13, 0
  br i1 %cmp456.i, label %for.body5.lr.ph.i, label %for.cond3.preheader.i.r128_freelist_get.exit.thread_crit_edge

for.cond3.preheader.i.r128_freelist_get.exit.thread_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_freelist_get.exit.thread

for.body5.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %7, i32 0, i32 30
  %buflist11.i = getelementptr inbounds %struct.drm_device_dma, ptr %5, i32 0, i32 2
  br label %for.body5.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.052.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %file_priv.i = getelementptr inbounds %struct.drm_buf, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %file_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %file_priv.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %for.body.i.r128_freelist_get.exit_crit_edge, label %for.cond.i

for.body.i.r128_freelist_get.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_freelist_get.exit

for.body5.i:                                      ; preds = %for.inc22.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %t.057.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc23.i, %for.inc22.i.for.body5.i_crit_edge ]
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 5604
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %24 = ptrtoint ptr %buf_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp954.i = icmp sgt i32 %25, 0
  br i1 %cmp954.i, label %for.body10.lr.ph.i, label %for.body5.i.for.inc22.i_crit_edge

for.body5.i.for.inc22.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.body10.lr.ph.i:                               ; preds = %for.body5.i
  %26 = ptrtoint ptr %buflist11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buflist11.i, align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc19.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %i.155.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc20.i, %for.inc19.i.for.body10.i_crit_edge ]
  %arrayidx12.i = getelementptr ptr, ptr %27, i32 %i.155.i
  %28 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx12.i, align 4
  %dev_private13.i = getelementptr inbounds %struct.drm_buf, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev_private13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private13.i, align 4
  %pending.i = getelementptr inbounds %struct.drm_buf, ptr %29, i32 0, i32 9
  %32 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not.i = icmp eq i32 %33, 0
  br i1 %tobool14.not.i, label %for.body10.i.for.inc19.i_crit_edge, label %land.lhs.true.i

for.body10.i.for.inc19.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.i

land.lhs.true.i:                                  ; preds = %for.body10.i
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %23)
  %cmp15.not.i = icmp ugt i32 %35, %23
  br i1 %cmp15.not.i, label %land.lhs.true.i.for.inc19.i_crit_edge, label %cleanup.thread.i

land.lhs.true.i.for.inc19.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc19.i

cleanup.thread.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %pending.i.le = getelementptr inbounds %struct.drm_buf, ptr %29, i32 0, i32 9
  %36 = ptrtoint ptr %pending.i.le to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 0, ptr %pending.i.le, align 4
  br label %r128_freelist_get.exit

for.inc19.i:                                      ; preds = %land.lhs.true.i.for.inc19.i_crit_edge, %for.body10.i.for.inc19.i_crit_edge
  %inc20.i = add nuw nsw i32 %i.155.i, 1
  %exitcond61.not.i = icmp eq i32 %inc20.i, %25
  br i1 %exitcond61.not.i, label %for.inc19.i.for.inc22.i_crit_edge, label %for.inc19.i.for.body10.i_crit_edge

for.inc19.i.for.body10.i_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.inc19.i.for.inc22.i_crit_edge:                ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %for.inc19.i.for.inc22.i_crit_edge, %for.body5.i.for.inc22.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #9
  %inc23.i = add nuw nsw i32 %t.057.i, 1
  %38 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %usec_timeout.i, align 4
  %cmp4.i = icmp slt i32 %inc23.i, %39
  br i1 %cmp4.i, label %for.inc22.i.for.body5.i_crit_edge, label %for.inc22.i.r128_freelist_get.exit.thread_crit_edge

for.inc22.i.r128_freelist_get.exit.thread_crit_edge: ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %r128_freelist_get.exit.thread

for.inc22.i.for.body5.i_crit_edge:                ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

r128_freelist_get.exit.thread:                    ; preds = %for.inc22.i.r128_freelist_get.exit.thread_crit_edge, %for.cond3.preheader.i.r128_freelist_get.exit.thread_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.31) #9
  br label %cleanup

r128_freelist_get.exit:                           ; preds = %cleanup.thread.i, %for.body.i.r128_freelist_get.exit_crit_edge
  %retval.2.i = phi ptr [ %29, %cleanup.thread.i ], [ %15, %for.body.i.r128_freelist_get.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool.not, label %r128_freelist_get.exit.cleanup_crit_edge, label %if.end

r128_freelist_get.exit.cleanup_crit_edge:         ; preds = %r128_freelist_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %r128_freelist_get.exit
  %file_priv1 = getelementptr inbounds %struct.drm_buf, ptr %retval.2.i, i32 0, i32 10
  %40 = ptrtoint ptr %file_priv1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %file_priv, ptr %file_priv1, align 4
  %41 = ptrtoint ptr %request_indices to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %request_indices, align 4
  %arrayidx = getelementptr i32, ptr %42, i32 %i.051
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %43 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 4, i32 -1226833920) #13, !srcloc !130
  %asmresult.i.i = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval.2.i, i32 noundef 4) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef nonnull %retval.2.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool3.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %copy_to_user.exit
  %44 = ptrtoint ptr %request_sizes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %request_sizes, align 4
  %arrayidx6 = getelementptr i32, ptr %45, i32 %i.051
  %total = getelementptr inbounds %struct.drm_buf, ptr %retval.2.i, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.34, i32 noundef 174) #9
  %call.i.i26 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i26, label %if.end5.cleanup_crit_edge, label %if.end.i.i30

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i30:                                     ; preds = %if.end5
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx6, i32 4, i32 -1226833920) #13, !srcloc !130
  %asmresult.i.i28 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i28)
  %cmp.i.i29 = icmp eq i32 %asmresult.i.i28, 0
  br i1 %cmp.i.i29, label %copy_to_user.exit35, label %if.end.i.i30.cleanup_crit_edge

if.end.i.i30.cleanup_crit_edge:                   ; preds = %if.end.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit35:                              ; preds = %if.end.i.i30
  %call.i.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %total, i32 noundef 4) #9
  %call.i1.i.i32 = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx6, ptr noundef %total, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i32)
  %tobool8.not = icmp eq i32 %call.i1.i.i32, 0
  br i1 %tobool8.not, label %if.end10, label %copy_to_user.exit35.cleanup_crit_edge

copy_to_user.exit35.cleanup_crit_edge:            ; preds = %copy_to_user.exit35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %copy_to_user.exit35
  %47 = ptrtoint ptr %granted_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %granted_count, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %granted_count, align 4
  %inc12 = add nsw i32 %i.051, 1
  %49 = ptrtoint ptr %request_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %request_count, align 4
  %cmp = icmp slt i32 %inc12, %50
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %copy_to_user.exit35.cleanup_crit_edge, %if.end.i.i30.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %r128_freelist_get.exit.cleanup_crit_edge, %r128_freelist_get.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %r128_freelist_get.exit.thread ], [ 0, %entry.cleanup_crit_edge ], [ -11, %r128_freelist_get.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit35.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.end5.cleanup_crit_edge ], [ -14, %if.end.i.i30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_getsarea(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_legacy_findmap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ati_pcigart_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_cce_init_ring_buffer(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
  %cce_ring = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 31
  %0 = ptrtoint ptr %cce_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cce_ring, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sg = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 54
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %virtual = getelementptr inbounds %struct.drm_sg_mem, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virtual to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virtual, align 4
  %8 = ptrtoint ptr %7 to i32
  %sub = sub i32 %3, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  tail call void @arm_heavy_mb() #9
  %or = or i32 %sub, 33554432
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %handle5 = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle5, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 1812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %18 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio, align 4
  %handle11 = getelementptr inbounds %struct.drm_local_map, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %handle11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handle11, align 4
  %add.ptr12 = getelementptr i8, ptr %21, i32 1808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %handle17 = getelementptr inbounds %struct.drm_local_map, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %handle17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %handle17, align 4
  %add.ptr18 = getelementptr i8, ptr %25, i32 1800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 67240450) #9, !srcloc !97
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %handle20 = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle20, align 4
  %add.ptr21 = getelementptr i8, ptr %29, i32 2032
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %31 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio, align 4
  %handle27 = getelementptr inbounds %struct.drm_local_map, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handle27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle27, align 4
  %add.ptr28 = getelementptr i8, ptr %34, i32 48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  %36 = and i32 %35, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio, align 4
  %handle36 = getelementptr inbounds %struct.drm_local_map, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %handle36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %handle36, align 4
  %add.ptr37 = getelementptr i8, ptr %40, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %36) #9, !srcloc !97
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @r128_cce_load_microcode(ptr nocapture noundef readonly %dev_priv) unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !138
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %1 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %2 = call ptr @memset(ptr %1, i32 255, i32 48)
  %3 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %fwnode.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %1, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.20, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %properties.i.i, align 8
  %9 = call ptr @memset(ptr %id3.i.i, i32 0, i32 20)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #9
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  %10 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %call.i.i, i32 0, i32 3
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.24, ptr noundef %dev) #9
  call void @platform_device_unregister(ptr noundef %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %cmp.not = icmp eq i32 %14, 2048
  br i1 %cmp.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %14, ptr noundef nonnull @.str.24) #14
  br label %out_release

if.end19:                                         ; preds = %if.end11
  call fastcc void @r128_do_wait_for_idle(ptr noundef %dev_priv)
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @arm_heavy_mb() #9
  %mmio = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 2004
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !97
  br label %do.body25

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %if.end19
  %i.057 = phi i32 [ 0, %if.end19 ], [ %inc, %do.body25.do.body25_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  call void @arm_heavy_mb() #9
  %mul = shl nuw i32 %i.057, 1
  %arrayidx = getelementptr i32, ptr %18, i32 %mul
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio, align 4
  %handle30 = getelementptr inbounds %struct.drm_local_map, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %handle30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %handle30, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 2012
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %25) #9, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  call void @arm_heavy_mb() #9
  %add = or i32 %mul, 1
  %arrayidx36 = getelementptr i32, ptr %18, i32 %add
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx36, align 4
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio, align 4
  %handle39 = getelementptr inbounds %struct.drm_local_map, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %handle39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle39, align 4
  %add.ptr40 = getelementptr i8, ptr %36, i32 2016
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %32) #9, !srcloc !97
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body25.out_release_crit_edge, label %do.body25.do.body25_crit_edge

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25.out_release_crit_edge:                  ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_release

out_release:                                      ; preds = %do.body25.out_release_crit_edge, %do.end15
  %rc.0 = phi i32 [ -22, %do.end15 ], [ 0, %do.body25.out_release_crit_edge ]
  %37 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %out_release, %do.end8, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ %call4, %do.end8 ], [ %rc.0, %out_release ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r128_do_wait_for_idle(ptr nocapture noundef readonly %dev_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 30
  %usec_timeout.i = getelementptr inbounds %struct.drm_r128_private, ptr %dev_priv, i32 0, i32 7
  %0 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1.i = icmp sgt i32 %1, 0
  br i1 %cmp1.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %handle.i = getelementptr inbounds %struct.drm_local_map, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %handle.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 5952
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %7 = and i32 %6, -15794176
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %8)
  %cmp2.i = icmp ugt i32 %8, 63
  br i1 %cmp2.i, label %for.cond.preheader, label %if.end.i

for.cond.preheader:                               ; preds = %for.body.i
  %9 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13 = icmp sgt i32 %10, 0
  br i1 %cmp13, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %12 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %handle = getelementptr inbounds %struct.drm_local_map, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handle, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 5952
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %.mask = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool3.not = icmp eq i32 %.mask, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %handle.i2 = getelementptr inbounds %struct.drm_local_map, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %handle.i2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %handle.i2, align 4
  %add.ptr.i3 = getelementptr i8, ptr %22, i32 388
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %24 = or i32 %23, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %handle4.i = getelementptr inbounds %struct.drm_local_map, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %handle4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handle4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %28, i32 388
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #9, !srcloc !97
  %29 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %usec_timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp19.i = icmp sgt i32 %30, 0
  br i1 %cmp19.i, label %if.then4.for.body.i5_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4.for.body.i5_crit_edge:                   ; preds = %if.then4
  br label %for.body.i5

for.body.i5:                                      ; preds = %if.end.i8.for.body.i5_crit_edge, %if.then4.for.body.i5_crit_edge
  %i.020.i = phi i32 [ %inc.i6, %if.end.i8.for.body.i5_crit_edge ], [ 0, %if.then4.for.body.i5_crit_edge ]
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %handle9.i = getelementptr inbounds %struct.drm_local_map, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %handle9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %handle9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %34, i32 388
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %.mask.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i)
  %tobool.not.i = icmp eq i32 %.mask.i, 0
  br i1 %tobool.not.i, label %for.body.i5.cleanup_crit_edge, label %if.end.i8

for.body.i5.cleanup_crit_edge:                    ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i8:                                        ; preds = %for.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #9
  %inc.i6 = add nuw nsw i32 %i.020.i, 1
  %37 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usec_timeout.i, align 4
  %cmp.i7 = icmp slt i32 %inc.i6, %38
  br i1 %cmp.i7, label %if.end.i8.for.body.i5_crit_edge, label %if.end.i8.cleanup_crit_edge

if.end.i8.cleanup_crit_edge:                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i8.for.body.i5_crit_edge:                  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i5

if.end6:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #9
  %inc = add nuw nsw i32 %i.014, 1
  %40 = ptrtoint ptr %usec_timeout.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usec_timeout.i, align 4
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %if.end6.for.body_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end6.cleanup_crit_edge, %if.end.i8.cleanup_crit_edge, %for.body.i5.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !63, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !80}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__UNIQUE_ID_firmware230, !1, !"__UNIQUE_ID_firmware230", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 52, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 626, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 641, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 643, i32 2}
!8 = !{ptr @__func__.r128_cce_init, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.r128_cce_start, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 660, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 662, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 665, i32 3}
!15 = !{ptr @__func__.r128_cce_stop, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 684, i32 2}
!17 = !{ptr @__func__.r128_cce_reset, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 722, i32 2}
!19 = !{ptr @__func__.r128_cce_idle, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 739, i32 2}
!21 = !{ptr @__func__.r128_engine_reset, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 753, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 884, i32 2}
!25 = !{ptr @__func__.r128_cce_buffers, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 920, i32 2}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 925, i32 3}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 933, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 356, i32 3}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 367, i32 3}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 376, i32 3}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 396, i32 3}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 463, i32 3}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 471, i32 3}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 478, i32 3}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 485, i32 3}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 493, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 503, i32 4}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 572, i32 4}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 590, i32 3}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 157, i32 41}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 159, i32 3}
!59 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @r128_cce_load_microcode._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @r128_cce_load_microcode._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 162, i32 29}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 165, i32 3}
!67 = !{ptr @r128_cce_load_microcode._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @r128_cce_load_microcode._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 171, i32 3}
!71 = !{ptr @r128_cce_load_microcode._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @r128_cce_load_microcode._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/r128/r128_cce.c", i32 851, i32 2}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!77 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 6247386}
!93 = !{i64 2154205099}
!94 = !{i64 2154205799}
!95 = !{i64 2154191623}
!96 = !{i64 2154191960}
!97 = !{i64 6246968}
!98 = !{i64 2154192871}
!99 = !{i8 0, i8 2}
!100 = !{i32 0, i32 33}
!101 = !{i64 2154227689}
!102 = !{i64 2154228403}
!103 = !{i64 2154229900}
!104 = !{i64 2154206828}
!105 = !{i64 2154207919}
!106 = !{i64 2154208271}
!107 = !{i64 2154203813}
!108 = !{i64 2154204153}
!109 = !{i64 2154209888}
!110 = !{i64 2154210485}
!111 = !{i64 2154211456}
!112 = !{i64 2154190124}
!113 = !{i64 6246771}
!114 = !{i64 2154190921}
!115 = !{i64 2154212085}
!116 = !{i64 2154212599}
!117 = !{i64 2154213612}
!118 = !{i64 2154213998}
!119 = !{i64 2154214978}
!120 = !{i64 2154215368}
!121 = !{i64 2154216354}
!122 = !{i64 2154216932}
!123 = !{i64 2154217398}
!124 = !{i64 2154217995}
!125 = !{i64 2154218597}
!126 = !{i64 2154208826}
!127 = !{i64 2154209357}
!128 = !{i64 2154189037}
!129 = !{i64 2154238782}
!130 = !{i64 2153243525, i64 2153243550}
!131 = !{i64 2154219953}
!132 = !{i64 2154220550}
!133 = !{i64 2154221081}
!134 = !{i64 2154221819}
!135 = !{i64 2154223003}
!136 = !{i64 2154223703}
!137 = !{i64 2154224042}
!138 = !{!"auto-init"}
!139 = !{i64 2154201486}
!140 = !{i64 2154202094}
!141 = !{i64 2154202803}
!142 = !{i64 2154194122}
!143 = !{i64 2154195370}
