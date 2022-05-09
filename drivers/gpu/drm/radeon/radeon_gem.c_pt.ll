; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.radeon_bo = type { %struct.list_head, i32, [4 x %struct.ttm_place], %struct.ttm_placement, %struct.ttm_buffer_object, %struct.ttm_bo_kmap_obj, i32, ptr, i32, i32, i32, i32, %struct.list_head, ptr, i32, %struct.mmu_interval_notifier }
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
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
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
%struct.cpumask = type { [1 x i32] }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.radeon_bo_va = type { %struct.list_head, i32, ptr, i32, %struct.interval_tree_node, %struct.list_head, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_radeon_gem_info = type { i64, i64, i64 }
%struct.drm_radeon_gem_create = type { i64, i64, i32, i32, i32 }
%struct.ttm_operation_ctx = type { i8, i8, i8, i8, i8, ptr, i64 }
%struct.drm_radeon_gem_userptr = type { i64, i64, i32, i32 }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.drm_radeon_gem_set_domain = type { i32, i32, i32 }
%struct.drm_radeon_gem_mmap = type { i32, i32, i64, i64, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.drm_radeon_gem_busy = type { i32, i32 }
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
%struct.drm_radeon_gem_set_tiling = type { i32, i32, i32 }
%struct.drm_radeon_gem_get_tiling = type { i32, i32, i32 }
%struct.drm_radeon_gem_va = type { i32, i32, i32, i32, i64 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_radeon_gem_op = type { i32, i32, i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.80 = type { %struct.callback_head }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.82 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Allocation size %ldMb bigger than %ldMb limit\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to allocate GEM object (%ld, %d, %u, %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@radeon_gem_object_funcs = dso_local constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @radeon_gem_object_free, ptr @radeon_gem_object_open, ptr @radeon_gem_object_close, ptr null, ptr @radeon_gem_prime_export, ptr @radeon_gem_prime_pin, ptr @radeon_gem_prime_unpin, ptr @radeon_gem_prime_get_sg_table, ptr @drm_gem_ttm_vmap, ptr @drm_gem_ttm_vunmap, ptr @radeon_gem_object_mmap, ptr @radeon_gem_vm_ops }, [48 x i8] zeroinitializer }, align 32
@radeon_gem_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @radeon_gem_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unimplemented %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.radeon_gem_pread_ioctl = private unnamed_addr constant [23 x i8] c"radeon_gem_pread_ioctl\00", align 1
@__func__.radeon_gem_pwrite_ioctl = private unnamed_addr constant [24 x i8] c"radeon_gem_pwrite_ioctl\00", align 1
@__const.radeon_gem_userptr_ioctl.ctx = private unnamed_addr constant { i8, i8, i8, i8, i8, [3 x i8], ptr, [4 x i8], i64 } { i8 1, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, ptr null, [4 x i8] zeroinitializer, i64 0 }, align 8
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d \0A\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@radeon_gem_va_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 705, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"offset 0x%lX is in reserved area 0x%X\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"radeon_gem_va_ioctl\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/radeon/radeon_gem.c\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_gem_va_ioctl._entry_ptr = internal global ptr @radeon_gem_va_ioctl._entry, section ".printk_index", align 4
@radeon_gem_va_ioctl._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 717, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid flags 0x%08X vs 0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@radeon_gem_va_ioctl._entry_ptr.12 = internal global ptr @radeon_gem_va_ioctl._entry.10, section ".printk_index", align 4
@radeon_gem_va_ioctl._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 728, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported operation %d\0A\00", [38 x i8] zeroinitializer }, align 32
@radeon_gem_va_ioctl._entry_ptr.15 = internal global ptr @radeon_gem_va_ioctl._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"radeon_gem_info\00", [16 x i8] zeroinitializer }, align 32
@radeon_debugfs_gem_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @radeon_debugfs_gem_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@radeon_gem_object_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.7, i32 243, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"leaking bo va because we fail to reserve bo (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon_gem_object_close\00", [40 x i8] zeroinitializer }, align 32
@radeon_gem_object_close._entry_ptr = internal global ptr @radeon_gem_object_close._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@radeon_bo_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 71, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%p reserve failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"radeon_bo_reserve\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/radeon/radeon_object.h\00", [57 x i8] zeroinitializer }, align 32
@radeon_bo_reserve._entry_ptr = internal global ptr @radeon_bo_reserve._entry, section ".printk_index", align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@radeon_gem_set_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014Set domain without domain !\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_gem_set_domain\00", [42 x i8] zeroinitializer }, align 32
@radeon_gem_set_domain._entry_ptr = internal global ptr @radeon_gem_set_domain._entry, section ".printk_index", align 4
@radeon_gem_set_domain._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to wait for object: %li\0A\00", [62 x i8] zeroinitializer }, align 32
@radeon_gem_set_domain._entry_ptr.27 = internal global ptr @radeon_gem_set_domain._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't update BO_VA (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VRAM\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" GTT\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" CPU\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bo[0x%08x] %8ldkB %8ldMB %s pid %8ld\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.radeon_gem_busy_ioctl = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 113, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 127, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"radeon_gem_object_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 276, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"radeon_gem_vm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 76, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 315, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 579, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 597, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 702, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 716, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 727, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 893, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant [29 x i8] c"radeon_debugfs_gem_info_fops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 885, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 242, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [42 x i8] c"../drivers/gpu/drm/radeon/radeon_object.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 71, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 159, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 169, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 671, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 866, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 869, i32 16 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 873, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.149 = private constant [39 x i8] c"../drivers/gpu/drm/radeon/radeon_gem.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 876, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [35 x i8] c"switch.table.radeon_gem_busy_ioctl\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @radeon_bo_reserve._entry, ptr @radeon_bo_reserve._entry_ptr, ptr @radeon_gem_object_close._entry, ptr @radeon_gem_object_close._entry_ptr, ptr @radeon_gem_set_domain._entry, ptr @radeon_gem_set_domain._entry.25, ptr @radeon_gem_set_domain._entry_ptr, ptr @radeon_gem_set_domain._entry_ptr.27, ptr @radeon_gem_va_ioctl._entry, ptr @radeon_gem_va_ioctl._entry.10, ptr @radeon_gem_va_ioctl._entry.13, ptr @radeon_gem_va_ioctl._entry_ptr, ptr @radeon_gem_va_ioctl._entry_ptr.12, ptr @radeon_gem_va_ioctl._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @radeon_gem_object_funcs, ptr @radeon_gem_vm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @radeon_debugfs_gem_info_fops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @switch.table.radeon_gem_busy_ioctl], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_va_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_va_ioctl._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_va_ioctl._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_debugfs_gem_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_object_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_set_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_gem_set_domain._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.radeon_gem_busy_ioctl to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_object_create(ptr noundef %rdev, i32 noundef %size, i32 noundef %alignment, i32 noundef %initial_domain, i32 noundef %flags, i1 noundef zeroext %kernel, ptr nocapture noundef writeonly %obj) local_unnamed_addr #0 align 64 {
entry:
  %robj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %robj) #10
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %robj, align 4, !annotation !79
  %1 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %obj, align 4
  %2 = tail call i32 @llvm.umax.i32(i32 %alignment, i32 4096)
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 42, i32 5
  %3 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %gtt_size, align 8
  %gart_pin_size = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 115
  %5 = ptrtoint ptr %gart_pin_size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %gart_pin_size, align 8
  %sub = sub i64 %4, %6
  %conv = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %size)
  %cmp1 = icmp ult i32 %conv, %size
  br i1 %cmp1, label %if.then3, label %entry.retry_crit_edge

