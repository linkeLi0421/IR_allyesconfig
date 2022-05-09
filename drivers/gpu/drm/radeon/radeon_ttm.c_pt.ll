; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_ttm.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_ttm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttm_device_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.radeon_ttm_tt = type { %struct.ttm_tt, i64, i64, ptr, i32, i8 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.radeon_asic_config = type { %struct.cik_asic }
%struct.cik_asic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [32 x i32], [16 x i32], i32 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.87 = type { ptr }
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.radeon_asic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.95, %struct.anon.96, [8 x ptr], %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.95 = type { ptr, ptr, ptr }
%struct.anon.96 = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.97 = type { ptr, ptr }
%struct.anon.98 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }

@radeon_bo_driver = internal global { %struct.ttm_device_funcs, [36 x i8] } { %struct.ttm_device_funcs { ptr @radeon_ttm_tt_create, ptr @radeon_ttm_tt_populate, ptr @radeon_ttm_tt_unpopulate, ptr @radeon_ttm_tt_destroy, ptr @ttm_bo_eviction_valuable, ptr @radeon_evict_flags, ptr @radeon_bo_move, ptr @radeon_bo_delete_mem_notify, ptr null, ptr @radeon_ttm_io_mem_reserve, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed initializing buffer object driver(%d).\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed initializing VRAM heap.\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_ttm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] radeon: %uM of VRAM memory ready\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ttm_init\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_ttm.c\00", [60 x i8] zeroinitializer }, align 32
@radeon_ttm_init._entry_ptr = internal global ptr @radeon_ttm_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed initializing GTT heap.\0A\00", [33 x i8] zeroinitializer }, align 32
@radeon_ttm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 752, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] radeon: %uM of GTT memory ready.\0A\00", [54 x i8] zeroinitializer }, align 32
@radeon_ttm_init._entry_ptr.8 = internal global ptr @radeon_ttm_init._entry.6, section ".printk_index", align 4
@radeon_ttm_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] radeon: ttm finalized\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_ttm_fini\00", [16 x i8] zeroinitializer }, align 32
@radeon_ttm_fini._entry_ptr = internal global ptr @radeon_ttm_fini._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@radeon_evict_flags.placements = internal constant { %struct.ttm_place, [16 x i8] } zeroinitializer, align 32
@radeon_bo_move.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nothing to bind %u pages for mreg %p back %p!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to bind %u pages at 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/drm/ttm/ttm_bo_driver.h\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown placement %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Trying to move memory with ring turned off.\0A\00", [51 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 71, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"radeon_vram\00", [20 x i8] zeroinitializer }, align 32
@radeon_ttm_vram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @radeon_ttm_vram_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_ttm_vram_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"radeon_gtt\00", [21 x i8] zeroinitializer }, align 32
@radeon_ttm_gtt_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @radeon_ttm_gtt_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_ttm_gtt_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"radeon_vram_mm\00", [17 x i8] zeroinitializer }, align 32
@radeon_mm_vram_dump_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_mm_vram_dump_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"radeon_gtt_mm\00", [18 x i8] zeroinitializer }, align 32
@radeon_mm_gtt_dump_table_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_mm_gtt_dump_table_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ttm_page_pool\00", [18 x i8] zeroinitializer }, align 32
@radeon_ttm_page_pool_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_ttm_page_pool_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"radeon_bo_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 692, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 715, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 722, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 743, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 748, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 751, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 779, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 717, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"placements\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 85, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 455, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 463, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [35 x i8] c"../include/drm/ttm/ttm_bo_driver.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 192, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 163, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 178, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 71, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 945, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"radeon_ttm_vram_fops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 876, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 948, i32 22 }
@___asan_gen_.125 = private unnamed_addr constant [20 x i8] c"radeon_ttm_gtt_fops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 930, i32 37 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 951, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"radeon_mm_vram_dump_table_fops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 827, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 953, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"radeon_mm_gtt_dump_table_fops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 828, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 955, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"radeon_ttm_page_pool_fops\00", align 1
@___asan_gen_.144 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_ttm.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 829, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 271, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 44, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 230, i32 6 }
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 214, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 174, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_ttm_fini._entry, ptr @radeon_ttm_fini._entry_ptr, ptr @radeon_ttm_init._entry, ptr @radeon_ttm_init._entry.6, ptr @radeon_ttm_init._entry_ptr, ptr @radeon_ttm_init._entry_ptr.8, ptr @radeon_bo_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @radeon_evict_flags.placements, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @radeon_ttm_vram_fops, ptr @.str.23, ptr @radeon_ttm_gtt_fops, ptr @.str.24, ptr @radeon_mm_vram_dump_table_fops, ptr @.str.25, ptr @radeon_mm_gtt_dump_table_fops, ptr @.str.26, ptr @radeon_ttm_page_pool_fops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_driver to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_evict_flags.placements to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_vram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_gtt_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_mm_vram_dump_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_mm_gtt_dump_table_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_ttm_page_pool_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @radeon_get_rdev(ptr noundef readnone %bdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %bdev, i32 -2040
  ret ptr %add.ptr3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_ttm_tt_set_userptr(ptr nocapture noundef readnone %rdev, ptr noundef writeonly %ttm, i64 noundef %addr, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %userptr = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 2
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %addr, ptr %userptr, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 53
  %5 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mm, align 8
  %usermm = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 3
  %7 = ptrtoint ptr %usermm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %usermm, align 8
  %userflags = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 4
  %8 = ptrtoint ptr %userflags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %flags, ptr %userflags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_ttm_tt_is_bound(ptr nocapture noundef readnone %bdev, ptr nocapture noundef readonly %ttm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %bound.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 5
  %0 = ptrtoint ptr %bound.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bound.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i = icmp ne i8 %1, 0
  ret i1 %tobool.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_ttm_tt_has_userptr(ptr nocapture noundef readnone %rdev, ptr noundef readonly %ttm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %userptr = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 2
  %0 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool = icmp ne i64 %1, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @radeon_ttm_tt_is_readonly(ptr nocapture noundef readnone %rdev, ptr noundef readonly %ttm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ttm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %userflags = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 4
  %0 = ptrtoint ptr %userflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %userflags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_ttm_init(ptr noundef %rdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %ddev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 1
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %anon_inode = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %anon_inode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %anon_inode, align 4
  %i_mapping = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_mapping, align 8
  %vma_offset_manager = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 33
  %8 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vma_offset_manager, align 4
  %need_swiotlb = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 65
  %10 = ptrtoint ptr %need_swiotlb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %need_swiotlb, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool = icmp ne i8 %11, 0
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 2
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %dma_mask.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 18
  %14 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_mask.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool2.not.i.i = icmp eq i64 %17, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge

land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_addressing_limited.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  br label %dma_addressing_limited.exit

dma_addressing_limited.exit:                      ; preds = %if.end.i.i, %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge
  %retval.0.i.i = phi i64 [ 4294967295, %if.end.i.i ], [ %17, %land.lhs.true.i.i.dma_addressing_limited.exit_crit_edge ]
  %bus_dma_limit.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 20
  %18 = ptrtoint ptr %bus_dma_limit.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bus_dma_limit.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp1.i = icmp eq i64 %19, 0
  %20 = tail call i64 @llvm.umin.i64(i64 %retval.0.i.i, i64 %19) #15
  %cond11.i = select i1 %cmp1.i, i64 %retval.0.i.i, i64 %20
  %call12.i = tail call i64 @dma_get_required_mask(ptr noundef %dev2) #15
  call void @__sanitizer_cov_trace_cmp8(i64 %cond11.i, i64 %call12.i)
  %cmp13.i = icmp ult i64 %cond11.i, %call12.i
  %call3 = tail call i32 @ttm_device_init(ptr noundef %mman, ptr noundef nonnull @radeon_bo_driver, ptr noundef %1, ptr noundef %7, ptr noundef %9, i1 noundef zeroext %tobool, i1 noundef zeroext %cmp13.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end, label %if.then

if.then:                                          ; preds = %dma_addressing_limited.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %call3) #15
  br label %cleanup

if.end:                                           ; preds = %dma_addressing_limited.exit
  %initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 1
  %21 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %initialized, align 8
  %real_vram_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 11
  %22 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %real_vram_size.i, align 8
  %shr.i = lshr i64 %23, 12
  %conv.i = trunc i64 %shr.i to i32
  %call.i.i = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 2, i1 noundef zeroext false, i32 noundef %conv.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %24 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %initialized, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end9.radeon_ttm_set_active_vram_size.exit_crit_edge, label %if.end.i

if.end9.radeon_ttm_set_active_vram_size.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %radeon_ttm_set_active_vram_size.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 4
  %26 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %visible_vram_size, align 8
  %arrayidx.i.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i, align 4
  %shr.i73 = lshr i64 %27, 12
  %size2.i = getelementptr inbounds %struct.ttm_resource_manager, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %size2.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %shr.i73, ptr %size2.i, align 8
  br label %radeon_ttm_set_active_vram_size.exit

radeon_ttm_set_active_vram_size.exit:             ; preds = %if.end.i, %if.end9.radeon_ttm_set_active_vram_size.exit_crit_edge
  %stolen_vga_memory = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 16
  %call10 = tail call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef 262144, i32 noundef 4096, i1 noundef zeroext true, i32 noundef 4, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %stolen_vga_memory) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %radeon_ttm_set_active_vram_size.exit.cleanup_crit_edge

radeon_ttm_set_active_vram_size.exit.cleanup_crit_edge: ; preds = %radeon_ttm_set_active_vram_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %radeon_ttm_set_active_vram_size.exit
  %31 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %stolen_vga_memory, align 8
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4, i32 0, i32 9
  %33 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %34, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %35 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.end18
    i32 -512, label %if.end13.cleanup_crit_edge
  ], !prof !90

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 13
  %36 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rdev.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.17, ptr noundef %32) #18
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %40 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %stolen_vga_memory, align 8
  %call20 = tail call i32 @radeon_bo_pin(ptr noundef %41, i32 noundef 4, ptr noundef null) #15
  %42 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stolen_vga_memory, align 8
  tail call fastcc void @radeon_bo_unreserve(ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %do.end, label %if.then23

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @radeon_bo_unref(ptr noundef %stolen_vga_memory) #15
  br label %cleanup

do.end:                                           ; preds = %if.end18
  %44 = ptrtoint ptr %real_vram_size.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %real_vram_size.i, align 8
  %div71 = lshr i64 %45, 20
  %conv = trunc i64 %div71 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv) #18
  %gtt_size.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %46 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %gtt_size.i, align 8
  %shr.i75 = lshr i64 %47, 12
  %conv.i76 = trunc i64 %shr.i75 to i32
  %call.i.i77 = tail call i32 @ttm_range_man_init_nocheck(ptr noundef %mman, i32 noundef 1, i1 noundef zeroext true, i32 noundef %conv.i76) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool29.not = icmp eq i32 %call.i.i77, 0
  br i1 %tobool29.not, label %do.end34, label %if.then30

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #15
  br label %cleanup

do.end34:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %48 = ptrtoint ptr %gtt_size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %gtt_size.i, align 8
  %div3772 = lshr i64 %49, 20
  %conv38 = trunc i64 %div3772 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv38) #18
  tail call fastcc void @radeon_ttm_debugfs_init(ptr noundef %rdev)
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then30, %if.then23, %do.end.i, %if.end13.cleanup_crit_edge, %radeon_ttm_set_active_vram_size.exit.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %call.i.i, %if.then8 ], [ %call20, %if.then23 ], [ %call.i.i77, %if.then30 ], [ 0, %do.end34 ], [ %call10, %radeon_ttm_set_active_vram_size.exit.cleanup_crit_edge ], [ %retval.1.i.i, %do.end.i ], [ %retval.1.i.i, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @radeon_ttm_set_active_vram_size(ptr nocapture noundef readonly %rdev, i64 noundef %size) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %shr = lshr i64 %size, 12
  %size2 = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %shr, ptr %size2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #15
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #15
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #15
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #15
  tail call void @ww_mutex_unlock(ptr noundef %7) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_ttm_debugfs_init(ptr noundef %rdev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.22, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_ttm_vram_fops) #15
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_ttm_gtt_fops) #15
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_mm_vram_dump_table_fops) #15
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.25, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_mm_gtt_dump_table_fops) #15
  %call4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_ttm_page_pool_fops) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_ttm_fini(ptr noundef %rdev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mman = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47
  %initialized = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 47, i32 1
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %stolen_vga_memory = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 16
  %2 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stolen_vga_memory, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then2:                                         ; preds = %if.end
  %resv32.i.i = getelementptr inbounds %struct.radeon_bo, ptr %3, i32 0, i32 4, i32 0, i32 9
  %4 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %5, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %retval.1.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %6 = zext i32 %retval.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %retval.1.i.i, label %do.end.i [
    i32 0, label %if.then4
    i32 -512, label %if.then2.if.end7_crit_edge
  ], !prof !90

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %rdev.i = getelementptr inbounds %struct.radeon_bo, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdev.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #18
  br label %if.end7

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stolen_vga_memory, align 8
  tail call void @radeon_bo_unpin(ptr noundef %12) #15
  %13 = ptrtoint ptr %stolen_vga_memory to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stolen_vga_memory, align 8
  tail call fastcc void @radeon_bo_unreserve(ptr noundef %14)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.end.i, %if.then2.if.end7_crit_edge
  tail call void @radeon_bo_unref(ptr noundef %stolen_vga_memory) #15
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.end.if.end9_crit_edge
  %call.i = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 2) #15
  %call.i30 = tail call i32 @ttm_range_man_fini_nocheck(ptr noundef %mman, i32 noundef 1) #15
  tail call void @ttm_device_fini(ptr noundef %mman) #15
  tail call void @radeon_gart_fini(ptr noundef %rdev) #15
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %initialized, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unpin(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_device_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @radeon_ttm_tt_create(ptr noundef %bo, i32 noundef %page_flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 64) #19
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %bo, i32 432
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i32 2, i32 1
  %caching.0 = select i1 %tobool.not, i32 %., i32 0
  %call9 = tail call i32 @ttm_sg_tt_init(ptr noundef nonnull %call7.i.i, ptr noundef %bo, i32 noundef %page_flags, i32 noundef %caching.0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.then11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_tt_populate(ptr noundef %bdev, ptr noundef %ttm, ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool3.not = icmp eq ptr %ttm, null
  br i1 %tobool3.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %userptr = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %userptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %userptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool4.not = icmp eq i64 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #19
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %5 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %sg, align 4
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %page_flags, align 4
  %or = or i32 %7, 4
  store i32 %or, ptr %page_flags, align 4
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  br i1 %tobool.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true12

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true12:                                  ; preds = %if.end10
  %sg13 = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %8 = ptrtoint ptr %sg13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg13, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %land.lhs.true12.if.end19_crit_edge, label %if.then15

land.lhs.true12.if.end19_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 4
  %10 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_address, align 8
  %num_pages = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %12 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pages, align 4
  %call18 = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef nonnull %9, ptr noundef %11, i32 noundef %13) #15
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true12.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %pool = getelementptr i8, ptr %bdev, i32 156
  %call21 = tail call i32 @ttm_pool_alloc(ptr noundef %pool, ptr noundef %ttm, ptr noundef %ctx) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then15, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then15 ], [ %call21, %if.end19 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_ttm_tt_unpopulate(ptr noundef %bdev, ptr noundef %ttm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %bdev, i32 -2040
  %page_flags = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 1
  %0 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page_flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %userptr.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 2
  %2 = ptrtoint ptr %userptr.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %userptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not.i.i = icmp eq i64 %3, 0
  br i1 %tobool.not.i.i, label %entry.if.end.i.i_crit_edge, label %if.then.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @radeon_ttm_tt_unpin_userptr(ptr noundef %bdev, ptr noundef %ttm) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %entry.if.end.i.i_crit_edge
  %bound.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 5
  %4 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bound.i.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.radeon_ttm_tt_unbind.exit_crit_edge, label %if.end3.i.i

if.end.i.i.radeon_ttm_tt_unbind.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %radeon_ttm_tt_unbind.exit

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %offset.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %offset.i.i, align 8
  %conv.i.i = trunc i64 %7 to i32
  %num_pages.i.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %8 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_pages.i.i, align 4
  tail call void @radeon_gart_unbind(ptr noundef %add.ptr3.i, i32 noundef %conv.i.i, i32 noundef %9) #15
  %10 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %bound.i.i, align 8
  br label %radeon_ttm_tt_unbind.exit

radeon_ttm_tt_unbind.exit:                        ; preds = %if.end3.i.i, %if.end.i.i.radeon_ttm_tt_unbind.exit_crit_edge
  %tobool3.not = icmp eq ptr %ttm, null
  br i1 %tobool3.not, label %radeon_ttm_tt_unbind.exit.if.end_crit_edge, label %land.lhs.true

radeon_ttm_tt_unbind.exit.if.end_crit_edge:       ; preds = %radeon_ttm_tt_unbind.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %radeon_ttm_tt_unbind.exit
  %11 = ptrtoint ptr %userptr.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %userptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool4.not = icmp eq i64 %12, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg, align 4
  tail call void @kfree(ptr noundef %14) #15
  %15 = ptrtoint ptr %page_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %page_flags, align 4
  %and6 = and i32 %16, -5
  store i32 %and6, ptr %page_flags, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %radeon_ttm_tt_unbind.exit.if.end_crit_edge
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pool = getelementptr i8, ptr %bdev, i32 156
  tail call void @ttm_pool_free(ptr noundef %pool, ptr noundef %ttm) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_ttm_tt_destroy(ptr nocapture noundef readnone %bdev, ptr noundef %ttm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ttm_tt_fini(ptr noundef %ttm) #15
  tail call void @kfree(ptr noundef %ttm) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ttm_bo_eviction_valuable(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_evict_flags(ptr noundef %bo, ptr nocapture noundef writeonly %placement) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @radeon_ttm_bo_is_radeon_bo(ptr noundef %bo) #15
  br i1 %call, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %placement1 = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 1
  %0 = ptrtoint ptr %placement1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @radeon_evict_flags.placements, ptr %placement1, align 4
  %busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 3
  %1 = ptrtoint ptr %busy_placement to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @radeon_evict_flags.placements, ptr %busy_placement, align 4
  %2 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %placement, align 4
  %num_busy_placement = getelementptr inbounds %struct.ttm_placement, ptr %placement, i32 0, i32 2
  %3 = ptrtoint ptr %num_busy_placement to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_busy_placement, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %bo, i32 -96
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cond = icmp eq i32 %7, 2
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog.sink.split_crit_edge

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %if.end
  %rdev = getelementptr i8, ptr %bo, i32 464
  %8 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdev, align 8
  %asic = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 56
  %10 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %11, i32 0, i32 17, i32 5
  %12 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %copy_ring_index, align 4
  %ready = getelementptr %struct.radeon_device, ptr %9, i32 0, i32 52, i32 %13, i32 17
  %14 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ready, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp = icmp eq i8 %15, 0
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.else

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 42, i32 4
  %16 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %visible_vram_size, align 8
  %real_vram_size = getelementptr inbounds %struct.radeon_device, ptr %9, i32 0, i32 42, i32 11
  %18 = ptrtoint ptr %real_vram_size to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %real_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp8 = icmp ult i64 %17, %19
  br i1 %cmp8, label %land.lhs.true, label %if.else.sw.epilog.sink.split_crit_edge

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

land.lhs.true:                                    ; preds = %if.else
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %5, align 4
  %conv11 = zext i32 %21 to i64
  %shr = lshr i64 %17, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %conv11)
  %cmp15 = icmp ugt i64 %shr, %conv11
  br i1 %cmp15, label %if.then17, label %land.lhs.true.sw.epilog.sink.split_crit_edge

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.then17:                                        ; preds = %land.lhs.true
  %conv22 = trunc i64 %shr to i32
  tail call void @radeon_ttm_placement_from_domain(ptr noundef %add.ptr, i32 noundef 6) #15
  %placement23 = getelementptr i8, ptr %bo, i32 -20
  %num_busy_placement24 = getelementptr i8, ptr %bo, i32 -12
  %22 = ptrtoint ptr %num_busy_placement24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_busy_placement24, align 4
  %23 = ptrtoint ptr %placement23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %placement23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2788.not = icmp eq i32 %24, 0
  br i1 %cmp2788.not, label %if.then17.sw.epilog_crit_edge, label %for.body.lr.ph

if.then17.sw.epilog_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.lr.ph:                                   ; preds = %if.then17
  %placements = getelementptr i8, ptr %bo, i32 -84
  %busy_placement48 = getelementptr i8, ptr %bo, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx29 = getelementptr [4 x %struct.ttm_place], ptr %placements, i32 0, i32 %i.089
  %mem_type30 = getelementptr inbounds %struct.ttm_place, ptr %arrayidx29, i32 0, i32 2
  %25 = ptrtoint ptr %mem_type30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mem_type30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp31 = icmp eq i32 %26, 2
  br i1 %cmp31, label %if.then33, label %if.else44

if.then33:                                        ; preds = %for.body
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv22)
  %cmp37 = icmp ult i32 %28, %conv22
  br i1 %cmp37, label %if.then39, label %if.then33.for.inc_crit_edge

if.then33.for.inc_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv22, ptr %arrayidx29, align 4
  br label %for.inc

if.else44:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %busy_placement48 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx29, ptr %busy_placement48, align 4
  %31 = ptrtoint ptr %num_busy_placement24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %num_busy_placement24, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else44, %if.then39, %if.then33.for.inc_crit_edge
  %inc = add nuw i32 %i.089, 1
  %32 = ptrtoint ptr %placement23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %placement23, align 4
  %cmp27 = icmp ult i32 %inc, %33
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.sw.epilog_crit_edge

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

sw.epilog.sink.split:                             ; preds = %land.lhs.true.sw.epilog.sink.split_crit_edge, %if.else.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 2, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 2, %if.else.sw.epilog.sink.split_crit_edge ], [ 1, %if.end.sw.epilog.sink.split_crit_edge ]
  tail call void @radeon_ttm_placement_from_domain(ptr noundef %add.ptr, i32 noundef %.sink) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.inc.sw.epilog_crit_edge, %if.then17.sw.epilog_crit_edge
  %placement56 = getelementptr i8, ptr %bo, i32 -20
  %34 = call ptr @memcpy(ptr %placement, ptr %placement56, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_bo_move(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %ctx, ptr noundef %new_mem, ptr nocapture noundef writeonly %hop) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.then:                                          ; preds = %entry
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 8
  %tobool.not.i = icmp eq ptr %new_mem, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %6 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %7, i32 -2040
  %bound.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bound.i.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.end2_crit_edge

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2

if.end.i.i:                                       ; preds = %if.end.i
  %userptr.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %userptr.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %userptr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool1.not.i.i = icmp eq i64 %11, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %userflags.i.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %userflags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %userflags.i.i.i, align 4
  %and.i.i.i = and i32 %13, 1
  %14 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i.i.i, align 8
  %mm.i.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %mm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm.i.i.i, align 8
  %usermm.i.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %usermm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usermm.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %19, %21
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.then2.i.i.if.end4.i.i_crit_edge

if.then2.i.i.if.end4.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.end.i.i.i:                                     ; preds = %if.then2.i.i
  %and4.i.i.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.end20.i.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.if.end20.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  %num_pages.i.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %num_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_pages.i.i.i, align 4
  %conv.i.i.i = zext i32 %23 to i64
  %mul.i.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %add.i.i.i = add i64 %mul.i.i.i, %11
  %conv7.i.i.i = trunc i64 %add.i.i.i to i32
  %conv10.i.i.i = trunc i64 %11 to i32
  %call11.i.i.i = tail call ptr @find_vma(ptr noundef %19, i32 noundef %conv10.i.i.i) #15
  %tobool12.not.i.i.i = icmp eq ptr %call11.i.i.i, null
  br i1 %tobool12.not.i.i.i, label %if.then6.i.i.i.if.end4.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then6.i.i.i.if.end4.i.i_crit_edge:             ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then6.i.i.i
  %vm_file.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call11.i.i.i, i32 0, i32 14
  %24 = ptrtoint ptr %vm_file.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vm_file.i.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %25, null
  br i1 %tobool13.not.i.i.i, label %lor.lhs.false14.i.i.i, label %lor.lhs.false.i.i.i.if.end4.i.i_crit_edge

lor.lhs.false.i.i.i.if.end4.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

lor.lhs.false14.i.i.i:                            ; preds = %lor.lhs.false.i.i.i
  %vm_end.i.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call11.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %vm_end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vm_end.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv7.i.i.i)
  %cmp15.i.i.i = icmp ult i32 %27, %conv7.i.i.i
  br i1 %cmp15.i.i.i, label %lor.lhs.false14.i.i.i.if.end4.i.i_crit_edge, label %lor.lhs.false14.i.i.i.if.end20.i.i.i_crit_edge

lor.lhs.false14.i.i.i.if.end20.i.i.i_crit_edge:   ; preds = %lor.lhs.false14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i.i.i

lor.lhs.false14.i.i.i.if.end4.i.i_crit_edge:      ; preds = %lor.lhs.false14.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i

if.end20.i.i.i:                                   ; preds = %lor.lhs.false14.i.i.i.if.end20.i.i.i_crit_edge, %if.end.i.i.i.if.end20.i.i.i_crit_edge
  %num_pages22.i.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %28 = xor i32 %and.i.i.i, 1
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.cond.i.i.i.do.body.i.i.i_crit_edge, %if.end20.i.i.i
  %pinned.0.i.i.i = phi i32 [ 0, %if.end20.i.i.i ], [ %add37.i.i.i, %do.cond.i.i.i.do.body.i.i.i_crit_edge ]
  %29 = ptrtoint ptr %num_pages22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_pages22.i.i.i, align 4
  %sub.i.i.i = sub i32 %30, %pinned.0.i.i.i
  %31 = ptrtoint ptr %userptr.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %userptr.i.i, align 8
  %mul25.i.i.i = shl i32 %pinned.0.i.i.i, 12
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %add.ptr.i.i.i = getelementptr ptr, ptr %34, i32 %pinned.0.i.i.i
  %35 = trunc i64 %32 to i32
  %conv29.i.i.i = add i32 %mul25.i.i.i, %35
  %call32.i.i.i = tail call i32 @get_user_pages(i32 noundef %conv29.i.i.i, i32 noundef %sub.i.i.i, i32 noundef %28, ptr noundef %add.ptr.i.i.i, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i.i.i)
  %cmp33.i.i.i = icmp slt i32 %call32.i.i.i, 0
  %add37.i.i.i = add i32 %call32.i.i.i, %pinned.0.i.i.i
  %pinned.1.i.i.i = select i1 %cmp33.i.i.i, i32 %pinned.0.i.i.i, i32 %add37.i.i.i
  br i1 %cmp33.i.i.i, label %do.body.i.i.i.release_pages.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.release_pages.i.i.i_crit_edge:      ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_pages.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %36 = ptrtoint ptr %num_pages22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pages22.i.i.i, align 4
  %cmp44.i.i.i = icmp ult i32 %pinned.1.i.i.i, %37
  br i1 %cmp44.i.i.i, label %do.cond.i.i.i.do.body.i.i.i_crit_edge, label %do.end.i.i.i

do.cond.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

do.end.i.i.i:                                     ; preds = %do.cond.i.i.i
  %sg.i.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sg.i.i.i, align 4
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %5, align 4
  %shl.i.i.i = shl i32 %37, 12
  %call.i.i.i.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef %39, ptr noundef %41, i32 noundef %37, i32 noundef 0, i32 noundef %shl.i.i.i, i32 noundef -1, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool52.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool52.not.i.i.i, label %if.end54.i.i.i, label %do.end.i.i.i.release_sg.i.i.i_crit_edge

do.end.i.i.i.release_sg.i.i.i_crit_edge:          ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_sg.i.i.i

if.end54.i.i.i:                                   ; preds = %do.end.i.i.i
  %42 = ptrtoint ptr %add.ptr3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr3.i.i.i, align 8
  %44 = ptrtoint ptr %sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg.i.i.i, align 4
  %call56.i.i.i = tail call i32 @dma_map_sgtable(ptr noundef %43, ptr noundef %45, i32 noundef %and.i.i.i, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i.i.i)
  %tobool57.not.i.i.i = icmp eq i32 %call56.i.i.i, 0
  br i1 %tobool57.not.i.i.i, label %if.end59.i.i.i, label %if.end54.i.i.i.release_sg.i.i.i_crit_edge

if.end54.i.i.i.release_sg.i.i.i_crit_edge:        ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %release_sg.i.i.i

if.end59.i.i.i:                                   ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sg.i.i.i, align 4
  %dma_address.i.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 4
  %48 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dma_address.i.i.i, align 8
  %50 = ptrtoint ptr %num_pages22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_pages22.i.i.i, align 4
  %call63.i.i.i = tail call i32 @drm_prime_sg_to_dma_addr_array(ptr noundef %47, ptr noundef %49, i32 noundef %51) #15
  br label %if.end4.i.i

release_sg.i.i.i:                                 ; preds = %if.end54.i.i.i.release_sg.i.i.i_crit_edge, %do.end.i.i.i.release_sg.i.i.i_crit_edge
  %52 = ptrtoint ptr %sg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sg.i.i.i, align 4
  tail call void @kfree(ptr noundef %53) #15
  br label %release_pages.i.i.i

release_pages.i.i.i:                              ; preds = %release_sg.i.i.i, %do.body.i.i.i.release_pages.i.i.i_crit_edge
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  tail call void @release_pages(ptr noundef %55, i32 noundef %pinned.1.i.i.i) #15
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %release_pages.i.i.i, %if.end59.i.i.i, %lor.lhs.false14.i.i.i.if.end4.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end4.i.i_crit_edge, %if.then6.i.i.i.if.end4.i.i_crit_edge, %if.then2.i.i.if.end4.i.i_crit_edge, %if.end.i.i.if.end4.i.i_crit_edge
  %flags.0.i.i = phi i32 [ 7, %if.end.i.i.if.end4.i.i_crit_edge ], [ 3, %if.then2.i.i.if.end4.i.i_crit_edge ], [ 3, %if.then6.i.i.i.if.end4.i.i_crit_edge ], [ 3, %lor.lhs.false.i.i.i.if.end4.i.i_crit_edge ], [ 3, %lor.lhs.false14.i.i.i.if.end4.i.i_crit_edge ], [ 3, %if.end59.i.i.i ], [ 3, %release_pages.i.i.i ]
  %56 = ptrtoint ptr %new_mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %new_mem, align 4
  %shl.i.i = shl i32 %57, 12
  %conv.i.i = zext i32 %shl.i.i to i64
  %offset.i.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %5, i32 0, i32 1
  %58 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv.i.i, ptr %offset.i.i, align 8
  %num_pages.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 2
  %59 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_pages.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool5.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i, label %if.end4.i.i.if.end25.i.i_crit_edge

if.end4.i.i.if.end25.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 456, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %new_mem, ptr noundef %5) #15
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end.i.i, %if.end4.i.i.if.end25.i.i_crit_edge
  %caching.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 6
  %61 = ptrtoint ptr %caching.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %caching.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 2
  %or.i.i = or i32 %flags.0.i.i, 8
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %flags.0.i.i
  %63 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %offset.i.i, align 8
  %conv30.i.i = trunc i64 %64 to i32
  %65 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_pages.i.i, align 4
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %5, align 4
  %dma_address.i.i = getelementptr inbounds %struct.ttm_tt, ptr %5, i32 0, i32 4
  %69 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dma_address.i.i, align 8
  %call33.i.i = tail call i32 @radeon_gart_bind(ptr noundef %add.ptr3.i.i.i, i32 noundef %conv30.i.i, i32 noundef %66, ptr noundef %68, ptr noundef %70, i32 noundef %spec.select.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end39.i.i, label %if.then35.i.i

if.then35.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %71 = ptrtoint ptr %num_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_pages.i.i, align 4
  %73 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %offset.i.i, align 8
  %conv38.i.i = trunc i64 %74 to i32
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %72, i32 noundef %conv38.i.i) #15
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %bound.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %bound.i.i, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.end39.i.i, %if.end.i.if.end2_crit_edge, %entry.if.end2_crit_edge
  %76 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ctx, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.i = icmp ne i8 %77, 0
  %no_wait_gpu.i = getelementptr inbounds %struct.ttm_operation_ctx, ptr %ctx, i32 0, i32 1
  %78 = ptrtoint ptr %no_wait_gpu.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %no_wait_gpu.i, align 1, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool1.i = icmp ne i8 %79, 0
  %call.i = tail call i32 @ttm_bo_wait(ptr noundef %bo, i1 noundef zeroext %tobool.i, i1 noundef zeroext %tobool1.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 13
  %80 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp7.not = icmp eq i32 %81, 0
  br i1 %cmp7.not, label %if.end49, label %land.rhs

land.rhs:                                         ; preds = %if.end6
  %.b159 = load i1, ptr @radeon_bo_move.__already_done, align 1
  br i1 %.b159, label %land.rhs.cleanup_crit_edge, label %if.then16, !prof !91

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @radeon_bo_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 216, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end49:                                         ; preds = %if.end6
  %mem_type50 = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %82 = ptrtoint ptr %mem_type50 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mem_type50, align 4
  %bdev51 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %84 = ptrtoint ptr %bdev51 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bdev51, align 8
  %add.ptr3.i = getelementptr i8, ptr %85, i32 -2040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp54 = icmp eq i32 %83, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end65

land.lhs.true:                                    ; preds = %if.end49
  %ttm55 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %86 = ptrtoint ptr %ttm55 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ttm55, align 8
  %cmp56 = icmp eq ptr %87, null
  br i1 %cmp56, label %if.then57, label %land.lhs.true61

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ttm_bo_move_null(ptr noundef %bo, ptr noundef %new_mem)
  br label %out

land.lhs.true61:                                  ; preds = %land.lhs.true
  %88 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp63 = icmp eq i32 %89, 1
  br i1 %cmp63, label %if.then64, label %land.lhs.true61.if.end75_crit_edge

land.lhs.true61.if.end75_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @ttm_bo_move_null(ptr noundef %bo, ptr noundef %new_mem)
  br label %out

if.end65:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp67 = icmp eq i32 %83, 1
  br i1 %cmp67, label %land.lhs.true68, label %if.end65.if.end75_crit_edge

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

land.lhs.true68:                                  ; preds = %if.end65
  %90 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp70 = icmp eq i32 %91, 0
  br i1 %cmp70, label %if.then71, label %land.lhs.true68.if.end75_crit_edge

land.lhs.true68.if.end75_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then71:                                        ; preds = %land.lhs.true68
  %ttm73 = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 7
  %92 = ptrtoint ptr %ttm73 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ttm73, align 8
  tail call fastcc void @radeon_ttm_tt_unbind(ptr noundef %85, ptr noundef %93)
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #15
  %94 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %resource, align 4
  %tobool.not.i162 = icmp eq ptr %95, null
  br i1 %tobool.not.i162, label %if.then71.ttm_bo_assign_mem.exit_crit_edge, label %do.end.i, !prof !91

if.then71.ttm_bo_assign_mem.exit_crit_edge:       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #17
  br label %ttm_bo_assign_mem.exit

do.end.i:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 192, i32 noundef 9, ptr noundef null) #15
  br label %ttm_bo_assign_mem.exit

ttm_bo_assign_mem.exit:                           ; preds = %do.end.i, %if.then71.ttm_bo_assign_mem.exit_crit_edge
  %96 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %new_mem, ptr %resource, align 4
  br label %out

if.end75:                                         ; preds = %land.lhs.true68.if.end75_crit_edge, %if.end65.if.end75_crit_edge, %land.lhs.true61.if.end75_crit_edge
  %asic = getelementptr i8, ptr %85, i32 6264
  %97 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %98, i32 0, i32 17, i32 5
  %99 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %copy_ring_index, align 4
  %ready = getelementptr %struct.radeon_device, ptr %add.ptr3.i, i32 0, i32 52, i32 %100, i32 17
  %101 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ready, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool76.not = icmp eq i8 %102, 0
  br i1 %tobool76.not, label %if.end75.if.then100_crit_edge, label %land.lhs.true77

if.end75.if.then100_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then100

land.lhs.true77:                                  ; preds = %if.end75
  %copy80 = getelementptr inbounds %struct.radeon_asic, ptr %98, i32 0, i32 17, i32 4
  %103 = ptrtoint ptr %copy80 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %copy80, align 4
  %cmp81.not = icmp eq ptr %104, null
  br i1 %cmp81.not, label %land.lhs.true77.if.then100_crit_edge, label %if.then82

land.lhs.true77.if.then100_crit_edge:             ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then100

if.then82:                                        ; preds = %land.lhs.true77
  br i1 %cmp54, label %land.lhs.true85, label %lor.lhs.false

land.lhs.true85:                                  ; preds = %if.then82
  %105 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %106)
  %cmp87 = icmp eq i32 %106, 2
  br i1 %cmp87, label %land.lhs.true85.if.then93_crit_edge, label %land.lhs.true85.if.end95_crit_edge

