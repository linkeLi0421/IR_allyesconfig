; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_fence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.radeon_fence = type { %struct.dma_fence, ptr, i64, i32, i8, %struct.wait_queue_entry }
%struct.dma_fence = type { ptr, ptr, %union.anon.84, i64, i64, i32, %struct.kref, i32 }
%union.anon.84 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.radeon_clock = type { %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, %struct.radeon_pll, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_mc = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i8, i8, i64, i64 }
%struct.radeon_gart = type { i32, ptr, ptr, i32, i32, i32, ptr, ptr, i8 }
%struct.radeon_mode_info = type { ptr, ptr, i32, i8, [6 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i16, ptr, i32 }
%struct.radeon_scratch = type { i32, i32, [32 x i8], [32 x i32] }
%struct.radeon_doorbell = type { i32, i32, ptr, i32, [32 x i32] }
%struct.radeon_mman = type { %struct.ttm_device, i8 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.radeon_fence_driver = type { ptr, i32, i64, ptr, [8 x i64], %struct.atomic64_t, i8, i8, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.radeon_ring = type { ptr, ptr, ptr, i32, i32, i64, ptr, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic64_t, i64, i32, i32, i8, i32, i32, i64, i64, i32, i32, i32, ptr, i32, i32 }
%struct.radeon_sa_manager = type { %struct.wait_queue_head, ptr, ptr, [8 x %struct.list_head], %struct.list_head, i32, i64, ptr, i32, i32 }
%struct.radeon_irq = type { i8, %struct.spinlock, [8 x %struct.atomic_t], [6 x i8], [6 x %struct.atomic_t], %struct.wait_queue_head, [7 x i8], [7 x i8], %union.radeon_irq_stat_regs, i8 }
%union.radeon_irq_stat_regs = type { %struct.evergreen_irq_stat_regs }
%struct.evergreen_irq_stat_regs = type { [6 x i32], [6 x i32], [6 x i32] }
%struct.radeon_gem = type { %struct.mutex, %struct.list_head }
%struct.radeon_pm = type { %struct.mutex, %struct.rw_semaphore, i32, i32, i32, i8, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, %union.dfixed, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, ptr, i32, %struct.delayed_work, i32, i32, i32, i8, i8, i32, i32, [7 x %struct.radeon_pm_profile], i32, ptr, i8, i8, i8, i8, i8, i8, %struct.radeon_dpm }
%union.dfixed = type { i32 }
%struct.radeon_pm_profile = type { i32, i32, i32, i32 }
%struct.radeon_dpm = type { ptr, i32, ptr, ptr, ptr, ptr, [6 x %struct.radeon_vce_state], i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i8, %struct.radeon_dpm_dynamic_state, %struct.radeon_dpm_fan, i32, i32, i32, i32, i32, i16, i32, i16, i8, i8, i8, i8, i8, %struct.radeon_dpm_thermal, i32, i32, i32 }
%struct.radeon_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.radeon_dpm_dynamic_state = type { %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_uvd_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_array, %struct.radeon_clock_array, %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits, i32, i32, i16, i16, %struct.radeon_cac_leakage_table, %struct.radeon_phase_shedding_limits_table, ptr, ptr }
%struct.radeon_uvd_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_vce_clock_voltage_dependency_table = type { i8, ptr }
%struct.radeon_clock_voltage_dependency_table = type { i32, ptr }
%struct.radeon_clock_array = type { i32, ptr }
%struct.radeon_clock_and_voltage_limits = type { i32, i32, i16, i16 }
%struct.radeon_cac_leakage_table = type { i32, ptr }
%struct.radeon_phase_shedding_limits_table = type { i32, ptr }
%struct.radeon_dpm_fan = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i8 }
%struct.radeon_dpm_thermal = type { %struct.work_struct, i32, i32, i8 }
%struct.radeon_uvd = type { i8, ptr, ptr, i64, i32, [30 x %struct.atomic_t], [30 x ptr], [30 x i32], %struct.delayed_work }
%struct.radeon_vce = type { ptr, i64, i32, i32, [16 x %struct.atomic_t], [16 x ptr], [16 x i32], %struct.delayed_work, i32 }
%struct.radeon_wb = type { ptr, ptr, i64, i8, i8 }
%struct.radeon_dummy_page = type { i64, ptr, i32 }
%struct.radeon_surface_reg = type { ptr }
%struct.r600_vram_scratch = type { ptr, ptr, i64 }
%struct.r600_ih = type { ptr, ptr, i32, i32, i64, i32, %struct.atomic_t, i8 }
%struct.radeon_rlc = type { ptr, i64, ptr, ptr, i32, ptr, i64, ptr, ptr, i32, ptr, i64, ptr, i32 }
%struct.radeon_mec = type { ptr, i64, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.r600_audio = type { i8, [7 x %struct.r600_audio_pin], i32, ptr, ptr, ptr }
%struct.r600_audio_pin = type { i32, i32, i32, i8, i8, i32, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.radeon_vm_manager = type { [16 x ptr], i32, i32, i64, i8, [16 x i32] }
%struct.atomic64_t = type { i64 }
%struct.radeon_atif = type { %struct.radeon_atif_notifications, %struct.radeon_atif_functions, %struct.radeon_atif_notification_cfg, ptr }
%struct.radeon_atif_notifications = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_functions = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.radeon_atif_notification_cfg = type { i8, i32 }
%struct.radeon_atcs = type { %struct.radeon_atcs_functions }
%struct.radeon_atcs_functions = type { i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.94, %struct.anon.95, [8 x ptr], %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103 }
%struct.anon.94 = type { ptr, ptr, ptr }
%struct.anon.95 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr }
%struct.anon.97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.99 = type { ptr, ptr }
%struct.anon.100 = type { ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.radeon_wait_cb = type { %struct.dma_fence_cb, ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@radeon_fence_ops = dso_local constant { %struct.dma_fence_ops, [60 x i8] } { %struct.dma_fence_ops { i8 0, ptr @radeon_fence_get_driver_name, ptr @radeon_fence_get_timeline_name, ptr @radeon_fence_enable_signaling, ptr @radeon_fence_is_signaled, ptr @radeon_fence_default_wait, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@radeon_fence_wait_timeout.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_fence.c\00", [58 x i8] zeroinitializer }, align 32
@radeon_fence_wait_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"error waiting for ring[%d] to become idle (%ld)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon_fence_wait_empty\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_fence_wait_empty._entry_ptr = internal global ptr @radeon_fence_wait_empty._entry, section ".printk_index", align 4
@radeon_fence_driver_start_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 840, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"fence failed to get scratch register\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"radeon_fence_driver_start_ring\00", [33 x i8] zeroinitializer }, align 32
@radeon_fence_driver_start_ring._entry_ptr = internal global ptr @radeon_fence_driver_start_ring._entry, section ".printk_index", align 4
@radeon_fence_driver_start_ring._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 852, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"fence driver on ring %d use gpu addr 0x%016llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@radeon_fence_driver_start_ring._entry_ptr.10 = internal global ptr @radeon_fence_driver_start_ring._entry.7, section ".printk_index", align 4
@radeon_fence_driver_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rdev->fence_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radeon_gpu_reset\00", [47 x i8] zeroinitializer }, align 32
@radeon_debugfs_gpu_reset_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_gpu_reset_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_fence_info\00", [46 x i8] zeroinitializer }, align 32
@radeon_debugfs_fence_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_fence_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_radeon_fence_emit = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_radeon_fence_emit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_radeon_fence_wait_begin = external dso_local global %struct.tracepoint, align 4
@trace_radeon_fence_wait_begin.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_radeon_fence_wait_end = external dso_local global %struct.tracepoint, align 4
@trace_radeon_fence_wait_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@radeon_fence_driver_init_ring.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"(work_completion)(&(&rdev->fence_drv[ring].lockup_work)->work)\00", [33 x i8] zeroinitializer }, align 32
@radeon_fence_driver_init_ring.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"&(&rdev->fence_drv[ring].lockup_work)->timer\00", [51 x i8] zeroinitializer }, align 32
@radeon_fence_check_lockup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str, i32 302, ptr @.str.22, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"GPU lockup (current fence id 0x%016llx last fence id 0x%016llx on ring %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"radeon_fence_check_lockup\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@radeon_fence_check_lockup._entry_ptr = internal global ptr @radeon_fence_check_lockup._entry, section ".printk_index", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"--- ring %d ---\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Last signaled fence 0x%016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Last emitted        0x%016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Last sync to ring %d 0x%016llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"radeon\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.gfx\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.cp1\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.cp2\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.dma\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon.dma1\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.uvd\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon.vce1\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon.vce2\00", [20 x i8] zeroinitializer }, align 32
@radeon_fence_get_timeline_name.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon.unk\00", [21 x i8] zeroinitializer }, align 32
@switch.table.radeon_fence_get_timeline_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"radeon_fence_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1100, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 547, i32 6 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 675, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 840, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 851, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 897, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1009, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"radeon_debugfs_gpu_reset_fops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1011, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"radeon_debugfs_fence_info_fops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 999, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_trace.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 147, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 108, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 877, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 299, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1000, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 967, i32 17 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 968, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 970, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 975, i32 19 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1020, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1027, i32 42 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1028, i32 42 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1029, i32 42 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1030, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1031, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1032, i32 40 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1033, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1034, i32 39 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_fence.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 1035, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [44 x i8] c"switch.table.radeon_fence_get_timeline_name\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @radeon_fence_check_lockup._entry, ptr @radeon_fence_check_lockup._entry_ptr, ptr @radeon_fence_driver_start_ring._entry, ptr @radeon_fence_driver_start_ring._entry.7, ptr @radeon_fence_driver_start_ring._entry_ptr, ptr @radeon_fence_driver_start_ring._entry_ptr.10, ptr @radeon_fence_wait_empty._entry, ptr @radeon_fence_wait_empty._entry_ptr, ptr @radeon_fence_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @radeon_fence_driver_init.__key, ptr @.str.11, ptr @.str.12, ptr @radeon_debugfs_gpu_reset_fops, ptr @.str.13, ptr @radeon_debugfs_fence_info_fops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @radeon_fence_driver_init_ring.__key, ptr @.str.17, ptr @radeon_fence_driver_init_ring.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @switch.table.radeon_fence_get_timeline_name], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_wait_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_driver_start_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_driver_start_ring._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_driver_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_gpu_reset_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_fence_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_driver_init_ring.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_driver_init_ring.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_fence_check_lockup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_fence_get_timeline_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_emit(ptr noundef %rdev, ptr nocapture noundef %fence, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 96) #15
  %1 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %fence, align 4
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rdev1 = getelementptr inbounds %struct.radeon_fence, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rdev, ptr %rdev1, align 8
  %arrayidx2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx2, align 8
  %inc = add i64 %4, 1
  store i64 %inc, ptr %arrayidx2, align 8
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fence, align 4
  %seq3 = getelementptr inbounds %struct.radeon_fence, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %seq3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %inc, ptr %seq3, align 8
  %8 = load ptr, ptr %fence, align 4
  %ring4 = getelementptr inbounds %struct.radeon_fence, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ring4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ring, ptr %ring4, align 8
  %10 = load ptr, ptr %fence, align 4
  %is_vm_update = getelementptr inbounds %struct.radeon_fence, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %is_vm_update to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %is_vm_update, align 4
  %12 = load ptr, ptr %fence, align 4
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  %fence_context = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 50
  %13 = ptrtoint ptr %fence_context to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %fence_context, align 8
  %conv = sext i32 %ring to i64
  %add = add i64 %14, %conv
  tail call void @dma_fence_init(ptr noundef %12, ptr noundef nonnull @radeon_fence_ops, ptr noundef %fence_queue, i64 noundef %add, i64 noundef %inc) #12
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %15 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asic, align 8
  %arrayidx6 = getelementptr %struct.radeon_asic, ptr %16, i32 0, i32 14, i32 %ring
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx6, align 4
  %emit_fence = getelementptr inbounds %struct.radeon_asic_ring, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %emit_fence to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %emit_fence, align 4
  %21 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fence, align 4
  tail call void %20(ptr noundef %rdev, ptr noundef %22) #12
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %23 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddev, align 4
  %25 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fence, align 4
  %seq7 = getelementptr inbounds %struct.radeon_fence, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %seq7 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %seq7, align 8
  %conv8 = trunc i64 %28 to i32
  tail call fastcc void @trace_radeon_fence_emit(ptr noundef %24, i32 noundef %ring, i32 noundef %conv8)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %29 = load ptr, ptr @system_power_efficient_wq, align 4
  %lockup_work.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 8
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %lockup_work.i, i32 noundef 50) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_fence_emit(ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_emit, i32 0, i32 1), ptr blockaddress(@trace_radeon_fence_emit, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !106

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %call42 = tail call i32 @__traceiter_radeon_fence_emit(ptr noundef null, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !108
  %13 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !106

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_emit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_emit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_fence_emit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_radeon_fence_emit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 152, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_process(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %rdev, i32 noundef %ring)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @radeon_fence_activity(ptr noundef %rdev, i32 noundef %ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %last_seq1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq1, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq1) #12
  %arrayidx4 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %scratch_reg.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 1
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %cpu_addr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %last_seq.0 = phi i64 [ %call.i, %entry ], [ %seq.0, %do.cond.do.body_crit_edge ]
  %count_loop.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %wake.0.off0 = phi i1 [ false, %entry ], [ true, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx4, align 8
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %do.body.if.then.i_crit_edge

do.body.if.then.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.rhs.i:                                        ; preds = %do.body
  %4 = ptrtoint ptr %scratch_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scratch_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.else8.i, !prof !106

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %do.body.if.then.i_crit_edge
  %6 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_addr.i, align 8
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #12
  br label %radeon_fence_read.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq1, i32 noundef 8) #12
  %call.i.i55 = tail call i64 @generic_atomic64_read(ptr noundef %last_seq1) #12
  %conv.i = trunc i64 %call.i.i55 to i32
  br label %radeon_fence_read.exit

if.else8.i:                                       ; preds = %lor.rhs.i
  %11 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp.i = icmp ugt i32 %12, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp1.i = icmp ult i32 %5, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i57, label %if.else.i58

if.then.i57:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %5
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !112
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !113
  br label %radeon_fence_read.exit

if.else.i58:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #14
  %call3.i = tail call i32 @r100_mm_rreg_slow(ptr noundef %rdev, i32 noundef %5) #12
  br label %radeon_fence_read.exit

radeon_fence_read.exit:                           ; preds = %if.else.i58, %if.then.i57, %if.else.i, %if.then6.i
  %seq.0.i = phi i32 [ %10, %if.then6.i ], [ %conv.i, %if.else.i ], [ %call3.i, %if.else.i58 ], [ %16, %if.then.i57 ]
  %conv = zext i32 %seq.0.i to i64
  %and = and i64 %last_seq.0, -4294967296
  %or = or i64 %and, %conv
  call void @__sanitizer_cov_trace_cmp8(i64 %or, i64 %last_seq.0)
  %cmp = icmp ult i64 %or, %last_seq.0
  %and8 = and i64 %1, -4294967296
  %or9 = or i64 %and8, %conv
  %seq.0 = select i1 %cmp, i64 %or9, i64 %or
  call void @__sanitizer_cov_trace_cmp8(i64 %seq.0, i64 %last_seq.0)
  %cmp10.not = icmp ule i64 %seq.0, %last_seq.0
  call void @__sanitizer_cov_trace_cmp8(i64 %seq.0, i64 %1)
  %cmp12 = icmp ugt i64 %seq.0, %1
  %or.cond = select i1 %cmp10.not, i1 true, i1 %cmp12
  br i1 %or.cond, label %radeon_fence_read.exit.do.end_crit_edge, label %if.end15

radeon_fence_read.exit.do.end_crit_edge:          ; preds = %radeon_fence_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end15:                                         ; preds = %radeon_fence_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %count_loop.0)
  %exitcond = icmp eq i32 %count_loop.0, 11
  br i1 %exitcond, label %if.end15.do.end_crit_edge, label %do.cond

if.end15.do.end_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.cond:                                          ; preds = %if.end15
  %inc = add nuw nsw i32 %count_loop.0, 1
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_seq1, i32 noundef 8) #12
  %call.i54 = tail call i64 @generic_atomic64_xchg(ptr noundef %last_seq1, i64 noundef %seq.0) #12
  %cmp24 = icmp ugt i64 %call.i54, %seq.0
  br i1 %cmp24, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.end15.do.end_crit_edge, %radeon_fence_read.exit.do.end_crit_edge
  %wake.1.off0 = phi i1 [ %wake.0.off0, %radeon_fence_read.exit.do.end_crit_edge ], [ true, %if.end15.do.end_crit_edge ], [ true, %do.cond.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %seq.0, i64 %1)
  %cmp26 = icmp ult i64 %seq.0, %1
  br i1 %cmp26, label %if.then28, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %17 = load ptr, ptr @system_power_efficient_wq, align 4
  %lockup_work.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 8
  %call.i.i56 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %lockup_work.i, i32 noundef 50) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %do.end.if.end29_crit_edge
  ret i1 %wake.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_fence_signaled(ptr noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %rdev = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 1
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %seq, align 8
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 8
  %last_seq.i = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %5, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %3)
  %cmp.not.i = icmp ult i64 %call.i.i, %3
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.then1_crit_edge

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then1

if.end.i:                                         ; preds = %if.end
  %call.i15.i = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %1, i32 noundef %5) #12
  br i1 %call.i15.i, label %if.then.i.i, label %if.end.i.radeon_fence_seq_signaled.exit_crit_edge

if.end.i.radeon_fence_seq_signaled.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_seq_signaled.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %fence_queue.i.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %radeon_fence_seq_signaled.exit

radeon_fence_seq_signaled.exit:                   ; preds = %if.then.i.i, %if.end.i.radeon_fence_seq_signaled.exit_crit_edge
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq.i, i32 noundef 8) #12
  %call.i14.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i14.i, i64 %3)
  %cmp5.not.i.not = icmp ult i64 %call.i14.i, %3
  br i1 %cmp5.not.i.not, label %radeon_fence_seq_signaled.exit.return_crit_edge, label %radeon_fence_seq_signaled.exit.if.then1_crit_edge