entry.retry_crit_edge:                            ; preds = %entry
  br label %retry

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %size, 20
  %shr4 = lshr i32 %conv, 20
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %shr4) #10
  br label %cleanup

retry:                                            ; preds = %if.then10.retry_crit_edge, %entry.retry_crit_edge
  %initial_domain.addr.0 = phi i32 [ 6, %if.then10.retry_crit_edge ], [ %initial_domain, %entry.retry_crit_edge ]
  %call = call i32 @radeon_bo_create(ptr noundef %rdev, i32 noundef %size, i32 noundef %2, i1 noundef zeroext %kernel, i32 noundef %initial_domain.addr.0, i32 noundef %flags, ptr noundef null, ptr noundef null, ptr noundef nonnull %robj) #10
  %7 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then10 [
    i32 0, label %if.end16
    i32 -512, label %retry.cleanup_crit_edge
  ]

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %retry
  %cmp11 = icmp eq i32 %initial_domain.addr.0, 4
  br i1 %cmp11, label %if.then10.retry_crit_edge, label %if.end14

if.then10.retry_crit_edge:                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %size, i32 noundef %initial_domain.addr.0, i32 noundef %2, i32 noundef %call) #10
  br label %cleanup

if.end16:                                         ; preds = %retry
  %8 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %robj, align 4
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tbo, ptr %obj, align 4
  %funcs = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 4, i32 0, i32 11
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @radeon_gem_object_funcs, ptr %funcs, align 4
  %12 = call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %pid.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 68
  %16 = ptrtoint ptr %pid.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pid.i, align 8
  %pid = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 14
  %18 = ptrtoint ptr %pid to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pid, align 4
  %gem = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57
  call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #10
  %19 = ptrtoint ptr %robj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %robj, align 4
  %objects = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1
  %prev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %20, ptr noundef %22, ptr noundef %objects) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %objects, ptr %20, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %20, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %gem) #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end14, %retry.cleanup_crit_edge, %if.then3
  %retval.0 = phi i32 [ -12, %if.then3 ], [ 0, %list_add_tail.exit ], [ %call, %if.end14 ], [ %call, %retry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %robj) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_init(ptr noundef %rdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %objects = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1
  %0 = ptrtoint ptr %objects to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %objects, ptr %objects, align 4
  %prev.i = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 57, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %objects, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gem_fini(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @radeon_bo_force_delete(ptr noundef %rdev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_force_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_gem_object_free(ptr noundef %gobj) #0 align 64 {
entry:
  %robj = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %robj) #10
  %add.ptr = getelementptr i8, ptr %gobj, i32 -96
  %0 = ptrtoint ptr %robj to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %robj, align 4
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_mn_unregister(ptr noundef nonnull %add.ptr) #10
  call void @radeon_bo_unref(ptr noundef nonnull %robj) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %robj) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_gem_object_open(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -96
  %rdev1 = getelementptr i8, ptr %obj, i32 464
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %cmp = icmp ult i32 %5, 50
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %accel_working, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %resv32.i.i = getelementptr i8, ptr %obj, i32 200
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %9, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %10 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end5
    i32 -512, label %if.end.cleanup_crit_edge
  ], !prof !81

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @radeon_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call ptr @radeon_vm_bo_add(ptr noundef %1, ptr noundef %3, ptr noundef %add.ptr) #10
  br label %if.end10

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %ref_count = getelementptr inbounds %struct.radeon_bo_va, ptr %call6, i32 0, i32 3
  %15 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %ref_count, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %bdev.i.i.i = getelementptr i8, ptr %obj, i32 352
  %17 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %18, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %obj, i32 372
  %19 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %obj, ptr noundef %20, ptr noundef null) #10
  %21 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %23 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %24) #10
  tail call void @ww_mutex_unlock(ptr noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %.ret.0.i.i, %do.end.i ], [ %.ret.0.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @radeon_gem_object_close(ptr noundef %obj, ptr nocapture noundef readonly %file_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -96
  %rdev1 = getelementptr i8, ptr %obj, i32 464
  %0 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev1, align 8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %cmp = icmp ult i32 %5, 50
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %6 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %accel_working, align 2, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %resv32.i.i = getelementptr i8, ptr %obj, i32 200
  %8 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv32.i.i, align 8
  %call.i1.i.i = tail call i32 @ww_mutex_lock(ptr noundef %9, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i.i)
  %cmp.i.i = icmp eq i32 %call.i1.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i1.i.i
  %10 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end5
    i32 -512, label %if.end.do.end_crit_edge
  ], !prof !81

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdev1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #13
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end.do.end_crit_edge
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, i32 noundef %.ret.0.i.i) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @radeon_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.if.end12_crit_edge, label %if.then8

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then8:                                         ; preds = %if.end5
  %ref_count = getelementptr inbounds %struct.radeon_bo_va, ptr %call6, i32 0, i32 3
  %17 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ref_count, align 4
  %dec = add i32 %18, -1
  store i32 %dec, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %if.then10, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_vm_bo_rmv(ptr noundef %1, ptr noundef nonnull %call6) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %bdev.i.i.i = getelementptr i8, ptr %obj, i32 352
  %19 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %20, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %obj, i32 372
  %21 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %obj, ptr noundef %22, ptr noundef null) #10
  %23 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %25 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %26) #10
  tail call void @ww_mutex_unlock(ptr noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_gem_prime_export(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_ttm_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_gem_object_mmap(ptr noundef %obj, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %call = tail call ptr @radeon_get_rdev(ptr noundef %1) #10
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %obj, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %call2 = tail call zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef %call, ptr noundef %3) #10
  br i1 %call2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 @drm_gem_ttm_mmap(ptr noundef %obj, ptr noundef %vma) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @radeon_gem_info_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data, ptr nocapture noundef readnone %filp) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %arrayidx.i = getelementptr %struct.radeon_device, ptr %1, i32 0, i32 47, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %size = getelementptr inbounds %struct.ttm_resource_manager, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %size, align 8
  %shl = shl i64 %5, 12
  %vram_size = getelementptr inbounds %struct.drm_radeon_gem_info, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %vram_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %shl, ptr %vram_size, align 8
  %visible_vram_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 4
  %7 = ptrtoint ptr %visible_vram_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %visible_vram_size, align 8
  %vram_visible = getelementptr inbounds %struct.drm_radeon_gem_info, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %vram_visible to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %vram_visible, align 8
  %vram_pin_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 114
  %10 = ptrtoint ptr %vram_pin_size to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vram_pin_size, align 8
  %sub = sub i64 %8, %11
  store i64 %sub, ptr %vram_visible, align 8
  %gtt_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 42, i32 5
  %12 = ptrtoint ptr %gtt_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %gtt_size, align 8
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %data, align 8
  %gart_pin_size = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 115
  %15 = ptrtoint ptr %gart_pin_size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %gart_pin_size, align 8
  %sub4 = sub i64 %13, %16
  store i64 %sub4, ptr %data, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_pread_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.radeon_gem_pread_ioctl) #10
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_pwrite_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.radeon_gem_pwrite_ioctl) #10
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_create_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %gobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gobj) #10
  %2 = ptrtoint ptr %gobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %gobj, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %handle, align 4, !annotation !79
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  %add = add i64 %5, 4095
  %div40 = and i64 %add, -4096
  store i64 %div40, ptr %data, align 8
  %conv5 = trunc i64 %div40 to i32
  %alignment = getelementptr inbounds %struct.drm_radeon_gem_create, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %alignment to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %alignment, align 8
  %conv6 = trunc i64 %7 to i32
  %initial_domain = getelementptr inbounds %struct.drm_radeon_gem_create, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %initial_domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %initial_domain, align 4
  %flags = getelementptr inbounds %struct.drm_radeon_gem_create, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %call = call i32 @radeon_gem_object_create(ptr noundef %1, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %9, i32 noundef %11, i1 noundef zeroext false, ptr noundef nonnull %gobj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call)
  %cmp.i = icmp eq i32 %call, -35
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 -11, i32 %call.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %gobj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gobj, align 4
  %call9 = call i32 @drm_gem_handle_create(ptr noundef %filp, ptr noundef %13, ptr noundef nonnull %handle) #10
  %tobool.not.i41 = icmp eq ptr %13, null
  br i1 %tobool.not.i41, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i42

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i42:                                      ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @drm_gem_object_free(ptr noundef nonnull %13) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %drm_gem_object_put.exit
  call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call9)
  %cmp.i43 = icmp eq i32 %call9, -35
  br i1 %cmp.i43, label %if.then.i47, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i47:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i44 = call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  %spec.store.select.i46 = select i1 %tobool.not.i45, i32 -11, i32 %call.i44
  br label %cleanup