land.lhs.true85.if.end95_crit_edge:               ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

land.lhs.true85.if.then93_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then93

lor.lhs.false:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp89 = icmp eq i32 %83, 2
  br i1 %cmp89, label %land.lhs.true90, label %lor.lhs.false.if.end95_crit_edge

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

land.lhs.true90:                                  ; preds = %lor.lhs.false
  %107 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp92 = icmp eq i32 %108, 0
  br i1 %cmp92, label %land.lhs.true90.if.then93_crit_edge, label %land.lhs.true90.if.end95_crit_edge

land.lhs.true90.if.end95_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

land.lhs.true90.if.then93_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then93

if.then93:                                        ; preds = %land.lhs.true90.if.then93_crit_edge, %land.lhs.true85.if.then93_crit_edge
  %109 = ptrtoint ptr %hop to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %hop, align 4
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 1
  %110 = ptrtoint ptr %lpfn to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %lpfn, align 4
  %mem_type94 = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 2
  %111 = ptrtoint ptr %mem_type94 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %mem_type94, align 4
  %flags = getelementptr inbounds %struct.ttm_place, ptr %hop, i32 0, i32 3
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %flags, align 4
  br label %cleanup

if.end95:                                         ; preds = %land.lhs.true90.if.end95_crit_edge, %lor.lhs.false.if.end95_crit_edge, %land.lhs.true85.if.end95_crit_edge
  %call97 = tail call fastcc i32 @radeon_move_blit(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %new_mem, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %phi.cmp = icmp eq i32 %call97, 0
  br i1 %phi.cmp, label %if.end95.out_crit_edge, label %if.end95.if.then100_crit_edge

if.end95.if.then100_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then100

if.end95.out_crit_edge:                           ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then100:                                       ; preds = %if.end95.if.then100_crit_edge, %land.lhs.true77.if.then100_crit_edge, %if.end75.if.then100_crit_edge
  %call101 = tail call i32 @ttm_bo_move_memcpy(ptr noundef %bo, ptr noundef %ctx, ptr noundef %new_mem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then100.out_crit_edge, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then100.out_crit_edge:                         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %if.then100.out_crit_edge, %if.end95.out_crit_edge, %ttm_bo_assign_mem.exit, %if.then64, %if.then57
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 5
  %113 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %size, align 8
  %conv = zext i32 %114 to i64
  %num_bytes_moved = getelementptr i8, ptr %85, i32 9408
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_bytes_moved, i32 noundef 8) #15
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %num_bytes_moved) #15
  tail call void @radeon_bo_move_notify(ptr noundef %bo, i32 noundef %83, ptr noundef %new_mem) #15
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then100.cleanup_crit_edge, %if.then93, %if.then16, %land.rhs.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then35.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -72, %if.then93 ], [ %call.i, %if.end2.cleanup_crit_edge ], [ -22, %if.then16 ], [ %call101, %if.then100.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %call33.i.i, %if.then35.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_bo_delete_mem_notify(ptr noundef %bo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %old_type.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @radeon_bo_move_notify(ptr noundef %bo, i32 noundef %old_type.0, ptr noundef null) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @radeon_ttm_io_mem_reserve(ptr nocapture noundef readonly %bdev, ptr nocapture noundef %mem) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 2
  %0 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mem_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %1, label %sw.default [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge21
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 1
  %3 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pages, align 4
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem, align 4
  %shl2 = shl i32 %6, 12
  %offset = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl2, ptr %offset, align 4
  %8 = add i32 %6, %4
  %add = shl i32 %8, 12
  %conv = zext i32 %add to i64
  %visible_vram_size = getelementptr i8, ptr %bdev, i32 -568
  %9 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %visible_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %conv)
  %cmp = icmp ult i64 %10, %conv
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #17
  %aper_base = getelementptr i8, ptr %bdev, i32 -588
  %11 = ptrtoint ptr %aper_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %aper_base, align 4
  %add9 = add i32 %12, %shl2
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add9, ptr %offset, align 4
  %is_iomem = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %is_iomem, align 4
  %caching = getelementptr inbounds %struct.ttm_resource, ptr %mem, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %caching to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %caching, align 4
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge21
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_sg_tt_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_sg_to_dma_addr_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_ttm_tt_unbind(ptr noundef %bdev, ptr nocapture noundef %ttm) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i.i = getelementptr i8, ptr %bdev, i32 -2040
  %userptr.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 2
  %0 = ptrtoint ptr %userptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %userptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not.i = icmp eq i64 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @radeon_ttm_tt_unpin_userptr(ptr noundef %bdev, ptr noundef %ttm) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bound.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 5
  %2 = ptrtoint ptr %bound.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bound.i, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.radeon_ttm_backend_unbind.exit_crit_edge, label %if.end3.i

if.end.i.radeon_ttm_backend_unbind.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %radeon_ttm_backend_unbind.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %offset.i = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %offset.i, align 8
  %conv.i = trunc i64 %5 to i32
  %num_pages.i = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 2
  %6 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_pages.i, align 4
  tail call void @radeon_gart_unbind(ptr noundef %add.ptr3.i.i, i32 noundef %conv.i, i32 noundef %7) #15
  %8 = ptrtoint ptr %bound.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bound.i, align 8
  br label %radeon_ttm_backend_unbind.exit

radeon_ttm_backend_unbind.exit:                   ; preds = %if.end3.i, %if.end.i.radeon_ttm_backend_unbind.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_pool_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_ttm_tt_unpin_userptr(ptr nocapture noundef readonly %bdev, ptr nocapture noundef readonly %ttm) unnamed_addr #4 align 64 {
entry:
  %sg_iter = alloca %struct.sg_page_iter, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3.i = getelementptr i8, ptr %bdev, i32 -2040
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sg_iter) #15
  %0 = getelementptr inbounds %struct.sg_page_iter, ptr %sg_iter, i32 0, i32 1
  %userflags = getelementptr inbounds %struct.radeon_ttm_tt, ptr %ttm, i32 0, i32 4
  %1 = call ptr @memset(ptr %sg_iter, i32 255, i32 16)
  %2 = ptrtoint ptr %userflags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %userflags, align 4
  %and = and i32 %3, 1
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %ttm, i32 0, i32 3
  %4 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr3.i, align 8
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %11, i32 noundef %and, i32 noundef 0) #15
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %orig_nents = getelementptr inbounds %struct.sg_table, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %orig_nents, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %sg_iter, ptr noundef %15, i32 noundef %17, i32 noundef 0) #15
  %call932 = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %sg_iter) #15
  br i1 %call932, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %18 = ptrtoint ptr %sg_iter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sg_iter, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page_iter_page.exit, label %do.body2.i.i, !prof !91

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #15, !srcloc !92
  unreachable