radeon_fence_seq_signaled.exit.if.then1_crit_edge: ; preds = %radeon_fence_seq_signaled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then1

radeon_fence_seq_signaled.exit.return_crit_edge:  ; preds = %radeon_fence_seq_signaled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then1:                                         ; preds = %radeon_fence_seq_signaled.exit.if.then1_crit_edge, %if.end.if.then1_crit_edge
  %call2 = tail call i32 @dma_fence_signal(ptr noundef nonnull %fence) #12
  br label %return

return:                                           ; preds = %if.then1, %radeon_fence_seq_signaled.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.then1 ], [ true, %entry.return_crit_edge ], [ false, %radeon_fence_seq_signaled.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_wait_timeout(ptr noundef %fence, i1 noundef zeroext %intr, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seq) #12
  %0 = call ptr @memset(ptr %seq, i32 0, i32 64)
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp ne ptr %2, @radeon_fence_ops
  %tobool.not64 = icmp eq ptr %fence, null
  %tobool.not = or i1 %tobool.not64, %cmp.i
  br i1 %tobool.not, label %land.rhs, label %if.end43

land.rhs:                                         ; preds = %entry
  %.b62 = load i1, ptr @radeon_fence_wait_timeout.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.then39_crit_edge, label %if.then, !prof !106

land.rhs.if.then39_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @radeon_fence_wait_timeout.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %if.then39

if.then39:                                        ; preds = %if.then, %land.rhs.if.then39_crit_edge
  %call.i = tail call i32 @dma_fence_wait_timeout(ptr noundef %fence, i1 noundef zeroext %intr, i32 noundef 2147483647) #12
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #12
  br label %cleanup

if.end43:                                         ; preds = %entry
  %seq44 = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %4 = ptrtoint ptr %seq44 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq44, align 8
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring, align 8
  %arrayidx = getelementptr [8 x i64], ptr %seq, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %5, ptr %arrayidx, align 8
  %rdev = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 1
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %call46 = call fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %10, ptr noundef nonnull %seq, i1 noundef zeroext %intr, i32 noundef %timeout)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call46)
  %cmp = icmp slt i32 %call46, 1
  br i1 %cmp, label %if.end43.cleanup_crit_edge, label %if.end48

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 @dma_fence_signal(ptr noundef nonnull %fence) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end43.cleanup_crit_edge, %if.then39
  %retval.0 = phi i32 [ %3, %if.then39 ], [ %call46, %if.end48 ], [ %call46, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %rdev, ptr nocapture noundef readonly %target_seq, i1 noundef zeroext %intr, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry98 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call, label %entry.cleanup160_crit_edge, label %for.cond.preheader

entry.cleanup160_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup160

for.cond.preheader:                               ; preds = %entry
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %target_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %target_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end2

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end2:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %conv = trunc i64 %1 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %3, i32 noundef 0, i32 noundef %conv)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 0) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end2, %for.cond.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr i64, ptr %target_seq, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.1 = icmp eq i64 %5, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end2.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddev, align 4
  %conv.1 = trunc i64 %5 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %7, i32 noundef 1, i32 noundef %conv.1)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end2.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr i64, ptr %target_seq, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not.2 = icmp eq i64 %9, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end2.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddev, align 4
  %conv.2 = trunc i64 %9 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %11, i32 noundef 2, i32 noundef %conv.2)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 2) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end2.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr i64, ptr %target_seq, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.3 = icmp eq i64 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end2.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ddev, align 4
  %conv.3 = trunc i64 %13 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %15, i32 noundef 3, i32 noundef %conv.3)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 3) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end2.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr i64, ptr %target_seq, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.4 = icmp eq i64 %17, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end2.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end2.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddev, align 4
  %conv.4 = trunc i64 %17 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %19, i32 noundef 4, i32 noundef %conv.4)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 4) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end2.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr i64, ptr %target_seq, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.5 = icmp eq i64 %21, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end2.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end2.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ddev, align 4
  %conv.5 = trunc i64 %21 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %23, i32 noundef 5, i32 noundef %conv.5)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 5) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end2.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr i64, ptr %target_seq, i32 6
  %24 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.not.6 = icmp eq i64 %25, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end2.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end2.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ddev, align 4
  %conv.6 = trunc i64 %25 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %27, i32 noundef 6, i32 noundef %conv.6)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 6) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end2.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr i64, ptr %target_seq, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool.not.7 = icmp eq i64 %29, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end2.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.end2.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ddev, align 4
  %conv.7 = trunc i64 %29 to i32
  tail call fastcc void @trace_radeon_fence_wait_begin(ptr noundef %31, i32 noundef 7, i32 noundef %conv.7)
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %rdev, i32 noundef 7) #12
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end2.7, %for.inc.6.for.inc.7_crit_edge
  br i1 %intr, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.inc.7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 502) #12
  %call9 = tail call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call9, label %lor.end.thread, label %lor.end