if.end14:                                         ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle, align 4
  %handle15 = getelementptr inbounds %struct.drm_radeon_gem_create, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %handle15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %handle15, align 8
  call void @up_read(ptr noundef %exclusive_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then.i47, %if.then11.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %spec.store.select.i, %if.then.i ], [ %call, %if.then.cleanup_crit_edge ], [ %spec.store.select.i46, %if.then.i47 ], [ %call9, %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %obj) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_userptr_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.ttm_operation_ctx, align 8
  %gobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ctx) #10
  %0 = call ptr @memcpy(ptr %ctx, ptr @__const.radeon_gem_userptr_ioctl.ctx, i32 24)
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gobj) #10
  %3 = ptrtoint ptr %gobj to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %gobj, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %handle, align 4, !annotation !79
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %size = getelementptr inbounds %struct.drm_radeon_gem_userptr, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %size, align 8
  %or = or i64 %8, %6
  %and113 = and i64 %or, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and113)
  %tobool.not = icmp eq i64 %and113, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_radeon_gem_userptr, ptr %data, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %tobool4.not = icmp ult i32 %10, 16
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and8 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end6
  %family = getelementptr inbounds %struct.radeon_device, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %12)
  %cmp = icmp ult i32 %12, 27
  br i1 %cmp, label %if.then10.cleanup_crit_edge, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %13 = and i32 %10, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %.not = icmp eq i32 %13, 10
  br i1 %.not, label %if.else.if.end22_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %if.then10.if.end22_crit_edge
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %2, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %size, align 8
  %conv24 = trunc i64 %15 to i32
  %call = call i32 @radeon_gem_object_create(ptr noundef %2, i32 noundef %conv24, i32 noundef 0, i32 noundef 1, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %gobj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool25.not = icmp eq i32 %call, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.handle_lockup_crit_edge

if.end22.handle_lockup_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_lockup

if.end27:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %gobj to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gobj, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 -96
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttm, align 8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data, align 8
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %call30 = tail call i32 @radeon_ttm_tt_set_userptr(ptr noundef %2, ptr noundef %19, i64 noundef %21, i32 noundef %23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.release_object_crit_edge

if.end27.release_object_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_object

if.end33:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 8
  %and35 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end44_crit_edge, label %if.then37

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then37:                                        ; preds = %if.end33
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %data, align 8
  %conv39 = trunc i64 %27 to i32
  %call40 = tail call i32 @radeon_mn_register(ptr noundef %add.ptr, i32 noundef %conv39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then37.if.end44_crit_edge, label %if.then37.release_object_crit_edge

if.then37.release_object_crit_edge:               ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_object

if.then37.if.end44_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end44:                                         ; preds = %if.then37.if.end44_crit_edge, %if.end33.if.end44_crit_edge
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and46 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end65_crit_edge, label %if.then48

if.end44.if.end65_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then48:                                        ; preds = %if.end44
  %30 = tail call i32 @llvm.read_register.i32(metadata !69) #10
  %and.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 53
  %34 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mm, align 8
  tail call fastcc void @mmap_read_lock(ptr noundef %35)
  %call50 = tail call fastcc i32 @radeon_bo_reserve(ptr noundef %add.ptr, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task, align 8
  %mm55 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 53
  %38 = ptrtoint ptr %mm55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mm55, align 8
  tail call fastcc void @mmap_read_unlock(ptr noundef %39)
  br label %release_object

if.end56:                                         ; preds = %if.then48
  tail call void @radeon_ttm_placement_from_domain(ptr noundef %add.ptr, i32 noundef 2) #10
  %placement = getelementptr i8, ptr %17, i32 -20
  %call58 = call i32 @ttm_bo_validate(ptr noundef %17, ptr noundef %placement, ptr noundef nonnull %ctx) #10
  call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr)
  %40 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task, align 8
  %mm61 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 53
  %42 = ptrtoint ptr %mm61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mm61, align 8
  call fastcc void @mmap_read_unlock(ptr noundef %43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool62.not = icmp eq i32 %call58, 0
  br i1 %tobool62.not, label %if.end56.if.end65_crit_edge, label %if.end56.release_object_crit_edge

if.end56.release_object_crit_edge:                ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_object

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.end65:                                         ; preds = %if.end56.if.end65_crit_edge, %if.end44.if.end65_crit_edge
  %call66 = call i32 @drm_gem_handle_create(ptr noundef %filp, ptr noundef %17, ptr noundef nonnull %handle) #10
  call fastcc void @drm_gem_object_put(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.handle_lockup_crit_edge

if.end65.handle_lockup_crit_edge:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_lockup

if.end69:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle, align 4
  %handle70 = getelementptr inbounds %struct.drm_radeon_gem_userptr, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %handle70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %handle70, align 4
  call void @up_read(ptr noundef %exclusive_lock) #10
  br label %cleanup

release_object:                                   ; preds = %if.end56.release_object_crit_edge, %if.then52, %if.then37.release_object_crit_edge, %if.end27.release_object_crit_edge
  %r.0 = phi i32 [ %call30, %if.end27.release_object_crit_edge ], [ %call40, %if.then37.release_object_crit_edge ], [ %call50, %if.then52 ], [ %call58, %if.end56.release_object_crit_edge ]
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %release_object.handle_lockup_crit_edge, label %if.then.i

release_object.handle_lockup_crit_edge:           ; preds = %release_object
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_lockup

if.then.i:                                        ; preds = %release_object
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #10
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.handle_lockup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.handle_lockup_crit_edge:      ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %handle_lockup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #10
  br label %handle_lockup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @drm_gem_object_free(ptr noundef nonnull %17) #10
  br label %handle_lockup

handle_lockup:                                    ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.handle_lockup_crit_edge, %release_object.handle_lockup_crit_edge, %if.end65.handle_lockup_crit_edge, %if.end22.handle_lockup_crit_edge
  %r.1 = phi i32 [ %call, %if.end22.handle_lockup_crit_edge ], [ %call66, %if.end65.handle_lockup_crit_edge ], [ %r.0, %release_object.handle_lockup_crit_edge ], [ %r.0, %if.end5.i.i.i.i.i.i.handle_lockup_crit_edge ], [ %r.0, %if.then10.i.i.i.i.i.i ], [ %r.0, %if.then.i.i.i ]
  call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %r.1)
  %cmp.i = icmp eq i32 %r.1, -35
  br i1 %cmp.i, label %if.then.i115, label %handle_lockup.cleanup_crit_edge

handle_lockup.cleanup_crit_edge:                  ; preds = %handle_lockup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i115:                                     ; preds = %handle_lockup
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @radeon_gpu_reset(ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i114 = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool.not.i114, i32 -11, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.then.i115, %handle_lockup.cleanup_crit_edge, %if.end69, %if.else.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then10.cleanup_crit_edge ], [ -13, %if.else.cleanup_crit_edge ], [ %spec.store.select.i, %if.then.i115 ], [ %r.1, %handle_lockup.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ctx) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ttm_tt_set_userptr(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_mn_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_lock(ptr noundef %mm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@mmap_read_lock, %if.then.i)) #10
          to label %__mmap_lock_trace_start_locking.exit [label %if.then.i], !srcloc !86

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit

__mmap_lock_trace_start_locking.exit:             ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@mmap_read_lock, %if.then.i3)) #10
          to label %__mmap_lock_trace_acquire_returned.exit [label %if.then.i3], !srcloc !86

if.then.i3:                                       ; preds = %__mmap_lock_trace_start_locking.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %__mmap_lock_trace_acquire_returned.exit

__mmap_lock_trace_acquire_returned.exit:          ; preds = %if.then.i3, %__mmap_lock_trace_start_locking.exit
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_bo_reserve(ptr noundef %bo, i1 noundef zeroext %no_intr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %resv32.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %0 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv32.i, align 8
  br i1 %no_intr, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef null) #10
  br label %ttm_bo_reserve.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i1.i = tail call i32 @ww_mutex_lock(ptr noundef %1, ptr noundef null) #10
  br label %ttm_bo_reserve.exit

ttm_bo_reserve.exit:                              ; preds = %if.else.i, %if.then30.i
  %ret.0.i = phi i32 [ %call.i.i, %if.then30.i ], [ %call.i1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, -4
  %.ret.0.i = select i1 %cmp.i, i32 -512, i32 %ret.0.i
  %2 = zext i32 %.ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %.ret.0.i, label %do.end [
    i32 0, label %ttm_bo_reserve.exit.cleanup_crit_edge
    i32 -512, label %ttm_bo_reserve.exit.cleanup_crit_edge11
  ], !prof !81

ttm_bo_reserve.exit.cleanup_crit_edge11:          ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ttm_bo_reserve.exit.cleanup_crit_edge:            ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %ttm_bo_reserve.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rdev = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 13
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, ptr noundef %bo) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ttm_bo_reserve.exit.cleanup_crit_edge, %ttm_bo_reserve.exit.cleanup_crit_edge11
  ret i32 %.ret.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmap_read_unlock(ptr noundef %mm) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@mmap_read_unlock, %if.then.i)) #10
          to label %__mmap_lock_trace_released.exit [label %if.then.i], !srcloc !86

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_released.exit