sg_page_iter_page.exit:                           ; preds = %for.body
  %and.i.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i to ptr
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %0, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %22, i32 %24
  %25 = ptrtoint ptr %userflags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %userflags, align 4
  %and12 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then14, label %sg_page_iter_page.exit.if.end16_crit_edge

sg_page_iter_page.exit.if.end16_crit_edge:        ; preds = %sg_page_iter_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %sg_page_iter_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = call zeroext i1 @set_page_dirty(ptr noundef %add.ptr.i) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %sg_page_iter_page.exit.if.end16_crit_edge
  call void @mark_page_accessed(ptr noundef %add.ptr.i) #15
  %27 = getelementptr %struct.page, ptr %22, i32 %24, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i31 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i31)
  %tobool.not.i.i = icmp eq i32 %and.i.i31, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !91

if.then.i.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %add.ptr.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !93

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = inttoptr i32 %retval.0.i.i to ptr
  call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.11) #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !94
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !95
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %35 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !96
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@radeon_ttm_tt_unpin_userptr, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !98

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__put_page(ptr noundef %31) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %call9 = call zeroext i1 @__sg_page_iter_next(ptr noundef nonnull %sg_iter) #15
  br i1 %call9, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %36 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg, align 4
  call void @sg_free_table(ptr noundef %37) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sg_iter) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gart_unbind(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_tt_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ttm_bo_is_radeon_bo(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ttm_bo_move_null(ptr noundef %bo, ptr noundef %new_mem) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 6
  tail call void @ttm_resource_free(ptr noundef %bo, ptr noundef %resource) #15
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.ttm_bo_assign_mem.exit_crit_edge, label %do.end.i, !prof !91

entry.ttm_bo_assign_mem.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ttm_bo_assign_mem.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 192, i32 noundef 9, ptr noundef null) #15
  br label %ttm_bo_assign_mem.exit

ttm_bo_assign_mem.exit:                           ; preds = %do.end.i, %entry.ttm_bo_assign_mem.exit_crit_edge
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %new_mem, ptr %resource, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_free(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_move_blit(ptr noundef %bo, i1 noundef zeroext %evict, ptr noundef %new_mem, ptr nocapture noundef readonly %old_mem) unnamed_addr #4 align 64 {
entry:
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #15
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %bo, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %add.ptr3.i = getelementptr i8, ptr %1, i32 -2040
  %asic = getelementptr i8, ptr %1, i32 6264
  %2 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asic, align 8
  %copy_ring_index = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 5
  %4 = ptrtoint ptr %copy_ring_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %copy_ring_index, align 4
  %6 = ptrtoint ptr %old_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_mem, align 4
  %conv = zext i32 %7 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %8 = ptrtoint ptr %new_mem to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %new_mem, align 4
  %conv2 = zext i32 %9 to i64
  %shl3 = shl nuw nsw i64 %conv2, 12
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %old_mem, i32 0, i32 2
  %10 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mem_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %11, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %11) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ -552, %sw.bb4 ], [ -536, %entry.sw.epilog_crit_edge ]
  %gtt_start = getelementptr i8, ptr %1, i32 %.sink
  %13 = ptrtoint ptr %gtt_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %.pn = load i64, ptr %gtt_start, align 8
  %old_start.0 = add i64 %.pn, %shl
  %mem_type8 = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 2
  %14 = ptrtoint ptr %mem_type8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_type8, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %15, label %sw.default17 [
    i32 2, label %sw.epilog.sw.epilog19_crit_edge
    i32 1, label %sw.bb13
  ]