lor.end.thread:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool16.not221 = icmp eq i32 %timeout, 0
  %spec.store.select222 = select i1 %tobool16.not221, i32 1, i32 %timeout
  br label %if.end141

lor.end:                                          ; preds = %if.then5
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 68
  %32 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %needs_reset, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool11.not = icmp ne i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool16.not = icmp eq i32 %timeout, 0
  %spec.store.select = select i1 %tobool16.not, i32 1, i32 %timeout
  %brmerge = or i1 %tobool11.not, %tobool16.not
  %spec.store.select.mux = select i1 %tobool11.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end141_crit_edge, label %if.then25

lor.end.if.end141_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then25:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %34 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  %call28277 = call i32 @prepare_to_wait_event(ptr noundef %fence_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call30278 = call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call30278, label %if.then25.lor.end36.thread_crit_edge, label %if.then25.lor.end36_crit_edge

if.then25.lor.end36_crit_edge:                    ; preds = %if.then25
  br label %lor.end36

if.then25.lor.end36.thread_crit_edge:             ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end36.thread

lor.end36.thread:                                 ; preds = %cleanup.lor.end36.thread_crit_edge, %if.then25.lor.end36.thread_crit_edge
  %__ret26.0.lcssa = phi i32 [ %timeout, %if.then25.lor.end36.thread_crit_edge ], [ %call59, %cleanup.lor.end36.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.0.lcssa)
  %tobool42.not225 = icmp eq i32 %__ret26.0.lcssa, 0
  %spec.store.select162226 = select i1 %tobool42.not225, i32 1, i32 %__ret26.0.lcssa
  br label %for.end60

lor.end36:                                        ; preds = %cleanup.lor.end36_crit_edge, %if.then25.lor.end36_crit_edge
  %call28280 = phi i32 [ %call28, %cleanup.lor.end36_crit_edge ], [ %call28277, %if.then25.lor.end36_crit_edge ]
  %__ret26.0279 = phi i32 [ %call59, %cleanup.lor.end36_crit_edge ], [ %timeout, %if.then25.lor.end36_crit_edge ]
  %35 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %needs_reset, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool34.not = icmp eq i8 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret26.0279)
  %tobool49.not = icmp eq i32 %__ret26.0279, 0
  br i1 %tobool34.not, label %37, label %for.end60.loopexit.split.loop.exit272

37:                                               ; preds = %lor.end36
  br i1 %tobool49.not, label %.for.end60_crit_edge, label %if.end55

.for.end60_crit_edge:                             ; preds = %37
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end60

if.end55:                                         ; preds = %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28280)
  %tobool56.not = icmp eq i32 %call28280, 0
  br i1 %tobool56.not, label %cleanup, label %if.end55.__out_crit_edge

if.end55.__out_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end55
  %call59 = call i32 @schedule_timeout(i32 noundef %__ret26.0279) #12
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %fence_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %call30 = call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call30, label %cleanup.lor.end36.thread_crit_edge, label %cleanup.lor.end36_crit_edge

cleanup.lor.end36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end36

cleanup.lor.end36.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end36.thread

for.end60.loopexit.split.loop.exit272:            ; preds = %lor.end36
  call void @__sanitizer_cov_trace_pc() #14
  %spec.store.select162.le = select i1 %tobool49.not, i32 1, i32 %__ret26.0279
  br label %for.end60

for.end60:                                        ; preds = %for.end60.loopexit.split.loop.exit272, %.for.end60_crit_edge, %lor.end36.thread
  %__ret26.2.ph = phi i32 [ %spec.store.select162226, %lor.end36.thread ], [ %spec.store.select162.le, %for.end60.loopexit.split.loop.exit272 ], [ 0, %.for.end60_crit_edge ]
  call void @finish_wait(ptr noundef %fence_queue, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end60, %if.end55.__out_crit_edge
  %__ret26.2232 = phi i32 [ %__ret26.2.ph, %for.end60 ], [ %call28280, %if.end55.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end141

if.else:                                          ; preds = %for.inc.7
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 506) #12
  %call73 = tail call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call73, label %lor.end79.thread, label %lor.end79

lor.end79.thread:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool85.not237 = icmp eq i32 %timeout, 0
  %spec.store.select163238 = select i1 %tobool85.not237, i32 1, i32 %timeout
  br label %if.end141

lor.end79:                                        ; preds = %if.else
  %needs_reset76 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 68
  %38 = ptrtoint ptr %needs_reset76 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %needs_reset76, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool77.not = icmp ne i8 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool85.not = icmp eq i32 %timeout, 0
  %spec.store.select163 = select i1 %tobool85.not, i32 1, i32 %timeout
  %brmerge301 = or i1 %tobool77.not, %tobool85.not
  %spec.store.select163.mux = select i1 %tobool77.not, i32 %spec.store.select163, i32 0
  br i1 %brmerge301, label %lor.end79.if.end141_crit_edge, label %if.then97

lor.end79.if.end141_crit_edge:                    ; preds = %lor.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then97:                                        ; preds = %lor.end79
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry98) #12
  %40 = call ptr @memset(ptr %__wq_entry98, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry98, i32 noundef 0) #12
  %fence_queue102 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  %call103268 = call i32 @prepare_to_wait_event(ptr noundef %fence_queue102, ptr noundef nonnull %__wq_entry98, i32 noundef 2) #12
  %call105269 = call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call105269, label %if.then97.lor.end111.thread_crit_edge, label %if.then97.lor.end111_crit_edge

if.then97.lor.end111_crit_edge:                   ; preds = %if.then97
  br label %lor.end111

if.then97.lor.end111.thread_crit_edge:            ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end111.thread

lor.end111.thread:                                ; preds = %cleanup132.lor.end111.thread_crit_edge, %if.then97.lor.end111.thread_crit_edge
  %__ret99.0.lcssa = phi i32 [ %timeout, %if.then97.lor.end111.thread_crit_edge ], [ %call131, %cleanup132.lor.end111.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.0.lcssa)
  %tobool117.not242 = icmp eq i32 %__ret99.0.lcssa, 0
  %spec.store.select164243 = select i1 %tobool117.not242, i32 1, i32 %__ret99.0.lcssa
  br label %for.end135

lor.end111:                                       ; preds = %cleanup132.lor.end111_crit_edge, %if.then97.lor.end111_crit_edge
  %__ret99.0270 = phi i32 [ %call131, %cleanup132.lor.end111_crit_edge ], [ %timeout, %if.then97.lor.end111_crit_edge ]
  %41 = ptrtoint ptr %needs_reset76 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %needs_reset76, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool109.not = icmp eq i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret99.0270)
  %tobool124.not = icmp eq i32 %__ret99.0270, 0
  br i1 %tobool109.not, label %43, label %for.end135.loopexit.split.loop.exit263

43:                                               ; preds = %lor.end111
  br i1 %tobool124.not, label %.for.end135_crit_edge, label %cleanup132

.for.end135_crit_edge:                            ; preds = %43
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end135

cleanup132:                                       ; preds = %43
  %call131 = call i32 @schedule_timeout(i32 noundef %__ret99.0270) #12
  %call103 = call i32 @prepare_to_wait_event(ptr noundef %fence_queue102, ptr noundef nonnull %__wq_entry98, i32 noundef 2) #12
  %call105 = call fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr noundef %target_seq)
  br i1 %call105, label %cleanup132.lor.end111.thread_crit_edge, label %cleanup132.lor.end111_crit_edge

cleanup132.lor.end111_crit_edge:                  ; preds = %cleanup132
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end111

cleanup132.lor.end111.thread_crit_edge:           ; preds = %cleanup132
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end111.thread

for.end135.loopexit.split.loop.exit263:           ; preds = %lor.end111
  call void @__sanitizer_cov_trace_pc() #14
  %spec.store.select164.le = select i1 %tobool124.not, i32 1, i32 %__ret99.0270
  br label %for.end135

for.end135:                                       ; preds = %for.end135.loopexit.split.loop.exit263, %.for.end135_crit_edge, %lor.end111.thread
  %__ret99.2.ph = phi i32 [ %spec.store.select164243, %lor.end111.thread ], [ %spec.store.select164.le, %for.end135.loopexit.split.loop.exit263 ], [ 0, %.for.end135_crit_edge ]
  call void @finish_wait(ptr noundef %fence_queue102, ptr noundef nonnull %__wq_entry98) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry98) #12
  br label %if.end141

if.end141:                                        ; preds = %for.end135, %lor.end79.if.end141_crit_edge, %lor.end79.thread, %__out, %lor.end.if.end141_crit_edge, %lor.end.thread
  %r.0 = phi i32 [ %__ret26.2232, %__out ], [ %__ret99.2.ph, %for.end135 ], [ %spec.store.select222, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end141_crit_edge ], [ %spec.store.select163238, %lor.end79.thread ], [ %spec.store.select163.mux, %lor.end79.if.end141_crit_edge ]
  %needs_reset142 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 68
  %44 = ptrtoint ptr %needs_reset142 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %needs_reset142, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool143.not = icmp eq i8 %45, 0
  %46 = ptrtoint ptr %target_seq to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %target_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %tobool151.not = icmp eq i64 %47, 0
  br i1 %tobool151.not, label %if.end141.for.inc157_crit_edge, label %if.end153

if.end141.for.inc157_crit_edge:                   ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157

if.end153:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 0) #12
  %48 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ddev, align 4
  %50 = ptrtoint ptr %target_seq to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %target_seq, align 8
  %conv156 = trunc i64 %51 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %49, i32 noundef 0, i32 noundef %conv156)
  br label %for.inc157

for.inc157:                                       ; preds = %if.end153, %if.end141.for.inc157_crit_edge
  %52 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %tobool151.not.1 = icmp eq i64 %53, 0
  br i1 %tobool151.not.1, label %for.inc157.for.inc157.1_crit_edge, label %if.end153.1

for.inc157.for.inc157.1_crit_edge:                ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.1

if.end153.1:                                      ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 1) #12
  %54 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ddev, align 4
  %56 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx.1, align 8
  %conv156.1 = trunc i64 %57 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %55, i32 noundef 1, i32 noundef %conv156.1)
  br label %for.inc157.1

for.inc157.1:                                     ; preds = %if.end153.1, %for.inc157.for.inc157.1_crit_edge
  %58 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %tobool151.not.2 = icmp eq i64 %59, 0
  br i1 %tobool151.not.2, label %for.inc157.1.for.inc157.2_crit_edge, label %if.end153.2

for.inc157.1.for.inc157.2_crit_edge:              ; preds = %for.inc157.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.2

if.end153.2:                                      ; preds = %for.inc157.1
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 2) #12
  %60 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ddev, align 4
  %62 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.2, align 8
  %conv156.2 = trunc i64 %63 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %61, i32 noundef 2, i32 noundef %conv156.2)
  br label %for.inc157.2

for.inc157.2:                                     ; preds = %if.end153.2, %for.inc157.1.for.inc157.2_crit_edge
  %64 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %65)
  %tobool151.not.3 = icmp eq i64 %65, 0
  br i1 %tobool151.not.3, label %for.inc157.2.for.inc157.3_crit_edge, label %if.end153.3