__mmap_lock_trace_released.exit:                  ; preds = %if.then.i, %entry
  %mmap_lock = getelementptr inbounds %struct.anon.10, ptr %mm, i32 0, i32 15
  tail call void @up_read(ptr noundef %mmap_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ttm_placement_from_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_validate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_bo_unreserve(ptr noundef %bo) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4
  %bdev.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #10
  %resource.i.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %tbo, ptr noundef %3, ptr noundef null) #10
  %4 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #10
  %resv.i = getelementptr inbounds %struct.radeon_bo, ptr %bo, i32 0, i32 4, i32 0, i32 9
  %6 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %7) #10
  tail call void @ww_mutex_unlock(ptr noundef %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_set_domain_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %3) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_domains = getelementptr inbounds %struct.drm_radeon_gem_set_domain, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %read_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_domains, align 4
  %write_domain = getelementptr inbounds %struct.drm_radeon_gem_set_domain, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %write_domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %write_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i32 %5, i32 %7
  %8 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %spec.select.i, label %if.end.if.end24.i_crit_edge [
    i32 0, label %do.end.i
    i32 1, label %if.then5.i
    i32 4, label %land.lhs.true21.i
  ]

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #13
  br label %if.then.i

if.then5.i:                                       ; preds = %if.end
  %resv.i = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resv.i, align 8
  %call6.i = tail call i32 @dma_resv_wait_timeout(ptr noundef %10, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  %spec.store.select.i = select i1 %tobool7.not.i, i32 -16, i32 %call6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.store.select.i)
  %cmp10.i = icmp sgt i32 %spec.store.select.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %spec.store.select.i)
  %cmp11.not.i = icmp eq i32 %spec.store.select.i, -4
  %or.cond.i = or i1 %cmp10.i, %cmp11.not.i
  br i1 %or.cond.i, label %if.then5.i.if.end24.i_crit_edge, label %do.end15.i

if.then5.i.if.end24.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

do.end15.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %spec.store.select.i) #13
  br label %if.then.i