sw.epilog.sw.epilog19_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog19

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog19

sw.default17:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %11) #15
  br label %cleanup

sw.epilog19:                                      ; preds = %sw.bb13, %sw.epilog.sw.epilog19_crit_edge
  %.sink58 = phi i32 [ -552, %sw.bb13 ], [ -536, %sw.epilog.sw.epilog19_crit_edge ]
  %ready = getelementptr %struct.radeon_device, ptr %add.ptr3.i, i32 0, i32 52, i32 %5, i32 17
  %17 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ready, align 8, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #15
  br label %cleanup

do.end:                                           ; preds = %sw.epilog19
  %gtt_start15 = getelementptr i8, ptr %1, i32 %.sink58
  %19 = ptrtoint ptr %gtt_start15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.pn57 = load i64, ptr %gtt_start15, align 8
  %new_start.0 = add i64 %.pn57, %shl3
  %num_pages20 = getelementptr inbounds %struct.ttm_resource, ptr %new_mem, i32 0, i32 1
  %20 = ptrtoint ptr %num_pages20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_pages20, align 4
  %copy23 = getelementptr inbounds %struct.radeon_asic, ptr %3, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %copy23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %copy23, align 4
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %24 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resv, align 8
  %call24 = tail call ptr %23(ptr noundef %add.ptr3.i, i64 noundef %old_start.0, i64 noundef %new_start.0, i32 noundef %21, ptr noundef %25) #15
  %26 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call24, ptr %fence, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 @ttm_bo_move_accel_cleanup(ptr noundef %bo, ptr noundef %call24, i1 noundef zeroext %evict, i1 noundef zeroext false, ptr noundef %new_mem) #15
  call void @radeon_fence_unref(ptr noundef nonnull %fence) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then, %sw.default17, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %sw.default17 ], [ %27, %if.then26 ], [ %call31, %if.end28 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_memcpy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_move_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gart_bind(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_pages(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_move_accel_cleanup(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_fence_unref(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_get_required_mask(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_init_nocheck(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_vram_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %and = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup30_crit_edge

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %and1 = and i64 %3, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %while.cond.preheader, label %lor.lhs.false.cleanup30_crit_edge

lor.lhs.false.cleanup30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool3.not57 = icmp eq i32 %size, 0
  br i1 %tobool3.not57, label %while.cond.preheader.cleanup30_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup30_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %mc_vram_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 3
  %mmio_idx_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 19
  %rmmio.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 31
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.060 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %size.addr.059 = phi i32 [ %size, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %result.058 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %6 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mc_vram_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %7)
  %cmp.not = icmp ult i64 %5, %7
  br i1 %cmp.not, label %do.body6, label %while.body.cleanup30_crit_edge

while.body.cleanup30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

do.body6:                                         ; preds = %while.body
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mmio_idx_lock) #15
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  %conv11 = trunc i64 %9 to i32
  %or = or i32 %conv11, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !99
  tail call void @arm_heavy_mb() #15
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #15
  %11 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #15, !srcloc !100
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %14)
  %cmp12 = icmp ugt i32 %14, 38
  br i1 %cmp12, label %if.then14, label %do.body6.if.end16_crit_edge

do.body6.if.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %pos, align 8
  %17 = lshr i64 %16, 31
  %conv15 = trunc i64 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !99
  tail call void @arm_heavy_mb() #15
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv15) #15
  %19 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #15, !srcloc !100
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.body6.if.end16_crit_edge
  %21 = ptrtoint ptr %rmmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #15, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !102
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mmio_idx_lock, i32 noundef %call8) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 863) #15
  %25 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #9, !srcloc !103
  %and.i = and i32 %27, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #15, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !105
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %buf.addr.060, i32 %24, i32 -1226833921) #15, !srcloc !106
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #15, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool25.not = icmp eq i32 %28, 0
  br i1 %tobool25.not, label %cleanup, label %if.end16.cleanup30_crit_edge

if.end16.cleanup30_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

cleanup:                                          ; preds = %if.end16
  %add = add i32 %result.058, 4
  %add.ptr = getelementptr i8, ptr %buf.addr.060, i32 4
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos, align 8
  %add28 = add i64 %30, 4
  store i64 %add28, ptr %pos, align 8
  %sub = add i32 %size.addr.059, -4
  %tobool3.not = icmp eq i32 %sub, 0
  br i1 %tobool3.not, label %cleanup.cleanup30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %if.end16.cleanup30_crit_edge, %while.body.cleanup30_crit_edge, %while.cond.preheader.cleanup30_crit_edge, %lor.lhs.false.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup30_crit_edge ], [ -22, %entry.cleanup30_crit_edge ], [ 0, %while.cond.preheader.cleanup30_crit_edge ], [ %add, %cleanup.cleanup30_crit_edge ], [ %result.058, %while.body.cleanup30_crit_edge ], [ %28, %if.end16.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_vram_open(ptr noundef %inode, ptr nocapture noundef writeonly %filep) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %mc_vram_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 3
  %2 = ptrtoint ptr %mc_vram_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mc_vram_size, align 8
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %3)
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i_size_write(ptr noundef %inode, i64 noundef %i_size) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %8, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !108
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i28 = add i32 %14, ptrtoint (ptr @lockdep_recursion to i32)
  %15 = inttoptr i32 %add.i28 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !109
  %18 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i7.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not.i = icmp eq i32 %17, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i29 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i29 to ptr
  %preempt_count.i.i30 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i9.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %29, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !110
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %33, ptrtoint (ptr @hardirqs_enabled to i32)
  %34 = inttoptr i32 %add47.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !111
  %37 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i12.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %40, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool54.not.i = icmp eq i32 %36, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !91

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %41 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !112
  %dep_map.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %43 = tail call ptr @llvm.returnaddress(i32 0) #15
  %44 = ptrtoint ptr %43 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %44) #15
  %i_size8 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  %45 = ptrtoint ptr %i_size8 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %i_size, ptr %i_size8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !113
  %46 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %i_size_seqcount, align 4
  %inc.i.i = add i32 %47, 1
  store i32 %inc.i.i, ptr %i_size_seqcount, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !114
  %48 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i26 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i26 to ptr
  %preempt_count.i.i27 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i27, align 4
  %sub.i = add i32 %51, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i27, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_gtt_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef %pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not66 = icmp eq i32 %size, 0
  br i1 %tobool.not66, label %entry.cleanup26_crit_edge, label %while.body.lr.ph

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