for.inc157.2.for.inc157.3_crit_edge:              ; preds = %for.inc157.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.3

if.end153.3:                                      ; preds = %for.inc157.2
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 3) #12
  %66 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ddev, align 4
  %68 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.3, align 8
  %conv156.3 = trunc i64 %69 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %67, i32 noundef 3, i32 noundef %conv156.3)
  br label %for.inc157.3

for.inc157.3:                                     ; preds = %if.end153.3, %for.inc157.2.for.inc157.3_crit_edge
  %70 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool151.not.4 = icmp eq i64 %71, 0
  br i1 %tobool151.not.4, label %for.inc157.3.for.inc157.4_crit_edge, label %if.end153.4

for.inc157.3.for.inc157.4_crit_edge:              ; preds = %for.inc157.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.4

if.end153.4:                                      ; preds = %for.inc157.3
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 4) #12
  %72 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ddev, align 4
  %74 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx.4, align 8
  %conv156.4 = trunc i64 %75 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %73, i32 noundef 4, i32 noundef %conv156.4)
  br label %for.inc157.4

for.inc157.4:                                     ; preds = %if.end153.4, %for.inc157.3.for.inc157.4_crit_edge
  %76 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.5, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool151.not.5 = icmp eq i64 %77, 0
  br i1 %tobool151.not.5, label %for.inc157.4.for.inc157.5_crit_edge, label %if.end153.5

for.inc157.4.for.inc157.5_crit_edge:              ; preds = %for.inc157.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.5

if.end153.5:                                      ; preds = %for.inc157.4
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 5) #12
  %78 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ddev, align 4
  %80 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.5, align 8
  %conv156.5 = trunc i64 %81 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %79, i32 noundef 5, i32 noundef %conv156.5)
  br label %for.inc157.5

for.inc157.5:                                     ; preds = %if.end153.5, %for.inc157.4.for.inc157.5_crit_edge
  %82 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx.6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %tobool151.not.6 = icmp eq i64 %83, 0
  br i1 %tobool151.not.6, label %for.inc157.5.for.inc157.6_crit_edge, label %if.end153.6

for.inc157.5.for.inc157.6_crit_edge:              ; preds = %for.inc157.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.6

if.end153.6:                                      ; preds = %for.inc157.5
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 6) #12
  %84 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ddev, align 4
  %86 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.6, align 8
  %conv156.6 = trunc i64 %87 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %85, i32 noundef 6, i32 noundef %conv156.6)
  br label %for.inc157.6

for.inc157.6:                                     ; preds = %if.end153.6, %for.inc157.5.for.inc157.6_crit_edge
  %88 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %arrayidx.7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %tobool151.not.7 = icmp eq i64 %89, 0
  br i1 %tobool151.not.7, label %for.inc157.6.for.inc157.7_crit_edge, label %if.end153.7

for.inc157.6.for.inc157.7_crit_edge:              ; preds = %for.inc157.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc157.7

if.end153.7:                                      ; preds = %for.inc157.6
  call void @__sanitizer_cov_trace_pc() #14
  call void @radeon_irq_kms_sw_irq_put(ptr noundef %rdev, i32 noundef 7) #12
  %90 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ddev, align 4
  %92 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx.7, align 8
  %conv156.7 = trunc i64 %93 to i32
  call fastcc void @trace_radeon_fence_wait_end(ptr noundef %91, i32 noundef 7, i32 noundef %conv156.7)
  br label %for.inc157.7

for.inc157.7:                                     ; preds = %if.end153.7, %for.inc157.6.for.inc157.7_crit_edge
  %spec.select = select i1 %tobool143.not, i32 %r.0, i32 -35
  br label %cleanup160

cleanup160:                                       ; preds = %for.inc157.7, %entry.cleanup160_crit_edge
  %retval.0 = phi i32 [ %timeout, %entry.cleanup160_crit_edge ], [ %spec.select, %for.inc157.7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_wait(ptr noundef %fence, i1 noundef zeroext %intr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @radeon_fence_wait_timeout(ptr noundef %fence, i1 noundef zeroext %intr, i32 noundef 2147483647)
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_wait_any(ptr noundef %rdev, ptr nocapture noundef readonly %fences, i1 noundef zeroext %intr) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seq) #12
  %0 = getelementptr inbounds i8, ptr %seq, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 24)
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %seq, align 8
  %3 = ptrtoint ptr %fences to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fences, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %seq3 = getelementptr inbounds %struct.radeon_fence, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %seq3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %seq3, align 8
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %seq, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %num_rings.1 = phi i32 [ 1, %if.end ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %arrayidx.1, align 8
  %arrayidx1.1 = getelementptr ptr, ptr %fences, i32 1
  %9 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.1 = getelementptr inbounds %struct.radeon_fence, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %seq3.1 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seq3.1, align 8
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %arrayidx.1, align 8
  %inc.1 = add nuw nsw i32 %num_rings.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %num_rings.1.1 = phi i32 [ %inc.1, %if.end.1 ], [ %num_rings.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %arrayidx.2, align 8
  %arrayidx1.2 = getelementptr ptr, ptr %fences, i32 2
  %15 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.2, align 4
  %tobool.not.2 = icmp eq ptr %16, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.2 = getelementptr inbounds %struct.radeon_fence, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %seq3.2 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seq3.2, align 8
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx.2, align 8
  %inc.2 = add nuw nsw i32 %num_rings.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %num_rings.1.2 = phi i32 [ %inc.2, %if.end.2 ], [ %num_rings.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %arrayidx.3, align 8
  %arrayidx1.3 = getelementptr ptr, ptr %fences, i32 3
  %21 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1.3, align 4
  %tobool.not.3 = icmp eq ptr %22, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.3 = getelementptr inbounds %struct.radeon_fence, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %seq3.3 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %seq3.3, align 8
  %25 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx.3, align 8
  %inc.3 = add nuw nsw i32 %num_rings.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %num_rings.1.3 = phi i32 [ %inc.3, %if.end.3 ], [ %num_rings.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %arrayidx.4, align 8
  %arrayidx1.4 = getelementptr ptr, ptr %fences, i32 4
  %27 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1.4, align 4
  %tobool.not.4 = icmp eq ptr %28, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.4 = getelementptr inbounds %struct.radeon_fence, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %seq3.4 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %seq3.4, align 8
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx.4, align 8
  %inc.4 = add nuw nsw i32 %num_rings.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %num_rings.1.4 = phi i32 [ %inc.4, %if.end.4 ], [ %num_rings.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %arrayidx.5 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 0, ptr %arrayidx.5, align 8
  %arrayidx1.5 = getelementptr ptr, ptr %fences, i32 5
  %33 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx1.5, align 4
  %tobool.not.5 = icmp eq ptr %34, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.5 = getelementptr inbounds %struct.radeon_fence, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %seq3.5 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %seq3.5, align 8
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx.5, align 8
  %inc.5 = add nuw nsw i32 %num_rings.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %num_rings.1.5 = phi i32 [ %inc.5, %if.end.5 ], [ %num_rings.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %arrayidx.6 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %arrayidx.6, align 8
  %arrayidx1.6 = getelementptr ptr, ptr %fences, i32 6
  %39 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx1.6, align 4
  %tobool.not.6 = icmp eq ptr %40, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.6 = getelementptr inbounds %struct.radeon_fence, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %seq3.6 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %seq3.6, align 8
  %43 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx.6, align 8
  %inc.6 = add nuw nsw i32 %num_rings.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %num_rings.1.6 = phi i32 [ %inc.6, %if.end.6 ], [ %num_rings.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %arrayidx.7 = getelementptr inbounds [8 x i64], ptr %seq, i32 0, i32 7
  %44 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %arrayidx.7, align 8
  %arrayidx1.7 = getelementptr ptr, ptr %fences, i32 7
  %45 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx1.7, align 4
  %tobool.not.7 = icmp eq ptr %46, null
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.7.thread

for.inc.7.thread:                                 ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  %seq3.7 = getelementptr inbounds %struct.radeon_fence, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %seq3.7 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %seq3.7, align 8
  %49 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx.7, align 8
  br label %if.end8

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_rings.1.6)
  %cmp6 = icmp eq i32 %num_rings.1.6, 0
  br i1 %cmp6, label %for.inc.7.cleanup_crit_edge, label %for.inc.7.if.end8_crit_edge

for.inc.7.if.end8_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %for.inc.7.if.end8_crit_edge, %for.inc.7.thread
  %call = call fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %rdev, ptr noundef nonnull %seq, i1 noundef zeroext %intr, i32 noundef 2147483647)
  %50 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %for.inc.7.cleanup_crit_edge ], [ %50, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_wait_next(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seq) #12
  %0 = call ptr @memset(ptr %seq, i32 0, i32 64)
  %last_seq = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %add = add i64 %call.i, 1
  %arrayidx1 = getelementptr [8 x i64], ptr %seq, i32 0, i32 %ring
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %add, ptr %arrayidx1, align 8
  %arrayidx5 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx5, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %3)
  %cmp.not = icmp ult i64 %add, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = call fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %rdev, ptr noundef nonnull %seq, i1 noundef zeroext false, i32 noundef 2147483647)
  %4 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %4, %if.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_wait_empty(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  %seq = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seq) #12
  %0 = call ptr @memset(ptr %seq, i32 0, i32 64)
  %arrayidx1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx1, align 8
  %arrayidx2 = getelementptr [8 x i64], ptr %seq, i32 0, i32 %ring
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool.not = icmp eq i64 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %rdev, ptr noundef nonnull %seq, i1 noundef zeroext false, i32 noundef 2147483647)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call)
  %cmp5 = icmp eq i32 %call, -35
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %ring, i32 noundef %call) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -35, %if.then4.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @radeon_fence_ref(ptr noundef returned %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.dma_fence_get.exit_crit_edge, label %if.then.i

entry.dma_fence_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !115

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !106

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %entry.dma_fence_get.exit_crit_edge
  ret ptr %fence
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_unref(ptr nocapture noundef %fence) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  store ptr null, ptr %fence, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !106

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_count_emitted(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i10 = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %rdev, i32 noundef %ring) #12
  br i1 %call.i10, label %if.then.i, label %entry.radeon_fence_process.exit_crit_edge

entry.radeon_fence_process.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_process.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %fence_queue.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %radeon_fence_process.exit

radeon_fence_process.exit:                        ; preds = %if.then.i, %entry.radeon_fence_process.exit_crit_edge
  %arrayidx1 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx1, align 8
  %last_seq = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %sub = sub i64 %1, %call.i
  %2 = tail call i64 @llvm.umin.i64(i64 %sub, i64 268435456)
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_fence_need_sync(ptr noundef readonly %fence, i32 noundef %dst_ring) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dst_ring)
  %cmp = icmp eq i32 %1, %dst_ring
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rdev = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 1
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 2
  %4 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq, align 8
  %arrayidx4 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp5.not = icmp ugt i64 %5, %7
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp5.not, %if.end2 ]
  ret i1 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_note_sync(ptr noundef readonly %fence, i32 noundef %dst_ring) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fence, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 3
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %dst_ring)
  %cmp = icmp eq i32 %1, %dst_ring
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %rdev = getelementptr inbounds %struct.radeon_fence, ptr %fence, i32 0, i32 1
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_ring)
  %cmp8 = icmp eq i32 %dst_ring, 0
  br i1 %cmp8, label %if.end2.for.inc.1_crit_edge, label %for.inc