land.lhs.true21.i:                                ; preds = %if.end
  %prime_shared_count.i = getelementptr i8, ptr %call, i32 452
  %11 = ptrtoint ptr %prime_shared_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prime_shared_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not.i = icmp eq i32 %12, 0
  br i1 %tobool22.not.i, label %land.lhs.true21.i.if.end24.i_crit_edge, label %land.lhs.true21.i.if.then.i_crit_edge

land.lhs.true21.i.if.then.i_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true21.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true21.i.if.end24.i_crit_edge, %if.then5.i.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  br label %if.then.i

if.then.i:                                        ; preds = %if.end24.i, %land.lhs.true21.i.if.then.i_crit_edge, %do.end15.i, %do.end.i
  %retval.0.i = phi i32 [ %spec.store.select.i, %do.end15.i ], [ 0, %if.end24.i ], [ 0, %do.end.i ], [ -22, %land.lhs.true21.i.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -35
  br i1 %cmp.i, label %if.then.i22, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i22:                                      ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rdev4 = getelementptr i8, ptr %call, i32 464
  %14 = ptrtoint ptr %rdev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rdev4, align 8
  %call.i19 = tail call i32 @radeon_gpu_reset(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  %spec.store.select.i21 = select i1 %tobool.not.i20, i32 -11, i32 %call.i19
  br label %cleanup

cleanup:                                          ; preds = %if.then.i22, %drm_gem_object_put.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ %spec.store.select.i21, %if.then.i22 ], [ %retval.0.i, %drm_gem_object_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_mode_dumb_mmap(ptr noundef %filp, ptr nocapture readnone %dev, i32 noundef %handle, ptr nocapture noundef writeonly %offset_p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %handle) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdev = getelementptr i8, ptr %call, i32 464
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ttm, align 8
  %call1 = tail call zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef %1, ptr noundef %3) #10
  br i1 %call1, label %if.then.i, label %if.then.i15

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.then.i15:                                      ; preds = %if.end
  %start.i.i = getelementptr i8, ptr %call, i32 72
  %5 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %start.i.i, align 8
  %shl.i.i = shl i64 %6, 12
  %7 = ptrtoint ptr %offset_p to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shl.i.i, ptr %offset_p, align 8
  %call.i.i.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i13 = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i13)
  %cmp.i.i.i.i.i.i14 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i13, 1
  br i1 %cmp.i.i.i.i.i.i14, label %if.then.i.i.i19, label %if.end5.i.i.i.i.i.i17

if.end5.i.i.i.i.i.i17:                            ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i13)
  %.not.i.i.i.i.i.i16 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i13, 0
  br i1 %.not.i.i.i.i.i.i16, label %if.end5.i.i.i.i.i.i17.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i18, !prof !84

if.end5.i.i.i.i.i.i17.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i18:                          ; preds = %if.end5.i.i.i.i.i.i17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i19:                                  ; preds = %if.then.i15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i19, %if.then10.i.i.i.i.i.i18, %if.end5.i.i.i.i.i.i17.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ -1, %if.then10.i.i.i.i.i.i ], [ -1, %if.then.i.i.i ], [ 0, %if.end5.i.i.i.i.i.i17.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i18 ], [ 0, %if.then.i.i.i19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_mmap_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %addr_ptr = getelementptr inbounds %struct.drm_radeon_gem_mmap, ptr %data, i32 0, i32 4
  %call = tail call i32 @radeon_mode_dumb_mmap(ptr noundef %filp, ptr undef, i32 noundef %1, ptr noundef %addr_ptr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_busy_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv, align 8
  %call1 = tail call zeroext i1 @dma_resv_test_signaled(ptr noundef %3, i1 noundef zeroext true) #10
  %. = select i1 %call1, i32 0, i32 -16
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.radeon_gem_busy_ioctl, i32 0, i32 %7
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %switch.lookup, %if.end.if.then.i_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.if.then.i_crit_edge ]
  %domain = getelementptr inbounds %struct.drm_radeon_gem_busy, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %domain, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %., %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %., %if.then10.i.i.i.i.i.i ], [ %., %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_wait_idle_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %3) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %call1 = tail call i32 @dma_resv_wait_timeout(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  %6 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  %r.0 = select i1 %cmp2, i32 -16, i32 %6
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %mem_type, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %11 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asic, align 8
  %mmio_hdp_flush = getelementptr inbounds %struct.radeon_asic, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %mmio_hdp_flush to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio_hdp_flush, align 4
  %tobool.not = icmp ne ptr %14, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cond = icmp eq i32 %10, 2
  %or.cond = select i1 %tobool.not, i1 %cond, i1 false
  br i1 %or.cond, label %if.then12, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rdev13 = getelementptr i8, ptr %call, i32 464
  %15 = ptrtoint ptr %rdev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rdev13, align 8
  %asic14 = getelementptr inbounds %struct.radeon_device, ptr %16, i32 0, i32 56
  %17 = ptrtoint ptr %asic14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %asic14, align 8
  %mmio_hdp_flush15 = getelementptr inbounds %struct.radeon_asic, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %mmio_hdp_flush15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio_hdp_flush15, align 4
  tail call void %20(ptr noundef %1) #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then12, %if.end.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %r.0)
  %cmp.i = icmp eq i32 %r.0, -35
  br i1 %cmp.i, label %if.then.i34, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i34:                                      ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i33 = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool.not.i33, i32 -11, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %drm_gem_object_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %spec.store.select.i, %if.then.i34 ], [ %r.0, %drm_gem_object_put.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_set_tiling_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %1) #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %3) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -96
  %tiling_flags = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %tiling_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiling_flags, align 4
  %pitch = getelementptr inbounds %struct.drm_radeon_gem_set_tiling, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %pitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pitch, align 4
  %call2 = tail call i32 @radeon_bo_set_tiling_flags(ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %call2, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call2, %if.then10.i.i.i.i.i.i ], [ %call2, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_set_tiling_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_get_tiling_ioctl(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #10
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -96
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %2 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %3, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %4 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end5
    i32 -512, label %if.end.if.then.i_crit_edge
  ], !prof !81

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rdev.i = getelementptr i8, ptr %call, i32 464
  %5 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdev.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #13
  br label %if.then.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %tiling_flags = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, ptr %data, i32 0, i32 1
  %pitch = getelementptr inbounds %struct.drm_radeon_gem_get_tiling, ptr %data, i32 0, i32 2
  tail call void @radeon_bo_get_tiling_flags(ptr noundef %add.ptr, ptr noundef %tiling_flags, ptr noundef %pitch) #10
  %bdev.i.i.i = getelementptr i8, ptr %call, i32 352
  %9 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %11 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %12, ptr noundef null) #10
  %13 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %15 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %16) #10
  tail call void @ww_mutex_unlock(ptr noundef %16) #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.end5, %do.end.i, %if.end.if.then.i_crit_edge
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %.ret.0.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %.ret.0.i.i, %if.then10.i.i.i.i.i.i ], [ %.ret.0.i.i, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_get_tiling_flags(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_va_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 100, i32 4
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %operation = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %operation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %operation, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_id = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %vm_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %operation3 = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %operation3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %operation3, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8388608, i64 %11)
  %cmp = icmp ult i64 %11, 8388608
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev6, align 4
  %conv = trunc i64 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef 8388608) #13
  %operation8 = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %operation8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %operation8, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %flags = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end18, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %16, i32 noundef 9) #13
  %operation17 = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %operation17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %operation17, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %operation19 = getelementptr inbounds %struct.drm_radeon_gem_va, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %operation19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %operation19, align 4
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.epilog, label %do.end22