while.body.lr.ph:                                 ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_cpu_pages = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 43, i32 4
  %pages = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 43, i32 6
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %result.071 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %buf.addr.068 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr18, %cleanup.while.body_crit_edge ]
  %size.addr.067 = phi i32 [ %size, %while.body.lr.ph ], [ %sub21, %cleanup.while.body_crit_edge ]
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pos, align 8
  %div = sdiv i64 %3, 4096
  %4 = trunc i64 %3 to i32
  %conv = and i32 %4, 4095
  %sub = sub nuw nsw i32 4096, %conv
  %5 = tail call i32 @llvm.umin.i32(i32 %size.addr.067, i32 %sub)
  %6 = ptrtoint ptr %num_cpu_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpu_pages, align 8
  %conv2 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %div, i64 %conv2)
  %cmp3.not = icmp slt i64 %div, %conv2
  br i1 %cmp3.not, label %if.end, label %while.body.cleanup26_crit_edge

while.body.cleanup26_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

if.end:                                           ; preds = %while.body
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 8
  %idxprom = trunc i64 %div to i32
  %arrayidx = getelementptr ptr, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 44) #15
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i.i = lshr i32 %13, 30
  %14 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %shr.i.i, label %if.then7.if.then.i52_crit_edge [
    i32 2, label %if.then7.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then7.if.else.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then7.if.then.i52_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i52

is_highmem_idx.exit.i:                            ; preds = %if.then7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %15 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i.not.i = icmp eq i32 %15, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i52_crit_edge

is_highmem_idx.exit.i.if.then.i52_crit_edge:      ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i52

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i52:                                      ; preds = %is_highmem_idx.exit.i.if.then.i52_crit_edge, %if.then7.if.then.i52_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %11) #15
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %if.then7.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %11) #15
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i52
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i52 ]
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %conv
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %5, i1 noundef zeroext true) #15
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #15
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #15
  br i1 %call.i.i, label %kmap.exit.copy_to_user.exit_crit_edge, label %if.end.i.i