if.end2.for.inc.1_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc:                                          ; preds = %if.end2
  %arrayidx11 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx11, align 8
  %arrayidx13 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx13, align 8
  %8 = tail call i64 @llvm.umax.i64(i64 %5, i64 %7)
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dst_ring)
  %cmp8.1 = icmp eq i32 %dst_ring, 1
  br i1 %cmp8.1, label %for.inc.for.inc.2_crit_edge, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.for.inc.2_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.1:                                        ; preds = %for.inc.for.inc.1_crit_edge, %if.end2.for.inc.1_crit_edge
  %arrayidx11.1 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx11.1, align 8
  %arrayidx13.1 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx13.1, align 8
  %14 = tail call i64 @llvm.umax.i64(i64 %11, i64 %13)
  %15 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx11.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dst_ring)
  %cmp8.2 = icmp eq i32 %dst_ring, 2
  br i1 %cmp8.2, label %for.inc.1.for.inc.3_crit_edge, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.1.for.inc.3_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.2:                                        ; preds = %for.inc.1.for.inc.2_crit_edge, %for.inc.for.inc.2_crit_edge
  %arrayidx11.2 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx11.2, align 8
  %arrayidx13.2 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx13.2, align 8
  %20 = tail call i64 @llvm.umax.i64(i64 %17, i64 %19)
  %21 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx11.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dst_ring)
  %cmp8.3 = icmp eq i32 %dst_ring, 3
  br i1 %cmp8.3, label %for.inc.2.for.inc.4_crit_edge, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

for.inc.2.for.inc.4_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.3:                                        ; preds = %for.inc.2.for.inc.3_crit_edge, %for.inc.1.for.inc.3_crit_edge
  %arrayidx11.3 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 3
  %22 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx11.3, align 8
  %arrayidx13.3 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx13.3, align 8
  %26 = tail call i64 @llvm.umax.i64(i64 %23, i64 %25)
  %27 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx11.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dst_ring)
  %cmp8.4 = icmp eq i32 %dst_ring, 4
  br i1 %cmp8.4, label %for.inc.3.for.inc.5_crit_edge, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

for.inc.3.for.inc.5_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.4:                                        ; preds = %for.inc.3.for.inc.4_crit_edge, %for.inc.2.for.inc.4_crit_edge
  %arrayidx11.4 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 4
  %28 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx11.4, align 8
  %arrayidx13.4 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx13.4, align 8
  %32 = tail call i64 @llvm.umax.i64(i64 %29, i64 %31)
  %33 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx11.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %dst_ring)
  %cmp8.5 = icmp eq i32 %dst_ring, 5
  br i1 %cmp8.5, label %for.inc.4.for.inc.6_crit_edge, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

for.inc.4.for.inc.6_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.5:                                        ; preds = %for.inc.4.for.inc.5_crit_edge, %for.inc.3.for.inc.5_crit_edge
  %arrayidx11.5 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 5
  %34 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx11.5, align 8
  %arrayidx13.5 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 5
  %36 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx13.5, align 8
  %38 = tail call i64 @llvm.umax.i64(i64 %35, i64 %37)
  %39 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx11.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dst_ring)
  %cmp8.6 = icmp eq i32 %dst_ring, 6
  br i1 %cmp8.6, label %for.inc.5.if.end10.7_crit_edge, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

for.inc.5.if.end10.7_crit_edge:                   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.7

for.inc.6:                                        ; preds = %for.inc.5.for.inc.6_crit_edge, %for.inc.4.for.inc.6_crit_edge
  %arrayidx11.6 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 6
  %40 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx11.6, align 8
  %arrayidx13.6 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 6
  %42 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx13.6, align 8
  %44 = tail call i64 @llvm.umax.i64(i64 %41, i64 %43)
  %45 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx11.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %dst_ring)
  %cmp8.7 = icmp eq i32 %dst_ring, 7
  br i1 %cmp8.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.6.if.end10.7_crit_edge

for.inc.6.if.end10.7_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10.7:                                       ; preds = %for.inc.6.if.end10.7_crit_edge, %for.inc.5.if.end10.7_crit_edge
  %arrayidx11.7 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %dst_ring, i32 4, i32 7
  %46 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx11.7, align 8
  %arrayidx13.7 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %1, i32 4, i32 7
  %48 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx13.7, align 8
  %50 = tail call i64 @llvm.umax.i64(i64 %47, i64 %49)
  %51 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx11.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10.7, %for.inc.6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_fence_driver_start_ring(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch_reg = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 1
  %0 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scratch_reg, align 4
  tail call void @radeon_scratch_free(ptr noundef %rdev, i32 noundef %1) #12
  %use_event = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 4
  %2 = ptrtoint ptr %use_event to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_event, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 52, i32 %ring
  %call = tail call zeroext i1 @radeon_ring_supports_scratch_reg(ptr noundef %rdev, ptr noundef %arrayidx2) #12
  br i1 %call, label %if.else29, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %4 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %scratch_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ring)
  %cmp.not = icmp eq i32 %ring, 5
  br i1 %cmp.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %mul = shl i32 %ring, 2
  %add = add i32 %mul, 3072
  %conv = sext i32 %add to i64
  %wb8 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %5 = ptrtoint ptr %wb8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wb8, align 4
  %idxprom = ashr exact i32 %add, 2
  %arrayidx9 = getelementptr i32, ptr %6, i32 %idxprom
  %cpu_addr = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 3
  %7 = ptrtoint ptr %cpu_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx9, ptr %cpu_addr, align 8
  %gpu_addr = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  br label %if.end56

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %uvd_fw = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 80
  %8 = ptrtoint ptr %uvd_fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uvd_fw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %add17 = add i32 %11, 7
  %and = and i32 %add17, -8
  %conv18 = zext i32 %and to i64
  %cpu_addr19 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 2
  %12 = ptrtoint ptr %cpu_addr19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpu_addr19, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 %and
  %cpu_addr22 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 5, i32 3
  %14 = ptrtoint ptr %cpu_addr22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %cpu_addr22, align 8
  %gpu_addr24 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 59, i32 3
  br label %if.end56

if.else29:                                        ; preds = %lor.lhs.false
  %call33 = tail call i32 @radeon_scratch_get(ptr noundef %rdev, ptr noundef %scratch_reg) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %do.end

do.end:                                           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5) #16
  br label %cleanup

if.end36:                                         ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %scratch_reg, align 4
  %reg_base = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 45, i32 1
  %19 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_base, align 4
  %sub = sub i32 %18, %20
  %conv41 = zext i32 %sub to i64
  %wb43 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 1
  %21 = ptrtoint ptr %wb43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wb43, align 4
  %div44123 = lshr i32 %sub, 2
  %arrayidx46 = getelementptr i32, ptr %22, i32 %div44123
  %cpu_addr49 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 3
  %23 = ptrtoint ptr %cpu_addr49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx46, ptr %cpu_addr49, align 8
  %gpu_addr51 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 2
  br label %if.end56

if.end56:                                         ; preds = %if.end36, %if.else, %if.then6
  %gpu_addr.sink = phi ptr [ %gpu_addr, %if.then6 ], [ %gpu_addr24, %if.else ], [ %gpu_addr51, %if.end36 ]
  %conv.sink = phi i64 [ %conv, %if.then6 ], [ %conv18, %if.else ], [ %conv41, %if.end36 ]
  %ring.sink = phi i32 [ %ring, %if.then6 ], [ 5, %if.else ], [ %ring, %if.end36 ]
  %24 = ptrtoint ptr %gpu_addr.sink to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %gpu_addr.sink, align 8
  %add13 = add i64 %25, %conv.sink
  %gpu_addr16 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.sink, i32 2
  %26 = ptrtoint ptr %gpu_addr16 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add13, ptr %gpu_addr16, align 8
  %last_seq = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %conv60 = trunc i64 %call.i to i32
  %enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %27 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enabled.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.end56.if.then.i_crit_edge

if.end56.if.then.i_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.rhs.i:                                        ; preds = %if.end56
  %29 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scratch_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i = icmp eq i32 %30, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.else.i, !prof !106

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %if.end56.if.then.i_crit_edge
  %cpu_addr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 3
  %31 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_addr.i, align 8
  %tobool5.not.i = icmp eq ptr %32, null
  br i1 %tobool5.not.i, label %if.then.i.radeon_fence_write.exit_crit_edge, label %if.then6.i

if.then.i.radeon_fence_write.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_write.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %33 = tail call i32 @llvm.bswap.i32(i32 %conv60) #12
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %33, ptr %32, align 4
  br label %radeon_fence_write.exit

if.else.i:                                        ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @r100_mm_wreg(ptr noundef %rdev, i32 noundef %30, i32 noundef %conv60) #12
  br label %radeon_fence_write.exit

radeon_fence_write.exit:                          ; preds = %if.else.i, %if.then6.i, %if.then.i.radeon_fence_write.exit_crit_edge
  %initialized = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 6
  %35 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %initialized, align 8
  %36 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev, align 8
  %gpu_addr69 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 2
  %38 = ptrtoint ptr %gpu_addr69 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %gpu_addr69, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %ring, i64 noundef %39) #16
  br label %cleanup

cleanup:                                          ; preds = %radeon_fence_write.exit, %do.end
  %retval.0 = phi i32 [ 0, %radeon_fence_write.exit ], [ %call33, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_scratch_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ring_supports_scratch_reg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_scratch_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_driver_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  tail call void @__init_waitqueue_head(ptr noundef %fence_queue, ptr noundef nonnull @.str.11, ptr noundef nonnull @radeon_fence_driver_init.__key) #12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ring.05 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %scratch_reg.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 1
  %0 = ptrtoint ptr %scratch_reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scratch_reg.i, align 4
  %cpu_addr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 3
  %1 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %cpu_addr.i, align 8
  %gpu_addr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 2
  %2 = ptrtoint ptr %gpu_addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %gpu_addr.i, align 8
  %3 = mul nuw nsw i32 %ring.05, 200
  %4 = add nuw nsw i32 %3, 4992
  %uglygep.i = getelementptr i8, ptr %rdev, i32 %4
  %5 = call ptr @memset(ptr %uglygep.i, i32 0, i32 64)
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05
  %last_seq.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_seq.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %last_seq.i, i64 noundef 0) #12
  %initialized.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 6
  %6 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %initialized.i, align 8
  %lockup_work.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 8
  tail call void @__init_work(ptr noundef %lockup_work.i, i32 noundef 0) #12
  %7 = ptrtoint ptr %lockup_work.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %lockup_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %lockup_work.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @radeon_fence_driver_init_ring.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry27.i = getelementptr inbounds %struct.work_struct, ptr %lockup_work.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry27.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry27.i, ptr %entry27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %lockup_work.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry27.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %lockup_work.i, i32 0, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @radeon_fence_check_lockup, ptr %func.i, align 4
  %timer.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.05, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @radeon_fence_driver_init_ring.__key.18) #12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rdev, ptr %arrayidx.i, align 8
  %inc = add nuw nsw i32 %ring.05, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %ddev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %12 = ptrtoint ptr %ddev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_root.i, align 4
  %call.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_gpu_reset_fops) #12
  %call1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %17, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_fence_info_fops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_debugfs_fence_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.12, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_gpu_reset_fops) #12
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.13, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_fence_info_fops) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_driver_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  %seq.i = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ring_lock = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 51
  tail call void @mutex_lock_nested(ptr noundef %ring_lock, i32 noundef 0) #12
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ring.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %initialized = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.031, i32 6
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %seq.i) #12
  %2 = call ptr @memset(ptr %seq.i, i32 0, i32 64)
  %arrayidx1.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.031, i32 4, i32 %ring.031
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx1.i, align 8
  %arrayidx2.i = getelementptr [8 x i64], ptr %seq.i, i32 0, i32 %ring.031
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not.i = icmp eq i64 %4, 0
  br i1 %tobool.not.i, label %if.end.radeon_fence_wait_empty.exit.thread_crit_edge, label %if.end.i