do.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %22 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %21) #13
  %24 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %operation19, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end18
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %26) #10
  %cmp26 = icmp eq ptr %call, null
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %operation19, align 4
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %add.ptr = getelementptr i8, ptr %call, i32 -96
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %28 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %29, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %30 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end35
    i32 -512, label %if.end30.if.then.i_crit_edge
  ], !prof !81

if.end30.if.then.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %rdev.i = getelementptr i8, ptr %call, i32 464
  %31 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rdev.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #13
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i, %if.end30.if.then.i_crit_edge
  %35 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %operation19, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %call36 = tail call ptr @radeon_vm_bo_find(ptr noundef %3, ptr noundef %add.ptr) #10
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %operation19, align 4
  tail call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr)
  tail call fastcc void @drm_gem_object_put(ptr noundef nonnull %call)
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %38 = ptrtoint ptr %operation19 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %operation19, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %39, label %if.end40.if.then59_crit_edge [
    i32 1, label %sw.bb42
    i32 2, label %sw.bb54
  ]

if.end40.if.then59_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

sw.bb42:                                          ; preds = %if.end40
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %call36, i32 0, i32 4, i32 1
  %41 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool43.not = icmp eq i32 %42, 0
  br i1 %tobool43.not, label %if.end50, label %if.then44

if.then44:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %operation19, align 4
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start, align 4
  %mul = shl i32 %45, 12
  %conv48 = zext i32 %mul to i64
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv48, ptr %offset, align 8
  tail call fastcc void @radeon_bo_unreserve(ptr noundef %add.ptr)
  br label %if.then.i123

if.end50:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %offset, align 8
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags, align 4
  %call53 = tail call i32 @radeon_vm_bo_set_addr(ptr noundef %1, ptr noundef nonnull %call36, i64 noundef %48, i32 noundef %50) #10
  br label %sw.epilog57

sw.bb54:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 @radeon_vm_bo_set_addr(ptr noundef %1, ptr noundef nonnull %call36, i64 noundef 0, i32 noundef 0) #10
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %sw.bb54, %if.end50
  %r.0 = phi i32 [ %call55, %sw.bb54 ], [ %call53, %if.end50 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool58.not = icmp eq i32 %r.0, 0
  br i1 %tobool58.not, label %sw.epilog57.if.then59_crit_edge, label %sw.epilog57.if.end60_crit_edge

sw.epilog57.if.end60_crit_edge:                   ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

sw.epilog57.if.then59_crit_edge:                  ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %sw.epilog57.if.then59_crit_edge, %if.end40.if.then59_crit_edge
  tail call fastcc void @radeon_gem_va_update_vm(ptr noundef %1, ptr noundef nonnull %call36)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %sw.epilog57.if.end60_crit_edge
  %tobool58.not133 = phi i32 [ 0, %if.then59 ], [ 1, %sw.epilog57.if.end60_crit_edge ]
  %r.0131 = phi i32 [ 0, %if.then59 ], [ %r.0, %sw.epilog57.if.end60_crit_edge ]
  %51 = ptrtoint ptr %operation19 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %tobool58.not133, ptr %operation19, align 4
  br label %if.then.i123

if.then.i123:                                     ; preds = %if.end60, %if.then44
  %r.1 = phi i32 [ 0, %if.then44 ], [ %r.0131, %if.end60 ]
  %call.i.i.i.i.i.i.i.i120 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i121 = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i121)
  %cmp.i.i.i.i.i.i122 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i121, 1
  br i1 %cmp.i.i.i.i.i.i122, label %if.then.i.i.i127, label %if.end5.i.i.i.i.i.i125

if.end5.i.i.i.i.i.i125:                           ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i121)
  %.not.i.i.i.i.i.i124 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i121, 0
  br i1 %.not.i.i.i.i.i.i124, label %if.end5.i.i.i.i.i.i125.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i126, !prof !84