kmap.exit.copy_to_user.exit_crit_edge:            ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %kmap.exit
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.068, i32 %5, i32 -1226833920) #20, !srcloc !115
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %5) #15
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.068, ptr noundef %add.ptr, i32 noundef %5) #15
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %kmap.exit.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %5, %kmap.exit.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %5, %if.end.i.i.copy_to_user.exit_crit_edge ]
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  %arrayidx12 = getelementptr ptr, ptr %18, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx12, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.28, i32 noundef 55) #15
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %shr.i.i53 = lshr i32 %22, 30
  %23 = zext i32 %shr.i.i53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %shr.i.i53, label %copy_to_user.exit.if.end14_crit_edge [
    i32 2, label %copy_to_user.exit.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i55
  ]

copy_to_user.exit.if.end.i_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

copy_to_user.exit.if.end14_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

is_highmem_idx.exit.i55:                          ; preds = %copy_to_user.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %24 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp2.i.not.i54 = icmp eq i32 %24, 2
  br i1 %cmp2.i.not.i54, label %is_highmem_idx.exit.i55.if.end.i_crit_edge, label %is_highmem_idx.exit.i55.if.end14_crit_edge

is_highmem_idx.exit.i55.if.end14_crit_edge:       ; preds = %is_highmem_idx.exit.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