if.end.radeon_fence_wait_empty.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_wait_empty.exit.thread

if.end.i:                                         ; preds = %if.end
  %call.i = call fastcc i32 @radeon_fence_wait_seq_timeout(ptr noundef %rdev, ptr noundef nonnull %seq.i, i1 noundef zeroext false, i32 noundef 2147483647) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.radeon_fence_wait_empty.exit.thread_crit_edge

if.end.i.radeon_fence_wait_empty.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_wait_empty.exit.thread

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.i)
  %cmp5.i = icmp eq i32 %call.i, -35
  br i1 %cmp5.i, label %if.then2, label %do.end.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %ring.031, i32 noundef %call.i) #16
  br label %radeon_fence_wait_empty.exit.thread

radeon_fence_wait_empty.exit.thread:              ; preds = %do.end.i, %if.end.i.radeon_fence_wait_empty.exit.thread_crit_edge, %if.end.radeon_fence_wait_empty.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq.i) #12
  br label %if.end3

if.then2:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %seq.i) #12
  tail call void @radeon_fence_driver_force_completion(ptr noundef %rdev, i32 noundef %ring.031)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %radeon_fence_wait_empty.exit.thread
  %lockup_work = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.031, i32 8
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lockup_work) #12
  tail call void @__wake_up(ptr noundef %fence_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  %scratch_reg = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring.031, i32 1
  %8 = ptrtoint ptr %scratch_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scratch_reg, align 4
  tail call void @radeon_scratch_free(ptr noundef %rdev, i32 noundef %9) #12
  %10 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %initialized, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ring.031, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %ring_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_fence_driver_force_completion(ptr noundef %rdev, i32 noundef %ring) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 6
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx3 = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 4, i32 %ring
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx3, align 8
  %conv = trunc i64 %3 to i32
  %enabled.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 62, i32 3
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %if.then.if.then.i_crit_edge

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.rhs.i:                                        ; preds = %if.then
  %scratch_reg.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 1
  %6 = ptrtoint ptr %scratch_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scratch_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %lor.rhs.i.if.then.i_crit_edge, label %if.else.i, !prof !106

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %cpu_addr.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 3
  %8 = ptrtoint ptr %cpu_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_addr.i, align 8
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.then.i.radeon_fence_write.exit_crit_edge, label %if.then6.i

if.then.i.radeon_fence_write.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_write.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %9, align 4
  br label %radeon_fence_write.exit

if.else.i:                                        ; preds = %lor.rhs.i
  %rmmio_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %12 = ptrtoint ptr %rmmio_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rmmio_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp.i = icmp ugt i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %cmp1.i = icmp ult i32 %7, 65536
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %do.body.i, label %if.else.i13

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %15 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #12, !srcloc !120
  br label %radeon_fence_write.exit

if.else.i13:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %7, i32 noundef %conv) #12
  br label %radeon_fence_write.exit

radeon_fence_write.exit:                          ; preds = %if.else.i13, %do.body.i, %if.then6.i, %if.then.i.radeon_fence_write.exit_crit_edge
  %lockup_work = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %ring, i32 8
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lockup_work) #12
  br label %if.end

if.end:                                           ; preds = %radeon_fence_write.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @radeon_fence_get_driver_name(ptr nocapture noundef readnone %fence) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal nonnull ptr @radeon_fence_get_timeline_name(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @radeon_fence_ops
  %f..i = select i1 %cmp.i, ptr %f, ptr null
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 3
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %4 = icmp ult i32 %3, 8
  br i1 %4, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b42 = load i1, ptr @radeon_fence_get_timeline_name.__already_done, align 1
  br i1 %.b42, label %land.end.cleanup_crit_edge, label %if.then, !prof !106

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @radeon_fence_get_timeline_name.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1035, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.radeon_fence_get_timeline_name, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.then, %land.end.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str.37, %if.then ], [ @.str.37, %land.end.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_fence_enable_signaling(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @radeon_fence_ops
  %f..i = select i1 %cmp.i, ptr %f, ptr null
  %rdev1 = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 1
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 8
  %ring = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 3
  %4 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring, align 8
  %last_seq = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %5, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %seq = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 2
  %6 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %7)
  %cmp.not = icmp ult i64 %call.i, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @down_read_trylock(ptr noundef %exclusive_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring, align 8
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @radeon_irq_kms_sw_irq_get(ptr noundef %3, i32 noundef %9) #12
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring, align 8
  %call7 = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %3, i32 noundef %11)
  br i1 %call7, label %if.then8, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 49
  tail call void @__wake_up_locked(ptr noundef %fence_queue, i32 noundef 3, i32 noundef 0) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then4.if.end9_crit_edge
  %12 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring, align 8
  %last_seq13 = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %13, i32 5
  %call.i.i64 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq13, i32 noundef 8) #12
  %call.i65 = tail call i64 @generic_atomic64_read(ptr noundef %last_seq13) #12
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %seq, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i65, i64 %15)
  %cmp16.not = icmp ult i64 %call.i65, %15
  br i1 %cmp16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ring, align 8
  tail call void @radeon_irq_kms_sw_irq_put(ptr noundef %3, i32 noundef %17) #12
  tail call void @up_read(ptr noundef %exclusive_lock) #12
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @up_read(ptr noundef %exclusive_lock) #12
  br label %if.end30

if.else:                                          ; preds = %if.end
  %call23 = tail call zeroext i1 @radeon_irq_kms_sw_irq_get_delayed(ptr noundef %3, i32 noundef %9) #12
  br i1 %call23, label %if.then24, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ring, align 8
  %delayed_irq = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %19, i32 7
  %20 = ptrtoint ptr %delayed_irq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %delayed_irq, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.else.if.end28_crit_edge
  %21 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %23 = load ptr, ptr @system_power_efficient_wq, align 4
  %lockup_work.i = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %22, i32 8
  %call.i.i66 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %lockup_work.i, i32 noundef 50) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end20
  %fence_wake = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 5
  %24 = ptrtoint ptr %fence_wake to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %fence_wake, align 8
  %private = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 5, i32 1
  %25 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %private, align 4
  %func = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @radeon_fence_check_signaled, ptr %func, align 8
  %head1.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 49, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end30
  %head.0.i = phi ptr [ %head1.i, %if.end30 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %27 = ptrtoint ptr %head.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %head.0.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head1.i
  br i1 %cmp.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %wq.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %28 = ptrtoint ptr %wq.0.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wq.0.i, align 4
  %and.i = and i32 %29, 32
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.for.end.i_crit_edge ], [ %head1.i, %for.cond.i.for.end.i_crit_edge ]
  %entry11.i = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 5, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry11.i, ptr noundef %head.0.i, ptr noundef %.pn.lcssa.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.__add_wait_queue.exit_crit_edge

for.end.i.__add_wait_queue.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__add_wait_queue.exit

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry11.i, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %entry11.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.pn.lcssa.i, ptr %entry11.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 5, i32 3, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %head.0.i, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %head.0.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry11.i, ptr %head.0.i, align 4
  br label %__add_wait_queue.exit

__add_wait_queue.exit:                            ; preds = %if.end.i.i.i, %for.end.i.__add_wait_queue.exit_crit_edge
  %tobool.not.i67 = icmp eq ptr %f, null
  br i1 %tobool.not.i67, label %__add_wait_queue.exit.cleanup_crit_edge, label %if.then.i

__add_wait_queue.exit.cleanup_crit_edge:          ; preds = %__add_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %__add_wait_queue.exit
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !115

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %35 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i.i = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !106

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.cleanup_crit_edge, %__add_wait_queue.exit.cleanup_crit_edge, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then17 ], [ false, %entry.cleanup_crit_edge ], [ true, %__add_wait_queue.exit.cleanup_crit_edge ], [ true, %if.else.i.i.i.i.i.cleanup_crit_edge ], [ true, %if.end15.sink.split.i.i.i.i.i ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @radeon_fence_is_signaled(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @radeon_fence_ops
  %f..i = select i1 %cmp.i, ptr %f, ptr null
  %rdev1 = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 1
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 8
  %ring2 = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 3
  %4 = ptrtoint ptr %ring2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ring2, align 8
  %seq3 = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 2
  %6 = ptrtoint ptr %seq3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %seq3, align 8
  %last_seq = getelementptr %struct.radeon_device, ptr %3, i32 0, i32 48, i32 %5, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %7)
  %cmp.not = icmp ult i64 %call.i, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 4
  %call5 = tail call i32 @down_read_trylock(ptr noundef %exclusive_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %call.i30 = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %3, i32 noundef %5) #12
  br i1 %call.i30, label %if.then.i, label %if.then6.radeon_fence_process.exit_crit_edge

if.then6.radeon_fence_process.exit_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_process.exit

if.then.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %fence_queue.i = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %radeon_fence_process.exit

radeon_fence_process.exit:                        ; preds = %if.then.i, %if.then6.radeon_fence_process.exit_crit_edge
  tail call void @up_read(ptr noundef %exclusive_lock) #12
  %call.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i29 = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i29, i64 %7)
  %cmp12.not = icmp ult i64 %call.i29, %7
  br i1 %cmp12.not, label %radeon_fence_process.exit.if.end15_crit_edge, label %radeon_fence_process.exit.cleanup_crit_edge

radeon_fence_process.exit.cleanup_crit_edge:      ; preds = %radeon_fence_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