if.end5.i.i.i.i.i.i125.cleanup_crit_edge:         ; preds = %if.end5.i.i.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i126:                         ; preds = %if.end5.i.i.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i127:                                 ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i127, %if.then10.i.i.i.i.i.i126, %if.end5.i.i.i.i.i.i125.cleanup_crit_edge, %if.then38, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.then28, %do.end22, %do.end14, %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.end ], [ -22, %do.end14 ], [ -22, %do.end22 ], [ -2, %if.then28 ], [ -2, %if.then38 ], [ -25, %if.then ], [ %.ret.0.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %.ret.0.i.i, %if.then10.i.i.i.i.i.i ], [ %.ret.0.i.i, %if.then.i.i.i ], [ %r.1, %if.end5.i.i.i.i.i.i125.cleanup_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i.i126 ], [ %r.1, %if.then.i.i.i127 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_bo_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_bo_set_addr(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_gem_va_update_vm(ptr noundef %rdev, ptr noundef %bo_va) unnamed_addr #0 align 64 {
entry:
  %tv = alloca %struct.ttm_validate_buffer, align 8
  %ticket = alloca %struct.ww_acquire_ctx, align 4
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #10
  %0 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %tv, i32 0, i32 2
  %2 = ptrtoint ptr %tv to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tv, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ticket) #10
  %3 = call ptr @memset(ptr %ticket, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  %bo = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 7
  %7 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bo, align 4
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tbo, ptr %0, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %1, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %tv, ptr noundef nonnull %list, ptr noundef nonnull %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = getelementptr inbounds %struct.list_head, ptr %tv, i32 0, i32 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tv, ptr %4, align 4
  %13 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %tv, align 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %11, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %tv, ptr %list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  %vm = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 6
  %16 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vm, align 4
  %call = call ptr @radeon_vm_get_bos(ptr noundef %rdev, ptr noundef %17, ptr noundef nonnull %list) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %list_add.exit.cleanup_crit_edge, label %if.end

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %list_add.exit
  %call3 = call i32 @ttm_eu_reserve_buffers(ptr noundef nonnull %ticket, ptr noundef nonnull %list, i1 noundef zeroext true, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.for.cond_crit_edge, label %if.end.error_free_crit_edge

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_free

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %entry1.0.in = phi ptr [ %entry1.0, %for.body.for.cond_crit_edge ], [ %list, %if.end.for.cond_crit_edge ]
  %18 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, %list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %bo8 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %entry1.0, i32 0, i32 1
  %19 = ptrtoint ptr %bo8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bo8, align 4
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_type, align 4
  %cond = icmp eq i32 %24, 0
  br i1 %cond, label %for.body.error_unreserve_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.error_unreserve_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_unreserve

for.end:                                          ; preds = %for.cond
  %25 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vm, align 4
  call void @mutex_lock_nested(ptr noundef %26, i32 noundef 0) #10
  %27 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vm, align 4
  %call20 = call i32 @radeon_vm_clear_freed(ptr noundef %rdev, ptr noundef %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.error_unlock_crit_edge

for.end.error_unlock_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_unlock

if.end23:                                         ; preds = %for.end
  %start = getelementptr inbounds %struct.radeon_bo_va, ptr %bo_va, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %if.end23.error_unlock_crit_edge, label %if.then25

if.end23.error_unlock_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %error_unlock

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bo, align 4
  %resource28 = getelementptr inbounds %struct.radeon_bo, ptr %32, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %resource28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %resource28, align 4
  %call29 = call i32 @radeon_vm_bo_update(ptr noundef %rdev, ptr noundef %bo_va, ptr noundef %34) #10
  br label %error_unlock

error_unlock:                                     ; preds = %if.then25, %if.end23.error_unlock_crit_edge, %for.end.error_unlock_crit_edge
  %r.0 = phi i32 [ %call20, %for.end.error_unlock_crit_edge ], [ %call29, %if.then25 ], [ 0, %if.end23.error_unlock_crit_edge ]
  %35 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vm, align 4
  call void @mutex_unlock(ptr noundef %36) #10
  br label %error_unreserve

error_unreserve:                                  ; preds = %error_unlock, %for.body.error_unreserve_crit_edge
  %r.1 = phi i32 [ %r.0, %error_unlock ], [ 0, %for.body.error_unreserve_crit_edge ]
  call void @ttm_eu_backoff_reservation(ptr noundef nonnull %ticket, ptr noundef nonnull %list) #10
  br label %error_free

error_free:                                       ; preds = %error_unreserve, %if.end.error_free_crit_edge
  %r.2 = phi i32 [ %call3, %if.end.error_free_crit_edge ], [ %r.1, %error_unreserve ]
  call void @kvfree(ptr noundef nonnull %call) #10
  %37 = zext i32 %r.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %r.2, label %if.then35 [
    i32 0, label %error_free.cleanup_crit_edge
    i32 -512, label %error_free.cleanup_crit_edge61
  ]

error_free.cleanup_crit_edge61:                   ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

error_free.cleanup_crit_edge:                     ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %error_free
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %r.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %error_free.cleanup_crit_edge, %error_free.cleanup_crit_edge61, %list_add.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ticket) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_gem_op_ioctl(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %filp, i32 noundef %1) #10
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -96
  %rdev = getelementptr i8, ptr %call, i32 464
  %2 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev, align 8
  %ttm = getelementptr inbounds %struct.ttm_buffer_object, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ttm, align 8
  %call1 = tail call zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef %3, ptr noundef %5) #10
  br i1 %call1, label %if.end.if.then.i_crit_edge, label %if.end3

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end3:                                          ; preds = %if.end
  %resv32.i.i = getelementptr i8, ptr %call, i32 200
  %6 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %resv32.i.i, align 8
  %call.i.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %7, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i.i, -4
  %.ret.0.i.i = select i1 %cmp.i.i, i32 -512, i32 %call.i.i.i
  %8 = zext i32 %.ret.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %.ret.0.i.i, label %do.end.i [
    i32 0, label %if.end8
    i32 -512, label %if.end3.if.then.i_crit_edge
  ], !prof !81

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

do.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdev, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef %add.ptr) #13
  br label %if.then.i

if.end8:                                          ; preds = %if.end3
  %op = getelementptr inbounds %struct.drm_radeon_gem_op, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %op, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %14, label %if.end8.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %initial_domain = getelementptr i8, ptr %call, i32 -88
  %16 = ptrtoint ptr %initial_domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %initial_domain, align 8
  %conv = zext i32 %17 to i64
  %value = getelementptr inbounds %struct.drm_radeon_gem_op, ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %value, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %value10 = getelementptr inbounds %struct.drm_radeon_gem_op, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %value10 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %value10, align 8
  %21 = trunc i64 %20 to i32
  %conv11 = and i32 %21, 7
  %initial_domain12 = getelementptr i8, ptr %call, i32 -88
  %22 = ptrtoint ptr %initial_domain12 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv11, ptr %initial_domain12, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %if.end8.sw.epilog_crit_edge
  %r.0 = phi i32 [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ -22, %if.end8.sw.epilog_crit_edge ]
  %bdev.i.i.i = getelementptr i8, ptr %call, i32 352
  %23 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %24, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i.i) #10
  %resource.i.i.i = getelementptr i8, ptr %call, i32 372
  %25 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %resource.i.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef nonnull %call, ptr noundef %26, ptr noundef null) #10
  %27 = ptrtoint ptr %bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bdev.i.i.i, align 8
  %lru_lock2.i.i.i = getelementptr inbounds %struct.ttm_device, ptr %28, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i.i) #10
  %29 = ptrtoint ptr %resv32.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %resv32.i.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %30) #10
  tail call void @ww_mutex_unlock(ptr noundef %30) #10
  br label %if.then.i