is_highmem_idx.exit.i55.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i55.if.end.i_crit_edge, %copy_to_user.exit.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %20) #15
  br label %if.end14

if.else:                                          ; preds = %if.end
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.068, i32 %5, i32 -1226833920) #20, !srcloc !116
  %asmresult.i = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %cmp.i = icmp eq i32 %asmresult.i, 0
  br i1 %cmp.i, label %if.then.i56, label %if.else.cleanup26_crit_edge

if.else.cleanup26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

if.then.i56:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %26 = tail call i32 @llvm.read_register.i32(metadata !79) #15
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 4
  %28 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i) #9, !srcloc !103
  %and.i.i.i = and i32 %28, -13
  %or.i.i.i = or i32 %and.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i) #15, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !105
  %call1.i.i = tail call i32 @arm_clear_user(ptr noundef %buf.addr.068, i32 noundef %5) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #15, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #15, !srcloc !105
  br label %if.end14

if.end14:                                         ; preds = %if.then.i56, %if.end.i, %is_highmem_idx.exit.i55.if.end14_crit_edge, %copy_to_user.exit.if.end14_crit_edge
  %r.0 = phi i32 [ %n.addr.0.i, %copy_to_user.exit.if.end14_crit_edge ], [ %n.addr.0.i, %is_highmem_idx.exit.i55.if.end14_crit_edge ], [ %n.addr.0.i, %if.end.i ], [ %call1.i.i, %if.then.i56 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool15.not = icmp eq i32 %r.0, 0
  br i1 %tobool15.not, label %cleanup, label %if.end14.cleanup26_crit_edge

if.end14.cleanup26_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

cleanup:                                          ; preds = %if.end14
  %add = add i32 %5, %result.071
  %add.ptr18 = getelementptr i8, ptr %buf.addr.068, i32 %5
  %conv19 = zext i32 %5 to i64
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %pos, align 8
  %add20 = add i64 %30, %conv19
  store i64 %add20, ptr %pos, align 8
  %sub21 = sub i32 %size.addr.067, %5
  %tobool.not = icmp eq i32 %sub21, 0
  br i1 %tobool.not, label %cleanup.cleanup26_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

cleanup26:                                        ; preds = %cleanup.cleanup26_crit_edge, %if.end14.cleanup26_crit_edge, %if.else.cleanup26_crit_edge, %while.body.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup26_crit_edge ], [ -14, %if.else.cleanup26_crit_edge ], [ -14, %if.end14.cleanup26_crit_edge ], [ %result.071, %while.body.cleanup26_crit_edge ], [ %add, %cleanup.cleanup26_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_gtt_open(ptr noundef %inode, ptr nocapture noundef writeonly %filep) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 5
  %2 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %gtt_size, align 8
  tail call fastcc void @i_size_write(ptr noundef %inode, i64 noundef %3)
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_clear_user(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_mm_vram_dump_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_mm_vram_dump_table_show, ptr noundef %1) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_mm_vram_dump_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #4 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 47, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #15
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !117
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !117
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !117
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !117
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_mm_gtt_dump_table_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_mm_gtt_dump_table_show, ptr noundef %1) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_mm_gtt_dump_table_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #4 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 47, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #15
  %4 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %5 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %6 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !120
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__drm_puts_seq_file, ptr %4, align 4, !alias.scope !120
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %m, ptr %5, align 4, !alias.scope !120
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %6, align 4, !alias.scope !120
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %func, align 8
  %debug = getelementptr inbounds %struct.ttm_resource_manager_func, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debug, align 4
  call void %14(ptr noundef %3, ptr noundef nonnull %p) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_page_pool_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_ttm_page_pool_show, ptr noundef %1) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_ttm_page_pool_show(ptr noundef %m, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pool = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 47, i32 0, i32 5
  %call = tail call i32 @ttm_pool_debugfs(ptr noundef %pool, ptr noundef %m) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_pool_debugfs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !69, !71, !73, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 715, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 722, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 743, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @radeon_ttm_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @radeon_ttm_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 748, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 751, i32 2}