radeon_fence_process.exit.if.end15_crit_edge:     ; preds = %radeon_fence_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %radeon_fence_process.exit.if.end15_crit_edge, %if.end.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %radeon_fence_process.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end15 ], [ true, %entry.cleanup_crit_edge ], [ true, %radeon_fence_process.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_fence_default_wait(ptr noundef %f, i1 noundef zeroext %intr, i32 noundef %t) #0 align 64 {
entry:
  %cb = alloca %struct.radeon_wait_cb, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.dma_fence, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @radeon_fence_ops
  %f..i = select i1 %cmp.i, ptr %f, ptr null
  %rdev1 = getelementptr inbounds %struct.radeon_fence, ptr %f..i, i32 0, i32 1
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cb) #12
  %4 = getelementptr inbounds %struct.radeon_wait_cb, ptr %cb, i32 0, i32 1
  %5 = call ptr @memset(ptr %cb, i32 255, i32 12)
  %6 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %4, align 4
  %call4 = call i32 @dma_fence_add_callback(ptr noundef %f, ptr noundef nonnull %cb, ptr noundef nonnull @radeon_fence_wait_cb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp259 = icmp sgt i32 %t, 0
  br i1 %cmp259, label %while.body.lr.ph, label %while.cond.preheader.__here218_crit_edge

while.cond.preheader.__here218_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %flags.i = getelementptr inbounds %struct.dma_fence, ptr %f..i, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end167.while.body_crit_edge, %while.body.lr.ph
  %t.addr.0260 = phi i32 [ %t, %while.body.lr.ph ], [ %call158, %if.end167.while.body_crit_edge ]
  br i1 %intr, label %__here, label %__here121

__here:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 212
  %13 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 ptrtoint (ptr blockaddress(@radeon_fence_default_wait, %__here) to i32), ptr %task_state_change, align 4
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %14, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  br label %if.end151

__here121:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %task_state_change125 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 212
  %18 = ptrtoint ptr %task_state_change125 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 ptrtoint (ptr blockaddress(@radeon_fence_default_wait, %__here121) to i32), ptr %task_state_change125, align 4
  %19 = load ptr, ptr %task, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %19, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  br label %if.end151

if.end151:                                        ; preds = %__here121, %__here
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end154, label %if.end151.__here218_crit_edge

if.end151.__here218_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

if.end154:                                        ; preds = %if.end151
  %23 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %needs_reset, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool155.not = icmp eq i8 %24, 0
  br i1 %tobool155.not, label %if.end157, label %if.end154.__here218_crit_edge

if.end154.__here218_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

if.end157:                                        ; preds = %if.end154
  %call158 = call i32 @schedule_timeout(i32 noundef %t.addr.0260) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159 = icmp sgt i32 %call158, 0
  %25 = and i1 %cmp159, %intr
  br i1 %25, label %land.lhs.true161, label %if.end157.if.end167_crit_edge

if.end157.if.end167_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

land.lhs.true161:                                 ; preds = %if.end157
  %26 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %stack.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %29, align 4
  %32 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.lhs.true161.__here218_crit_edge, !prof !106

land.lhs.true161.__here218_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

signal_pending.exit:                              ; preds = %land.lhs.true161
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %29, align 4
  %and1.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool165.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool165.not, label %signal_pending.exit.if.end167_crit_edge, label %signal_pending.exit.__here218_crit_edge

signal_pending.exit.__here218_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

signal_pending.exit.if.end167_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end167

if.end167:                                        ; preds = %signal_pending.exit.if.end167_crit_edge, %if.end157.if.end167_crit_edge
  %cmp = icmp sgt i32 %call158, 0
  br i1 %cmp, label %if.end167.while.body_crit_edge, label %if.end167.__here218_crit_edge

if.end167.__here218_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here218

if.end167.while.body_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

__here218:                                        ; preds = %if.end167.__here218_crit_edge, %signal_pending.exit.__here218_crit_edge, %land.lhs.true161.__here218_crit_edge, %if.end154.__here218_crit_edge, %if.end151.__here218_crit_edge, %while.cond.preheader.__here218_crit_edge
  %t.addr.2 = phi i32 [ %t, %while.cond.preheader.__here218_crit_edge ], [ -512, %signal_pending.exit.__here218_crit_edge ], [ -512, %land.lhs.true161.__here218_crit_edge ], [ %call158, %if.end167.__here218_crit_edge ], [ %t.addr.0260, %if.end151.__here218_crit_edge ], [ -35, %if.end154.__here218_crit_edge ]
  %35 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task, align 8
  %task_state_change222 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 212
  %37 = ptrtoint ptr %task_state_change222 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 ptrtoint (ptr blockaddress(@radeon_fence_default_wait, %__here218) to i32), ptr %task_state_change222, align 4
  %38 = load ptr, ptr %task, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile i32 0, ptr %38, align 128
  %call240 = call zeroext i1 @dma_fence_remove_callback(ptr noundef %f, ptr noundef nonnull %cb) #12
  br label %cleanup

cleanup:                                          ; preds = %__here218, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %t.addr.2, %__here218 ], [ %t, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cb) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_fence_emit(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @r100_mm_rreg_slow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_xchg(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @radeon_fence_any_seq_signaled(ptr noundef %rdev, ptr nocapture noundef readonly %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fence_queue.i.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp10 = phi i1 [ true, %entry ], [ %cmp, %for.inc.for.body_crit_edge ]
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %seq, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %last_seq.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 48, i32 %i.08, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq.i, i32 noundef 8) #12
  %call.i.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %1)
  %cmp.not.i = icmp ult i64 %call.i.i, %1
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true
  %call.i15.i = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %rdev, i32 noundef %i.08) #12
  br i1 %call.i15.i, label %if.then.i.i, label %if.end.i.radeon_fence_seq_signaled.exit_crit_edge

if.end.i.radeon_fence_seq_signaled.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_seq_signaled.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__wake_up(ptr noundef %fence_queue.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %radeon_fence_seq_signaled.exit

radeon_fence_seq_signaled.exit:                   ; preds = %if.then.i.i, %if.end.i.radeon_fence_seq_signaled.exit_crit_edge
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq.i, i32 noundef 8) #12
  %call.i14.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq.i) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i14.i, i64 %1)
  %cmp5.not.i.not = icmp ult i64 %call.i14.i, %1
  br i1 %cmp5.not.i.not, label %radeon_fence_seq_signaled.exit.for.inc_crit_edge, label %radeon_fence_seq_signaled.exit.cleanup_crit_edge

radeon_fence_seq_signaled.exit.cleanup_crit_edge: ; preds = %radeon_fence_seq_signaled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

radeon_fence_seq_signaled.exit.for.inc_crit_edge: ; preds = %radeon_fence_seq_signaled.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %radeon_fence_seq_signaled.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.08)
  %cmp = icmp ult i32 %i.08, 7
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %radeon_fence_seq_signaled.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ %cmp10, %land.lhs.true.cleanup_crit_edge ], [ %cmp, %for.inc.cleanup_crit_edge ], [ %cmp10, %radeon_fence_seq_signaled.exit.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_fence_wait_begin(ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_begin, i32 0, i32 1), ptr blockaddress(@trace_radeon_fence_wait_begin, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !106

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !123
  %call42 = tail call i32 @__traceiter_radeon_fence_wait_begin(ptr noundef null, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !124
  %13 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !106

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_begin, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_begin, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_fence_wait_begin.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_radeon_fence_wait_begin.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 159, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
declare dso_local void @radeon_irq_kms_sw_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_irq_kms_sw_irq_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_fence_wait_end(ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_end, i32 0, i32 1), ptr blockaddress(@trace_radeon_fence_wait_end, %do.body)) #12
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !106

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !125
  %call42 = tail call i32 @__traceiter_radeon_fence_wait_end(ptr noundef null, ptr noundef %dev, i32 noundef %ring, i32 noundef %seqno) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !126
  %13 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !106

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !95) #12
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_fence_wait_end, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_fence_wait_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @trace_radeon_fence_wait_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 166, ptr noundef nonnull @.str.15) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !110
  %31 = tail call i32 @llvm.read_register.i32(metadata !95) #12
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
declare dso_local i32 @__traceiter_radeon_fence_wait_begin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_fence_wait_end(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r100_mm_wreg(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %rmmio_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 18
  %0 = ptrtoint ptr %rmmio_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rmmio_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %reg)
  %cmp = icmp ugt i32 %1, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %reg)
  %cmp1 = icmp ult i32 %reg, 65536
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void @arm_heavy_mb() #12
  %2 = tail call i32 @llvm.bswap.i32(i32 %v)
  %rmmio = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 31
  %3 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmmio, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #12, !srcloc !120
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @r100_mm_wreg_slow(ptr noundef %rdev, i32 noundef %reg, i32 noundef %v) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r100_mm_wreg_slow(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_fence_check_lockup(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %fence_drv2 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 48
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %fence_drv2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 200
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 4
  %call = tail call i32 @down_read_trylock(ptr noundef %exclusive_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %lockup_work.i = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %sub.ptr.div, i32 8
  %call.i.i65 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %lockup_work.i, i32 noundef 50) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %delayed_irq = getelementptr i8, ptr %work, i32 -3
  %3 = ptrtoint ptr %delayed_irq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %delayed_irq, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %land.lhs.true

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %irq = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 55
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %irq, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end18_crit_edge, label %if.then5

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %delayed_irq to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %delayed_irq, align 1
  %lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 55, i32 1
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %8 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %asic, align 8
  %irq14 = getelementptr inbounds %struct.radeon_asic, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %irq14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq14, align 4
  %call15 = tail call i32 %11(ptr noundef %1) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then5, %land.lhs.true.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %call19 = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %1, i32 noundef %sub.ptr.div)
  br i1 %call19, label %if.end18.if.end35.sink.split_crit_edge, label %if.else

if.end18.if.end35.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.sink.split

if.else:                                          ; preds = %if.end18
  %asic21 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %12 = ptrtoint ptr %asic21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %asic21, align 8
  %arrayidx23 = getelementptr %struct.radeon_asic, ptr %13, i32 0, i32 14, i32 %sub.ptr.div
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx23, align 4
  %is_lockup = getelementptr inbounds %struct.radeon_asic_ring, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %is_lockup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %is_lockup, align 4
  %arrayidx25 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 52, i32 %sub.ptr.div
  %call26 = tail call zeroext i1 %17(ptr noundef %1, ptr noundef %arrayidx25) #12
  br i1 %call26, label %do.end30, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %last_seq = getelementptr i8, ptr %work, i32 -12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %sync_seq = getelementptr i8, ptr %work, i32 -76
  %arrayidx32 = getelementptr [8 x i64], ptr %sync_seq, i32 0, i32 %sub.ptr.div
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx32, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.20, i64 noundef %call.i, i64 noundef %21, i32 noundef %sub.ptr.div) #16
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 68
  %22 = ptrtoint ptr %needs_reset to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %needs_reset, align 4
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %do.end30, %if.end18.if.end35.sink.split_crit_edge
  %fence_queue33 = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue33, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge
  tail call void @up_read(ptr noundef %exclusive_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_gpu_reset_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @radeon_debugfs_gpu_reset, ptr noundef null, ptr noundef nonnull @.str.23) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_gpu_reset(ptr noundef %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %data, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #12
  %needs_reset = getelementptr inbounds %struct.radeon_device, ptr %data, i32 0, i32 68
  %0 = ptrtoint ptr %needs_reset to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_reset, align 4, !range !111
  %2 = zext i8 %1 to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  store i8 1, ptr %needs_reset, align 4
  %fence_queue = getelementptr inbounds %struct.radeon_device, ptr %data, i32 0, i32 49
  tail call void @__wake_up(ptr noundef %fence_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  tail call void @up_read(ptr noundef %exclusive_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_fence_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_fence_info_show, ptr noundef %1) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_fence_info_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %fence_queue.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 49
  %initialized12 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 0, i32 6
  %initialized12.1 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 1, i32 6
  %initialized12.2 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 2, i32 6
  %initialized12.3 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 3, i32 6
  %initialized12.4 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 4, i32 6
  %initialized12.5 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 5, i32 6
  %initialized12.6 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 6, i32 6
  %initialized12.7 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 7, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc20.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20.for.body_crit_edge ]
  %initialized = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 6
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.inc20_crit_edge, label %if.end

for.body.for.inc20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20

if.end:                                           ; preds = %for.body
  %call.i46 = tail call fastcc zeroext i1 @radeon_fence_activity(ptr noundef %1, i32 noundef %i.049) #12
  br i1 %call.i46, label %if.then.i, label %if.end.radeon_fence_process.exit_crit_edge

if.end.radeon_fence_process.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %radeon_fence_process.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__wake_up(ptr noundef %fence_queue.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %radeon_fence_process.exit

radeon_fence_process.exit:                        ; preds = %if.then.i, %if.end.radeon_fence_process.exit_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %i.049) #12
  %last_seq = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i64 noundef %call.i) #12
  %arrayidx5 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 %i.049
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i64 noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.049)
  %cmp9.not = icmp eq i32 %i.049, 0
  br i1 %cmp9.not, label %radeon_fence_process.exit.land.lhs.true.1_crit_edge, label %land.lhs.true