if.then.i:                                        ; preds = %sw.epilog, %do.end.i, %if.end3.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %r.1 = phi i32 [ -1, %if.end.if.then.i_crit_edge ], [ %.ret.0.i.i, %do.end.i ], [ %r.0, %sw.epilog ], [ %.ret.0.i.i, %if.end3.if.then.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %r.1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %r.1, %if.then10.i.i.i.i.i.i ], [ %r.1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_mode_dumb_create(ptr noundef %file_priv, ptr nocapture noundef readonly %dev, ptr nocapture noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %gobj = alloca ptr, align 4
  %handle = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gobj) #10
  %2 = ptrtoint ptr %gobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %gobj, align 4, !annotation !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #10
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %handle, align 4, !annotation !79
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %6 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bpp, align 8
  %sub = add i32 %7, 7
  %div28 = lshr i32 %sub, 3
  %call = tail call i32 @radeon_align_pitch(ptr noundef %1, i32 noundef %5, i32 noundef %div28, i1 noundef zeroext false) #10
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %8 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %pitch, align 4
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args, align 8
  %mul = mul i32 %10, %call
  %conv = zext i32 %mul to i64
  %size = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 6
  %add3 = add nuw nsw i64 %conv, 4095
  %and = and i64 %add3, 8589930496
  %11 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %and, ptr %size, align 8
  %conv6 = trunc i64 %and to i32
  %call7 = call i32 @radeon_gem_object_create(ptr noundef %1, i32 noundef %conv6, i32 noundef 0, i32 noundef 4, i32 noundef 0, i1 noundef zeroext false, ptr noundef nonnull %gobj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %gobj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gobj, align 4
  %call8 = call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %13, ptr noundef nonnull %handle) #10
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.drm_gem_object_put.exit_crit_edge, label %if.then.i

if.end.drm_gem_object_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then.i:                                        ; preds = %if.end
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #10
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !84

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #10
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  call void @drm_gem_object_free(ptr noundef nonnull %13) #10
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %if.end.drm_gem_object_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %drm_gem_object_put.exit.cleanup_crit_edge

drm_gem_object_put.exit.cleanup_crit_edge:        ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle, align 4
  %handle12 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 4
  %17 = ptrtoint ptr %handle12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %handle12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %drm_gem_object_put.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %drm_gem_object_put.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gobj) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_align_pitch(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_gem_debugfs_init(ptr noundef %rdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %5, ptr noundef %rdev, ptr noundef nonnull @radeon_debugfs_gem_info_fops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_mn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_bo_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vm_bo_rmv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_get_rdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_gem_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdev, align 8
  %call = tail call ptr @radeon_get_rdev(ptr noundef %5) #10
  %mclk_lock = getelementptr inbounds %struct.radeon_device, ptr %call, i32 0, i32 58, i32 1
  tail call void @down_read(ptr noundef %mclk_lock) #10
  %call1 = tail call i32 @ttm_bo_vm_reserve(ptr noundef %3, ptr noundef %vmf) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_mclk_crit_edge

entry.unlock_mclk_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mclk

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @radeon_bo_fault_reserve_notify(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.unlock_resv_crit_edge

if.end.unlock_resv_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_resv

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vmf, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_page_prot, align 4
  %call7 = tail call i32 @ttm_bo_vm_fault_reserved(ptr noundef %vmf, i32 noundef %9, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call7)
  %cmp = icmp eq i32 %call7, 1024
  br i1 %cmp, label %land.lhs.true, label %if.end5.unlock_resv_crit_edge

if.end5.unlock_resv_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_resv

land.lhs.true:                                    ; preds = %if.end5
  %flags = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.unlock_mclk_crit_edge, label %land.lhs.true.unlock_resv_crit_edge

land.lhs.true.unlock_resv_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_resv

land.lhs.true.unlock_mclk_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mclk

unlock_resv:                                      ; preds = %land.lhs.true.unlock_resv_crit_edge, %if.end5.unlock_resv_crit_edge, %if.end.unlock_resv_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.unlock_resv_crit_edge ], [ 1024, %land.lhs.true.unlock_resv_crit_edge ], [ %call7, %if.end5.unlock_resv_crit_edge ]
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %13) #10
  tail call void @ww_mutex_unlock(ptr noundef %13) #10
  br label %unlock_mclk

unlock_mclk:                                      ; preds = %unlock_resv, %land.lhs.true.unlock_mclk_crit_edge, %entry.unlock_mclk_crit_edge
  %ret.1 = phi i32 [ %call1, %entry.unlock_mclk_crit_edge ], [ %ret.0, %unlock_resv ], [ 1024, %land.lhs.true.unlock_mclk_crit_edge ]
  tail call void @up_read(ptr noundef %mclk_lock) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_fault_reserve_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_fault_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gpu_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_get_bos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_eu_reserve_buffers(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_clear_freed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_bo_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_gem_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @radeon_debugfs_gem_info_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @radeon_debugfs_gem_info_show(ptr noundef %m, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %gem = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 57
  tail call void @mutex_lock_nested(ptr noundef %gem, i32 noundef 0) #10
  %objects = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 57, i32 1
  %2 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %2)
  %rbo.041 = load ptr, ptr %objects, align 4
  %cmp.not42 = icmp eq ptr %rbo.041, %objects
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rbo.044 = phi ptr [ %rbo.0, %for.body.for.body_crit_edge ], [ %rbo.041, %entry.for.body_crit_edge ]
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %rbo.044, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %switch.selectcmp = icmp eq i32 %6, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch.selectcmp39 = icmp eq i32 %6, 2
  %switch.select40 = select i1 %switch.selectcmp39, ptr @.str.29, ptr %switch.select
  %size.i = getelementptr inbounds %struct.radeon_bo, ptr %rbo.044, i32 0, i32 4, i32 0, i32 5
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size.i, align 8
  %shr = lshr i32 %8, 10
  %shr8 = lshr i32 %8, 20
  %pid = getelementptr inbounds %struct.radeon_bo, ptr %rbo.044, i32 0, i32 14
  %9 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pid, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %i.043, i32 noundef %shr, i32 noundef %shr8, ptr noundef nonnull %switch.select40, i32 noundef %10) #10
  %inc = add i32 %i.043, 1
  %11 = ptrtoint ptr %rbo.044 to i32
  call void @__asan_load4_noabort(i32 %11)
  %rbo.0 = load ptr, ptr %rbo.044, align 4
  %cmp.not = icmp eq ptr %rbo.0, %objects
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %gem) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 127, i32 4}
!4 = !{ptr @radeon_gem_object_funcs, !5, !"radeon_gem_object_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 276, i32 35}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 315, i32 2}
!8 = !{ptr @__func__.radeon_gem_pread_ioctl, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.radeon_gem_pwrite_ioctl, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 323, i32 2}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 579, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 597, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 702, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @radeon_gem_va_ioctl._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @radeon_gem_va_ioctl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 716, i32 3}
!25 = !{ptr @radeon_gem_va_ioctl._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @radeon_gem_va_ioctl._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 727, i32 3}
!29 = !{ptr @radeon_gem_va_ioctl._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @radeon_gem_va_ioctl._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 893, i32 22}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 242, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @radeon_gem_object_close._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @radeon_gem_object_close._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @radeon_gem_vm_ops, !39, !"radeon_gem_vm_ops", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 76, i32 42}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/radeon/radeon_object.h", i32 71, i32 4}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @radeon_bo_reserve._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @radeon_bo_reserve._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 159, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @radeon_gem_set_domain._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @radeon_gem_set_domain._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 169, i32 4}
!55 = !{ptr @radeon_gem_set_domain._entry.25, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @radeon_gem_set_domain._entry_ptr.27, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 671, i32 3}
!59 = !{ptr @radeon_debugfs_gem_info_fops, !60, !"radeon_debugfs_gem_info_fops", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 885, i32 1}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 866, i32 16}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 869, i32 16}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 873, i32 16}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/radeon/radeon_gem.c", i32 876, i32 17}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{i8 0, i8 2}
!81 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!82 = !{i64 2148771798}
!83 = !{i64 2148686238, i64 2148686270, i64 2148686299, i64 2148686333, i64 2148686364, i64 2148686387}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{i64 2150074639}
!86 = !{i64 2148506058, i64 2148506063, i64 2148506076, i64 2148506120, i64 2148506154, i64 2148506175}