!14 = !{ptr @radeon_ttm_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @radeon_ttm_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 779, i32 2}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @radeon_ttm_fini._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @radeon_ttm_fini._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @radeon_bo_driver, !22, !"radeon_bo_driver", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 692, i32 32}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/mm.h", i32 717, i32 2}
!25 = !{ptr @radeon_evict_flags.placements, !26, !"placements", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 85, i32 32}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 216, i32 6}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 455, i32 3}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 463, i32 3}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 192, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 163, i32 3}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 178, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @radeon_bo_reserve._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @radeon_bo_reserve._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 945, i32 22}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 948, i32 22}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 951, i32 22}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 953, i32 22}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 955, i32 22}
!57 = !{ptr @radeon_ttm_vram_fops, !58, !"radeon_ttm_vram_fops", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 876, i32 37}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @radeon_ttm_gtt_fops, !63, !"radeon_ttm_gtt_fops", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 930, i32 37}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!73 = !{ptr @radeon_mm_vram_dump_table_fops, !74, !"radeon_mm_vram_dump_table_fops", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 827, i32 1}
!75 = !{ptr @radeon_mm_gtt_dump_table_fops, !76, !"radeon_mm_gtt_dump_table_fops", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 828, i32 1}
!77 = !{ptr @radeon_ttm_page_pool_fops, !78, !"radeon_ttm_page_pool_fops", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/radeon/radeon_ttm.c", i32 829, i32 1}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i8 0, i8 2}
!90 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2153801319, i64 2153801811, i64 2153801356, i64 2153801412, i64 2153801446, i64 2153801470, i64 2153801511, i64 2153801532, i64 2153801560, i64 2153801594}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 2153584859, i64 2153585342, i64 2153584896, i64 2153584952, i64 2153584986, i64 2153585010, i64 2153585051, i64 2153585072, i64 2153585100, i64 2153585134}
!95 = !{i64 2148619629}
!96 = !{i64 2148534362, i64 2148534394, i64 2148534423, i64 2148534457, i64 2148534488, i64 2148534511}
!97 = !{i64 2148619858}
!98 = !{i64 2148344570, i64 2148344575, i64 2148344588, i64 2148344632, i64 2148344666, i64 2148344687}
!99 = !{i64 2157867464}
!100 = !{i64 6239635}
!101 = !{i64 6240053}
!102 = !{i64 2157867057}
!103 = !{i64 5731066}
!104 = !{i64 5731263}
!105 = !{i64 2153216496}
!106 = !{i64 2158014841, i64 2158015121, i64 2158015455, i64 2158015789}
!107 = !{i64 2153531376}
!108 = !{i64 2150154557}
!109 = !{i64 2150159491}
!110 = !{i64 2150181209}
!111 = !{i64 2150186103}
!112 = !{i64 2150262630}
!113 = !{i64 2150262955}
!114 = !{i64 2153543238}
!115 = !{i64 2153236192, i64 2153236217}
!116 = !{i64 2153232313, i64 2153232338}
!117 = !{!118}
!118 = distinct !{!118, !119, !"drm_seq_file_printer: %agg.result"}
!119 = distinct !{!119, !"drm_seq_file_printer"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"drm_seq_file_printer: %agg.result"}
!122 = distinct !{!122, !"drm_seq_file_printer"}