radeon_fence_process.exit.land.lhs.true.1_crit_edge: ; preds = %radeon_fence_process.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.1

land.lhs.true:                                    ; preds = %radeon_fence_process.exit
  %6 = ptrtoint ptr %initialized12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %initialized12, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool13.not = icmp eq i8 %7, 0
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx18, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 0, i64 noundef %9) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.049)
  %cmp9.not.1 = icmp eq i32 %i.049, 1
  br i1 %cmp9.not.1, label %for.inc.land.lhs.true.2_crit_edge, label %for.inc.land.lhs.true.1_crit_edge

for.inc.land.lhs.true.1_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.1

for.inc.land.lhs.true.2_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.2

land.lhs.true.1:                                  ; preds = %for.inc.land.lhs.true.1_crit_edge, %radeon_fence_process.exit.land.lhs.true.1_crit_edge
  %10 = ptrtoint ptr %initialized12.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %initialized12.1, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not.1 = icmp eq i8 %11, 0
  br i1 %tobool13.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then14.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then14.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.1 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx18.1, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 1, i64 noundef %13) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then14.1, %land.lhs.true.1.for.inc.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.049)
  %cmp9.not.2 = icmp eq i32 %i.049, 2
  br i1 %cmp9.not.2, label %for.inc.1.land.lhs.true.3_crit_edge, label %for.inc.1.land.lhs.true.2_crit_edge

for.inc.1.land.lhs.true.2_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.2

for.inc.1.land.lhs.true.3_crit_edge:              ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.3

land.lhs.true.2:                                  ; preds = %for.inc.1.land.lhs.true.2_crit_edge, %for.inc.land.lhs.true.2_crit_edge
  %14 = ptrtoint ptr %initialized12.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %initialized12.2, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not.2 = icmp eq i8 %15, 0
  br i1 %tobool13.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then14.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then14.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.2 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 2
  %16 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx18.2, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 2, i64 noundef %17) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then14.2, %land.lhs.true.2.for.inc.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.049)
  %cmp9.not.3 = icmp eq i32 %i.049, 3
  br i1 %cmp9.not.3, label %for.inc.2.land.lhs.true.4_crit_edge, label %for.inc.2.land.lhs.true.3_crit_edge

for.inc.2.land.lhs.true.3_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.3

for.inc.2.land.lhs.true.4_crit_edge:              ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.4

land.lhs.true.3:                                  ; preds = %for.inc.2.land.lhs.true.3_crit_edge, %for.inc.1.land.lhs.true.3_crit_edge
  %18 = ptrtoint ptr %initialized12.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %initialized12.3, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not.3 = icmp eq i8 %19, 0
  br i1 %tobool13.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then14.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then14.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.3 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 3
  %20 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx18.3, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 3, i64 noundef %21) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then14.3, %land.lhs.true.3.for.inc.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.049)
  %cmp9.not.4 = icmp eq i32 %i.049, 4
  br i1 %cmp9.not.4, label %for.inc.3.land.lhs.true.5_crit_edge, label %for.inc.3.land.lhs.true.4_crit_edge

for.inc.3.land.lhs.true.4_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.4

for.inc.3.land.lhs.true.5_crit_edge:              ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.5

land.lhs.true.4:                                  ; preds = %for.inc.3.land.lhs.true.4_crit_edge, %for.inc.2.land.lhs.true.4_crit_edge
  %22 = ptrtoint ptr %initialized12.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %initialized12.4, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not.4 = icmp eq i8 %23, 0
  br i1 %tobool13.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then14.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then14.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.4 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx18.4, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 4, i64 noundef %25) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then14.4, %land.lhs.true.4.for.inc.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.049)
  %cmp9.not.5 = icmp eq i32 %i.049, 5
  br i1 %cmp9.not.5, label %for.inc.4.land.lhs.true.6_crit_edge, label %for.inc.4.land.lhs.true.5_crit_edge

for.inc.4.land.lhs.true.5_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.5

for.inc.4.land.lhs.true.6_crit_edge:              ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.6

land.lhs.true.5:                                  ; preds = %for.inc.4.land.lhs.true.5_crit_edge, %for.inc.3.land.lhs.true.5_crit_edge
  %26 = ptrtoint ptr %initialized12.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %initialized12.5, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool13.not.5 = icmp eq i8 %27, 0
  br i1 %tobool13.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then14.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then14.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.5 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 5
  %28 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx18.5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 5, i64 noundef %29) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then14.5, %land.lhs.true.5.for.inc.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.049)
  %cmp9.not.6 = icmp eq i32 %i.049, 6
  br i1 %cmp9.not.6, label %for.inc.5.land.lhs.true.7_crit_edge, label %for.inc.5.land.lhs.true.6_crit_edge

for.inc.5.land.lhs.true.6_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.6

for.inc.5.land.lhs.true.7_crit_edge:              ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.7

land.lhs.true.6:                                  ; preds = %for.inc.5.land.lhs.true.6_crit_edge, %for.inc.4.land.lhs.true.6_crit_edge
  %30 = ptrtoint ptr %initialized12.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %initialized12.6, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool13.not.6 = icmp eq i8 %31, 0
  br i1 %tobool13.not.6, label %land.lhs.true.6.for.inc.6_crit_edge, label %if.then14.6

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then14.6:                                      ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.6 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 6
  %32 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx18.6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 6, i64 noundef %33) #12
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then14.6, %land.lhs.true.6.for.inc.6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.049)
  %cmp9.not.7 = icmp eq i32 %i.049, 7
  br i1 %cmp9.not.7, label %for.inc.6.for.end22_crit_edge, label %for.inc.6.land.lhs.true.7_crit_edge

for.inc.6.land.lhs.true.7_crit_edge:              ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.7

for.inc.6.for.end22_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22

land.lhs.true.7:                                  ; preds = %for.inc.6.land.lhs.true.7_crit_edge, %for.inc.5.land.lhs.true.7_crit_edge
  %34 = ptrtoint ptr %initialized12.7 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %initialized12.7, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool13.not.7 = icmp eq i8 %35, 0
  br i1 %tobool13.not.7, label %land.lhs.true.7.for.inc20_crit_edge, label %if.then14.7

land.lhs.true.7.for.inc20_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc20

if.then14.7:                                      ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx18.7 = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %i.049, i32 4, i32 7
  %36 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx18.7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef 7, i64 noundef %37) #12
  br label %for.inc20

for.inc20:                                        ; preds = %if.then14.7, %land.lhs.true.7.for.inc20_crit_edge, %for.body.for.inc20_crit_edge
  %inc21 = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc21, 8
  br i1 %exitcond.not, label %for.inc20.for.end22_crit_edge, label %for.inc20.for.body_crit_edge

for.inc20.for.body_crit_edge:                     ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc20.for.end22_crit_edge:                    ; preds = %for.inc20
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.for.end22_crit_edge, %for.inc.6.for.end22_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_irq_kms_sw_irq_get_delayed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_fence_check_signaled(ptr noundef %wait, i32 noundef %mode, i32 noundef %flags, ptr nocapture noundef readnone %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rdev = getelementptr i8, ptr %wait, i32 -24
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %ring = getelementptr i8, ptr %wait, i32 -8
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring, align 8
  %last_seq = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 48, i32 %3, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_seq, i32 noundef 8) #12
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_seq) #12
  %seq1 = getelementptr i8, ptr %wait, i32 -16
  %4 = ptrtoint ptr %seq1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %seq1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %5)
  %cmp.not = icmp ult i64 %call.i, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %wait, i32 -72
  %call2 = tail call i32 @dma_fence_signal_locked(ptr noundef %add.ptr) #12
  %6 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdev, align 8
  %8 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ring, align 8
  tail call void @radeon_irq_kms_sw_irq_put(ptr noundef %7, i32 noundef %9) #12
  %entry1.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.__remove_wait_queue.exit_crit_edge

if.then.__remove_wait_queue.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %__remove_wait_queue.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %entry1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %entry1.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__remove_wait_queue.exit

__remove_wait_queue.exit:                         ; preds = %if.end.i.i.i, %if.then.__remove_wait_queue.exit_crit_edge
  %16 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.i, align 4
  %prev.i.i = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %__remove_wait_queue.exit.if.end_crit_edge, label %if.then.i

__remove_wait_queue.exit.if.end_crit_edge:        ; preds = %__remove_wait_queue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i:                                        ; preds = %__remove_wait_queue.exit
  %refcount.i = getelementptr i8, ptr %wait, i32 -36
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !106

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !118
  tail call void @dma_fence_release(ptr noundef %refcount.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %__remove_wait_queue.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_fence_wait_cb(ptr nocapture noundef readnone %fence, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.radeon_wait_cb, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_remove_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.named.register.sp = !{!95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 547, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 675, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @radeon_fence_wait_empty._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_fence_wait_empty._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 840, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @radeon_fence_driver_start_ring._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @radeon_fence_driver_start_ring._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 851, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @radeon_fence_driver_start_ring._entry.7, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @radeon_fence_driver_start_ring._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @radeon_fence_driver_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 897, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1009, i32 22}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1011, i32 22}
!27 = !{ptr @radeon_fence_ops, !28, !"radeon_fence_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1100, i32 28}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 147, i32 1}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!33 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 154, i32 1}
!39 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 161, i32 1}
!42 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!43 = !{ptr @radeon_fence_driver_init_ring.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 877, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @radeon_fence_driver_init_ring.__key.18, !44, !"__key", i1 false, i1 false}
!47 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 299, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @radeon_fence_check_lockup._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @radeon_fence_check_lockup._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @radeon_debugfs_gpu_reset_fops, !55, !"radeon_debugfs_gpu_reset_fops", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1000, i32 1}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @radeon_debugfs_fence_info_fops, !58, !"radeon_debugfs_fence_info_fops", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 999, i32 1}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 967, i32 17}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 968, i32 17}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 970, i32 17}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 975, i32 19}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1020, i32 9}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1027, i32 42}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1028, i32 42}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1029, i32 42}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1030, i32 40}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1031, i32 43}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1032, i32 40}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1033, i32 39}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1034, i32 39}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1035, i32 11}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1035, i32 35}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1072, i32 4}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1074, i32 4}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/radeon/radeon_fence.c", i32 1094, i32 2}
!95 = !{!"sp"}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2148626849, i64 2148626854, i64 2148626867, i64 2148626911, i64 2148626945, i64 2148626966}
!106 = !{!"branch_weights", i32 2000, i32 1}
!107 = !{i64 2157816768}
!108 = !{i64 2157816997}
!109 = !{i64 2149934346}
!110 = !{i64 2149935382}
!111 = !{i8 0, i8 2}
!112 = !{i64 6107648}
!113 = !{i64 2157487952}
!114 = !{i64 2148149248, i64 2148149280, i64 2148149309, i64 2148149343, i64 2148149374, i64 2148149397}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{i64 2148237249}
!117 = !{i64 2148151713, i64 2148151745, i64 2148151774, i64 2148151808, i64 2148151839, i64 2148151862}
!118 = !{i64 2149876244}
!119 = !{i64 2157488359}
!120 = !{i64 6107230}
!121 = !{i64 2157934168}
!122 = !{i64 2157938911}
!123 = !{i64 2157833799}
!124 = !{i64 2157834040}
!125 = !{i64 2157851078}
!126 = !{i64 2157851315}
