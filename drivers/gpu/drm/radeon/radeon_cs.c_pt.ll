; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/radeon/radeon_cs.c_pt.bc'
source_filename = "../drivers/gpu/drm/radeon/radeon_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.drm_radeon_cs_chunk = type { i32, i32, i64 }
%struct.radeon_cs_parser = type { ptr, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, i32, ptr, ptr, ptr, ptr, %struct.radeon_ib, %struct.radeon_ib, ptr, i32, i32, i32, i32, i32, %struct.ww_acquire_ctx }
%struct.list_head = type { ptr, ptr }
%struct.radeon_ib = type { ptr, i32, i64, ptr, i32, ptr, ptr, i8, %struct.radeon_sync }
%struct.radeon_sync = type { [4 x ptr], [8 x ptr], ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_radeon_cs = type { i32, i32, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.radeon_cs_chunk = type { i32, ptr, ptr }
%struct.radeon_device = type { ptr, ptr, ptr, ptr, %struct.rw_semaphore, %union.radeon_asic_config, i32, i32, i32, i32, i32, i32, i32, ptr, i8, i16, ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.radeon_clock, %struct.radeon_mc, %struct.radeon_gart, %struct.radeon_mode_info, %struct.radeon_scratch, %struct.radeon_doorbell, %struct.radeon_mman, [8 x %struct.radeon_fence_driver], %struct.wait_queue_head, i64, %struct.mutex, [8 x %struct.radeon_ring], i8, %struct.radeon_sa_manager, %struct.radeon_irq, ptr, %struct.radeon_gem, %struct.radeon_pm, %struct.radeon_uvd, %struct.radeon_vce, [8 x i32], %struct.radeon_wb, %struct.radeon_dummy_page, i8, i8, i8, i8, i8, i8, [8 x %struct.radeon_surface_reg], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.r600_vram_scratch, i32, %struct.r600_ih, %struct.radeon_rlc, %struct.radeon_mec, %struct.delayed_work, %struct.work_struct, %struct.work_struct, i32, %struct.mutex, i8, i8, %struct.r600_audio, %struct.notifier_block, ptr, ptr, [16 x ptr], %struct.radeon_vm_manager, %struct.mutex, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.radeon_atif, %struct.radeon_atcs, %struct.mutex, i32, i32, %struct.dev_pm_domain, i8, i32, i64, i64 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.radeon_asic_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
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
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.mmu_interval_notifier = type { %struct.interval_tree_node, ptr, ptr, %struct.hlist_node, i32 }
%struct.interval_tree_node = type { %struct.rb_node, i32, i32, i32 }
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.radeon_bo_list = type { ptr, %struct.ttm_validate_buffer, i64, i32, i32, i32 }
%struct.radeon_cs_buckets = type { [33 x %struct.list_head] }
%struct.drm_radeon_cs_reloc = type { i32, i32, i32, i32 }
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
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.radeon_vm = type { %struct.mutex, %struct.rb_root_cached, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, [8 x %struct.radeon_vm_id] }
%struct.radeon_vm_id = type { i32, i64, ptr, ptr }
%struct.radeon_bo_va = type { %struct.list_head, i32, ptr, i32, %struct.interval_tree_node, %struct.list_head, ptr, ptr }
%struct.radeon_cs_packet = type { i32, i32, i32, i32, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VM not active on asic!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Ring %d requires VM!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VM not supported on ring %d!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to initialize parser !\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to parse relocation %d!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Can not parse packet at %d after CS end %d !\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown packet type %d at %d !\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Packet (%d:%d:%d) end after CS buffer (%d) !\0A\00", [50 x i8] zeroinitializer }, align 32
@radeon_cs_packet_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\090x%08x <---\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"radeon_cs_packet_parse\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/radeon/radeon_cs.c\00", [61 x i8] zeroinitializer }, align 32
@radeon_cs_packet_parse._entry_ptr = internal global ptr @radeon_cs_packet_parse._entry, section ".printk_index", align 4
@radeon_cs_packet_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\090x%08x\0A\00", [23 x i8] zeroinitializer }, align 32
@radeon_cs_packet_parse._entry_ptr.13 = internal global ptr @radeon_cs_packet_parse._entry.11, section ".printk_index", align 4
@radeon_cs_dump_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.10, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[drm] ib[%d]=0x%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"radeon_cs_dump_packet\00", [42 x i8] zeroinitializer }, align 32
@radeon_cs_dump_packet._entry_ptr = internal global ptr @radeon_cs_dump_packet._entry, section ".printk_index", align 4
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No relocation chunk !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No packet3 for relocation for packet at %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Relocs at %d after relocations chunk end %d !\0A\00", [49 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unknown ring id: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cs IB CONST too big: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get const ib !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cs IB too big: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get ib !\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gem object lookup failed 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"RADEON_GEM_DOMAIN_CPU is not valid for command submission\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Only RADEON_GEM_DOMAIN_GTT is allowed for userptr BOs\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"BO associated with dma-buf cannot be moved to VRAM\0A\00", [44 x i8] zeroinitializer }, align 32
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@__tracepoint_radeon_cs = external dso_local global %struct.tracepoint, align 4
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/radeon/radeon_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_radeon_cs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid command stream !\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync rings: %i\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to schedule IB !\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Tmp BO not in VM!\0A\00", [45 x i8] zeroinitializer }, align 32
@radeon_bo_vm_update_pte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.10, i32 529, ptr @.str.40, ptr @.str.41 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bo %p not in vm %p\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"radeon_bo_vm_update_pte\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@radeon_bo_vm_update_pte._entry_ptr = internal global ptr @radeon_bo_vm_update_pte._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 371, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 381, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 386, i32 5 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 687, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 698, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 744, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 769, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 774, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 784, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 786, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 829, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 851, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 862, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 869, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 230, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 214, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 214, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 622, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 628, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 641, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 650, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 112, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 151, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 165, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 179, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/radeon/radeon_trace.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 30, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 108, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 474, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 481, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 493, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 514, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [38 x i8] c"../drivers/gpu/drm/radeon/radeon_cs.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 529, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @radeon_bo_vm_update_pte._entry, ptr @radeon_bo_vm_update_pte._entry_ptr, ptr @radeon_cs_dump_packet._entry, ptr @radeon_cs_dump_packet._entry_ptr, ptr @radeon_cs_packet_parse._entry, ptr @radeon_cs_packet_parse._entry.11, ptr @radeon_cs_packet_parse._entry_ptr, ptr @radeon_cs_packet_parse._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_cs_packet_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_cs_packet_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_cs_dump_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radeon_bo_vm_update_pte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_cs_parser_init(ptr noundef %p, ptr nocapture noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  %user_chunk = alloca %struct.drm_radeon_cs_chunk, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %validated = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 10
  %0 = ptrtoint ptr %validated to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %validated, ptr %validated, align 4
  %prev.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %validated, ptr %prev.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup198_crit_edge, label %if.end

entry.cleanup198_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.end:                                           ; preds = %entry
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %idx, align 8
  %ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16
  %5 = ptrtoint ptr %ib to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ib, align 8
  %const_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 17
  %6 = ptrtoint ptr %const_ib to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %const_ib, align 8
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %chunk_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 14
  %chunk_const_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 15
  %7 = call ptr @memset(ptr %chunk_ib, i32 0, i32 16)
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 8
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 8) #10
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kvmalloc_array.exit.thread, label %kvmalloc_array.exit, !prof !95

kvmalloc_array.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %chunks_array356 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 5
  %12 = ptrtoint ptr %chunks_array356 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %chunks_array356, align 4
  br label %cleanup198

kvmalloc_array.exit:                              ; preds = %if.end
  %13 = extractvalue { i32, i1 } %10, 0
  %call.i.i346 = tail call noalias ptr @kvmalloc_node(i32 noundef %13, i32 noundef 3264, i32 noundef -1) #13
  %chunks_array = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 5
  %14 = ptrtoint ptr %chunks_array to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i346, ptr %chunks_array, align 4
  %cmp = icmp eq ptr %call.i.i346, null
  br i1 %cmp, label %kvmalloc_array.exit.cleanup198_crit_edge, label %if.end5

kvmalloc_array.exit.cleanup198_crit_edge:         ; preds = %kvmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.end5:                                          ; preds = %kvmalloc_array.exit
  %chunks = getelementptr inbounds %struct.drm_radeon_cs, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %chunks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %chunks, align 8
  %conv = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv to ptr
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 8
  %mul = shl i32 %19, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end5
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup198_crit_edge, label %if.then27.i.i, !prof !96

land.rhs16.i.i.cleanup198_crit_edge:              ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup198

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__check_object_size(ptr noundef nonnull %call.i.i346, i32 noundef %mul, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %mul, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i.i346, i32 noundef %mul) #10
  %21 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !98
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i.i346, ptr noundef %17, i32 noundef %mul) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end11, label %if.then11.i.i, !prof !96

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i346, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup198

if.end11:                                         ; preds = %if.end.i.i
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %25 = ptrtoint ptr %cs_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cs_flags, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data, align 8
  %nchunks = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 3
  %28 = ptrtoint ptr %nchunks to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nchunks, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 12) #10
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !95

kvcalloc.exit.thread:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %chunks15362 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 4
  %31 = ptrtoint ptr %chunks15362 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %chunks15362, align 8
  br label %cleanup198

kvcalloc.exit:                                    ; preds = %if.end11
  %32 = extractvalue { i32, i1 } %29, 0
  %call.i.i.i347 = tail call noalias ptr @kvmalloc_node(i32 noundef %32, i32 noundef 3520, i32 noundef -1) #13
  %chunks15 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 4
  %33 = ptrtoint ptr %chunks15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i.i347, ptr %chunks15, align 8
  %cmp17 = icmp eq ptr %call.i.i.i347, null
  br i1 %cmp17, label %kvcalloc.exit.cleanup198_crit_edge, label %for.cond.preheader

kvcalloc.exit.cleanup198_crit_edge:               ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

for.cond.preheader:                               ; preds = %kvcalloc.exit
  %34 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp22402.not = icmp eq i32 %35, 0
  br i1 %cmp22402.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %36 = getelementptr inbounds %struct.drm_radeon_cs_chunk, ptr %user_chunk, i32 0, i32 1
  %37 = getelementptr inbounds %struct.drm_radeon_cs_chunk, ptr %user_chunk, i32 0, i32 2
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %priority.0406 = phi i32 [ 0, %for.body.lr.ph ], [ %priority.2.ph, %for.inc.for.body_crit_edge ]
  %ring.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %ring.3.ph, %for.inc.for.body_crit_edge ]
  %i.0403 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %user_chunk) #10
  %38 = call ptr @memset(ptr %user_chunk, i32 255, i32 16)
  %39 = ptrtoint ptr %chunks_array to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chunks_array, align 4
  %arrayidx = getelementptr i64, ptr %40, i32 %i.0403
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx, align 8
  %conv25 = trunc i64 %42 to i32
  %43 = inttoptr i32 %conv25 to ptr
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #10
  %call.i.i293 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i293, label %for.body.if.then11.i.i310_crit_edge, label %land.lhs.true.i.i297

for.body.if.then11.i.i310_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i310

land.lhs.true.i.i297:                             ; preds = %for.body
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 16, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i295 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i295)
  %cmp.i6.i296 = icmp eq i32 %asmresult.i.i295, 0
  br i1 %cmp.i6.i296, label %if.end.i.i307, label %land.lhs.true.i.i297.if.then11.i.i310_crit_edge, !prof !96

land.lhs.true.i.i297.if.then11.i.i310_crit_edge:  ; preds = %land.lhs.true.i.i297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i310

if.end.i.i307:                                    ; preds = %land.lhs.true.i.i297
  %call.i.i.i298 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %user_chunk, i32 noundef 16) #10
  %45 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i299 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i.i299 to ptr
  %cpu_domain.i.i.i.i.i300 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i300) #7, !srcloc !98
  %and.i.i.i.i301 = and i32 %47, -13
  %or.i.i.i.i302 = or i32 %and.i.i.i.i301, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i302) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %call1.i.i.i303 = call i32 @arm_copy_from_user(ptr noundef nonnull %user_chunk, ptr noundef %43, i32 noundef 16) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i303)
  %tobool4.not.i.i306 = icmp eq i32 %call1.i.i.i303, 0
  br i1 %tobool4.not.i.i306, label %if.end29, label %if.end.i.i307.if.then11.i.i310_crit_edge, !prof !96

if.end.i.i307.if.then11.i.i310_crit_edge:         ; preds = %if.end.i.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i310

if.then11.i.i310:                                 ; preds = %if.end.i.i307.if.then11.i.i310_crit_edge, %land.lhs.true.i.i297.if.then11.i.i310_crit_edge, %for.body.if.then11.i.i310_crit_edge
  %res.0.i.i305366 = phi i32 [ %call1.i.i.i303, %if.end.i.i307.if.then11.i.i310_crit_edge ], [ 16, %for.body.if.then11.i.i310_crit_edge ], [ 16, %land.lhs.true.i.i297.if.then11.i.i310_crit_edge ]
  %sub.i.i308 = sub i32 16, %res.0.i.i305366
  %add.ptr.i.i309 = getelementptr i8, ptr %user_chunk, i32 %sub.i.i308
  %48 = call ptr @memset(ptr %add.ptr.i.i309, i32 0, i32 %res.0.i.i305366)
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i307
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %36, align 4
  %51 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chunks15, align 8
  %arrayidx31 = getelementptr %struct.radeon_cs_chunk, ptr %52, i32 %i.0403
  %53 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %arrayidx31, align 4
  %54 = ptrtoint ptr %user_chunk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %user_chunk, align 8
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %55, label %if.end29.if.end84_crit_edge [
    i32 1, label %if.end39.thread
    i32 2, label %if.then43
    i32 4, label %if.then58
    i32 3, label %if.then73
  ]

if.end29.if.end84_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.end39.thread:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chunks15, align 8
  %arrayidx37 = getelementptr %struct.radeon_cs_chunk, ptr %58, i32 %i.0403
  %59 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx37, ptr %chunk_relocs, align 8
  br label %if.end84

if.then43:                                        ; preds = %if.end29
  %60 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chunks15, align 8
  %arrayidx45 = getelementptr %struct.radeon_cs_chunk, ptr %61, i32 %i.0403
  %62 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %arrayidx45, ptr %chunk_ib, align 4
  %63 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp50 = icmp eq i32 %64, 0
  br i1 %cmp50, label %if.then43.cleanup_crit_edge, label %if.then43.if.end84_crit_edge

if.then43.if.end84_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then58:                                        ; preds = %if.end29
  %65 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chunks15, align 8
  %arrayidx60 = getelementptr %struct.radeon_cs_chunk, ptr %66, i32 %i.0403
  %67 = ptrtoint ptr %chunk_const_ib to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx60, ptr %chunk_const_ib, align 8
  %68 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp65 = icmp eq i32 %69, 0
  br i1 %cmp65, label %if.then58.cleanup_crit_edge, label %if.then58.if.end84_crit_edge

if.then58.if.end84_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then73:                                        ; preds = %if.end29
  %70 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chunks15, align 8
  %arrayidx75 = getelementptr %struct.radeon_cs_chunk, ptr %71, i32 %i.0403
  %72 = ptrtoint ptr %chunk_flags to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx75, ptr %chunk_flags, align 4
  %73 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp80 = icmp eq i32 %74, 0
  br i1 %cmp80, label %if.then73.cleanup_crit_edge, label %if.then73.if.end84_crit_edge

if.then73.if.end84_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end84:                                         ; preds = %if.then73.if.end84_crit_edge, %if.then58.if.end84_crit_edge, %if.then43.if.end84_crit_edge, %if.end39.thread, %if.end29.if.end84_crit_edge
  %75 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chunks15, align 8
  %arrayidx86 = getelementptr %struct.radeon_cs_chunk, ptr %76, i32 %i.0403
  %77 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx86, align 4
  %79 = ptrtoint ptr %37 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %37, align 8
  %conv88 = trunc i64 %80 to i32
  %81 = inttoptr i32 %conv88 to ptr
  %user_ptr = getelementptr %struct.radeon_cs_chunk, ptr %76, i32 %i.0403, i32 2
  %82 = ptrtoint ptr %user_ptr to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %user_ptr, align 4
  %83 = ptrtoint ptr %user_chunk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %user_chunk, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %84, label %if.end84.if.end105_crit_edge [
    i32 4, label %if.end84.for.inc_crit_edge
    i32 2, label %if.then99
  ]

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end84.if.end105_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

if.then99:                                        ; preds = %if.end84
  %86 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rdev, align 4
  %tobool100.not = icmp eq ptr %87, null
  br i1 %tobool100.not, label %if.then99.for.inc_crit_edge, label %lor.lhs.false

if.then99.for.inc_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.then99
  %flags = getelementptr inbounds %struct.radeon_device, ptr %87, i32 0, i32 7
  %88 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %flags, align 8
  %and = and i32 %89, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool102.not = icmp eq i32 %and, 0
  br i1 %tobool102.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.end105_crit_edge

lor.lhs.false.if.end105_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end105

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end105:                                        ; preds = %lor.lhs.false.if.end105_crit_edge, %if.end84.if.end105_crit_edge
  %90 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 4) #10
  %91 = extractvalue { i32, i1 } %90, 1
  br i1 %91, label %if.end105.kvmalloc_array.exit352_crit_edge, label %if.end.i350, !prof !95

if.end105.kvmalloc_array.exit352_crit_edge:       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %kvmalloc_array.exit352

if.end.i350:                                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #12
  %92 = extractvalue { i32, i1 } %90, 0
  %call.i.i349 = call noalias ptr @kvmalloc_node(i32 noundef %92, i32 noundef 3264, i32 noundef -1) #13
  br label %kvmalloc_array.exit352

kvmalloc_array.exit352:                           ; preds = %if.end.i350, %if.end105.kvmalloc_array.exit352_crit_edge
  %retval.0.i351 = phi ptr [ %call.i.i349, %if.end.i350 ], [ null, %if.end105.kvmalloc_array.exit352_crit_edge ]
  %93 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chunks15, align 8
  %kdata = getelementptr %struct.radeon_cs_chunk, ptr %94, i32 %i.0403, i32 1
  %95 = ptrtoint ptr %kdata to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %retval.0.i351, ptr %kdata, align 4
  %96 = load ptr, ptr %chunks15, align 8
  %kdata112 = getelementptr %struct.radeon_cs_chunk, ptr %96, i32 %i.0403, i32 1
  %97 = ptrtoint ptr %kdata112 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %kdata112, align 4
  %cmp113 = icmp eq ptr %98, null
  br i1 %cmp113, label %kvmalloc_array.exit352.cleanup_crit_edge, label %if.end116

kvmalloc_array.exit352.cleanup_crit_edge:         ; preds = %kvmalloc_array.exit352
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end116:                                        ; preds = %kvmalloc_array.exit352
  %mul109 = shl i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul109)
  %cmp9.i.i319 = icmp slt i32 %mul109, 0
  br i1 %cmp9.i.i319, label %land.rhs16.i.i322, label %if.then.i.i.i325

land.rhs16.i.i322:                                ; preds = %if.end116
  %.b1.i.i321 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i321, label %land.rhs16.i.i322.cleanup_crit_edge, label %if.then27.i.i323, !prof !96

land.rhs16.i.i322.cleanup_crit_edge:              ; preds = %land.rhs16.i.i322
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i323:                                 ; preds = %land.rhs16.i.i322
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i325:                                 ; preds = %if.end116
  call void @__check_object_size(ptr noundef nonnull %98, i32 noundef %mul109, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #10
  %call.i.i326 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i326, label %if.then.i.i.i325.if.end.i.i340_crit_edge, label %land.lhs.true.i.i330

if.then.i.i.i325.if.end.i.i340_crit_edge:         ; preds = %if.then.i.i.i325
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

land.lhs.true.i.i330:                             ; preds = %if.then.i.i.i325
  %99 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %81, i32 %mul109, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i328 = extractvalue { i32, i32 } %99, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i328)
  %cmp.i6.i329 = icmp eq i32 %asmresult.i.i328, 0
  br i1 %cmp.i6.i329, label %if.then.i7.i337, label %land.lhs.true.i.i330.if.end.i.i340_crit_edge, !prof !96

land.lhs.true.i.i330.if.end.i.i340_crit_edge:     ; preds = %land.lhs.true.i.i330
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i340

if.then.i7.i337:                                  ; preds = %land.lhs.true.i.i330
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i331 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %98, i32 noundef %mul109) #10
  %100 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i332 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i.i.i.i.i332 to ptr
  %cpu_domain.i.i.i.i.i333 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 4
  %102 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i333) #7, !srcloc !98
  %and.i.i.i.i334 = and i32 %102, -13
  %or.i.i.i.i335 = or i32 %and.i.i.i.i334, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i335) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %call1.i.i.i336 = call i32 @arm_copy_from_user(ptr noundef nonnull %98, ptr noundef %81, i32 noundef %mul109) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %102) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  br label %if.end.i.i340

if.end.i.i340:                                    ; preds = %if.then.i7.i337, %land.lhs.true.i.i330.if.end.i.i340_crit_edge, %if.then.i.i.i325.if.end.i.i340_crit_edge
  %res.0.i.i338 = phi i32 [ %mul109, %if.then.i.i.i325.if.end.i.i340_crit_edge ], [ %call1.i.i.i336, %if.then.i7.i337 ], [ %mul109, %land.lhs.true.i.i330.if.end.i.i340_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i338)
  %tobool4.not.i.i339 = icmp eq i32 %res.0.i.i338, 0
  br i1 %tobool4.not.i.i339, label %if.end123, label %if.then11.i.i343, !prof !96

if.then11.i.i343:                                 ; preds = %if.end.i.i340
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i341 = sub i32 %mul109, %res.0.i.i338
  %add.ptr.i.i342 = getelementptr i8, ptr %98, i32 %sub.i.i341
  %103 = call ptr @memset(ptr %add.ptr.i.i342, i32 0, i32 %res.0.i.i338)
  br label %cleanup

if.end123:                                        ; preds = %if.end.i.i340
  %104 = ptrtoint ptr %user_chunk to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %user_chunk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp125 = icmp eq i32 %105, 3
  br i1 %cmp125, label %if.then127, label %if.end123.for.inc_crit_edge

if.end123.for.inc_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then127:                                       ; preds = %if.end123
  %106 = ptrtoint ptr %chunks15 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %chunks15, align 8
  %kdata130 = getelementptr %struct.radeon_cs_chunk, ptr %107, i32 %i.0403, i32 1
  %108 = ptrtoint ptr %kdata130 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %kdata130, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %112 = ptrtoint ptr %cs_flags to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %cs_flags, align 4
  %arrayidx134 = getelementptr %struct.radeon_cs_chunk, ptr %107, i32 %i.0403
  %113 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %114)
  %cmp136 = icmp ugt i32 %114, 1
  br i1 %cmp136, label %if.end143, label %if.then127.for.inc_crit_edge

if.then127.for.inc_crit_edge:                     ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end143:                                        ; preds = %if.then127
  %115 = ptrtoint ptr %kdata130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %kdata130, align 4
  %arrayidx142 = getelementptr i32, ptr %116, i32 1
  %117 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp147.not = icmp eq i32 %114, 2
  br i1 %cmp147.not, label %if.end143.for.inc_crit_edge, label %if.then149

if.end143.for.inc_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then149:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %kdata130 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %kdata130, align 4
  %arrayidx153 = getelementptr i32, ptr %120, i32 2
  %121 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx153, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then11.i.i343, %if.then27.i.i323, %land.rhs16.i.i322.cleanup_crit_edge, %kvmalloc_array.exit352.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.then11.i.i310
  %retval.1 = phi i32 [ -14, %if.then11.i.i310 ], [ -14, %if.then11.i.i343 ], [ -14, %if.then27.i.i323 ], [ -14, %land.rhs16.i.i322.cleanup_crit_edge ], [ -12, %kvmalloc_array.exit352.cleanup_crit_edge ], [ -22, %if.then73.cleanup_crit_edge ], [ -22, %if.then58.cleanup_crit_edge ], [ -22, %if.then43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_chunk) #10
  br label %cleanup198

for.inc:                                          ; preds = %if.then149, %if.end143.for.inc_crit_edge, %if.then127.for.inc_crit_edge, %if.end123.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.then99.for.inc_crit_edge, %if.end84.for.inc_crit_edge
  %ring.3.ph = phi i32 [ %ring.0405, %if.end123.for.inc_crit_edge ], [ %118, %if.end143.for.inc_crit_edge ], [ %118, %if.then149 ], [ %ring.0405, %if.then99.for.inc_crit_edge ], [ %ring.0405, %lor.lhs.false.for.inc_crit_edge ], [ %ring.0405, %if.end84.for.inc_crit_edge ], [ %ring.0405, %if.then127.for.inc_crit_edge ]
  %priority.2.ph = phi i32 [ %priority.0406, %if.end123.for.inc_crit_edge ], [ %priority.0406, %if.end143.for.inc_crit_edge ], [ %122, %if.then149 ], [ %priority.0406, %if.then99.for.inc_crit_edge ], [ %priority.0406, %lor.lhs.false.for.inc_crit_edge ], [ %priority.0406, %if.end84.for.inc_crit_edge ], [ %priority.0406, %if.then127.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %user_chunk) #10
  %inc = add nuw i32 %i.0403, 1
  %123 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nchunks, align 4
  %cmp22 = icmp ult i32 %inc, %124
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ring.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ring.3.ph, %for.inc.for.end_crit_edge ]
  %priority.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %priority.2.ph, %for.inc.for.end_crit_edge ]
  %rdev158 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %125 = ptrtoint ptr %rdev158 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rdev158, align 4
  %tobool159.not = icmp eq ptr %126, null
  br i1 %tobool159.not, label %for.end.cleanup198_crit_edge, label %if.then160

for.end.cleanup198_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.then160:                                       ; preds = %for.end
  %127 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cs_flags, align 4
  %and162 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.then160.if.end167_crit_edge, label %land.lhs.true

if.then160.if.end167_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

land.lhs.true:                                    ; preds = %if.then160
  %enabled = getelementptr inbounds %struct.radeon_device, ptr %126, i32 0, i32 100, i32 4
  %129 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %enabled, align 8, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool165.not = icmp eq i8 %130, 0
  br i1 %tobool165.not, label %if.then166, label %land.lhs.true.if.end167_crit_edge

land.lhs.true.if.end167_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.then166:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #10
  br label %cleanup198

if.end167:                                        ; preds = %land.lhs.true.if.end167_crit_edge, %if.then160.if.end167_crit_edge
  %priority1.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 23
  %131 = ptrtoint ptr %priority1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %priority.0.lcssa, ptr %priority1.i, align 4
  %132 = zext i32 %ring.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %ring.0.lcssa, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb12.i
    i32 3, label %sw.bb33.i
    i32 4, label %sw.bb35.i
  ]

sw.default.i:                                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %ring.0.lcssa) #10
  br label %cleanup198

sw.bb.i:                                          ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %ring2.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %133 = ptrtoint ptr %ring2.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %ring2.i, align 8
  br label %if.end171

sw.bb3.i:                                         ; preds = %if.end167
  %family.i = getelementptr inbounds %struct.radeon_device, ptr %126, i32 0, i32 6
  %134 = ptrtoint ptr %family.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %135)
  %cmp.i = icmp ugt i32 %135, 51
  br i1 %cmp.i, label %if.then.i353, label %if.else9.i

if.then.i353:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priority.0.lcssa)
  %cmp5.i = icmp sgt i32 %priority.0.lcssa, 0
  %ring7.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.then.i353
  call void @__sanitizer_cov_trace_pc() #12
  %136 = ptrtoint ptr %ring7.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1, ptr %ring7.i, align 8
  br label %if.end171

if.else.i:                                        ; preds = %if.then.i353
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %ring7.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 2, ptr %ring7.i, align 8
  br label %if.end171

if.else9.i:                                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring10.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %138 = ptrtoint ptr %ring10.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %ring10.i, align 8
  br label %if.end171

sw.bb12.i:                                        ; preds = %if.end167
  %family14.i = getelementptr inbounds %struct.radeon_device, ptr %126, i32 0, i32 6
  %139 = ptrtoint ptr %family14.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %family14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %140)
  %cmp15.i = icmp ugt i32 %140, 49
  br i1 %cmp15.i, label %if.then16.i, label %if.else24.i

if.then16.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %priority.0.lcssa)
  %cmp18.i = icmp sgt i32 %priority.0.lcssa, 0
  %ring20.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  br i1 %cmp18.i, label %if.then19.i, label %if.else21.i

if.then19.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %ring20.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 3, ptr %ring20.i, align 8
  br label %if.end171

if.else21.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %142 = ptrtoint ptr %ring20.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 4, ptr %ring20.i, align 8
  br label %if.end171

if.else24.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %140)
  %cmp27.i = icmp ugt i32 %140, 34
  br i1 %cmp27.i, label %if.then28.i, label %if.else24.i.cleanup198_crit_edge

if.else24.i.cleanup198_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.then28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #12
  %ring29.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %143 = ptrtoint ptr %ring29.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3, ptr %ring29.i, align 8
  br label %if.end171

sw.bb33.i:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %ring34.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %144 = ptrtoint ptr %ring34.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 5, ptr %ring34.i, align 8
  br label %if.end171

sw.bb35.i:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %ring36.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %145 = ptrtoint ptr %ring36.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 6, ptr %ring36.i, align 8
  br label %if.end171

if.end171:                                        ; preds = %sw.bb35.i, %sw.bb33.i, %if.then28.i, %if.else21.i, %if.then19.i, %if.else9.i, %if.else.i, %if.then6.i, %sw.bb.i
  %146 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cs_flags, align 4
  %and173 = and i32 %147, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %cmp174 = icmp eq i32 %and173, 0
  %148 = ptrtoint ptr %rdev158 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rdev158, align 4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %149, i32 0, i32 56
  %150 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %asic, align 8
  %ring179 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %152 = ptrtoint ptr %ring179 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ring179, align 8
  %arrayidx180 = getelementptr %struct.radeon_asic, ptr %151, i32 0, i32 14, i32 %153
  %154 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx180, align 4
  br i1 %cmp174, label %if.then176, label %if.else

if.then176:                                       ; preds = %if.end171
  %cs_parse = getelementptr inbounds %struct.radeon_asic_ring, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %cs_parse to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cs_parse, align 4
  %cmp181 = icmp eq ptr %157, null
  br i1 %cmp181, label %if.then183, label %if.then176.cleanup198_crit_edge

if.then176.cleanup198_crit_edge:                  ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.then183:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %153) #10
  br label %cleanup198

if.else:                                          ; preds = %if.end171
  %ib_parse = getelementptr inbounds %struct.radeon_asic_ring, ptr %155, i32 0, i32 3
  %158 = ptrtoint ptr %ib_parse to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ib_parse, align 4
  %cmp191 = icmp eq ptr %159, null
  br i1 %cmp191, label %if.then193, label %if.else.cleanup198_crit_edge

if.else.cleanup198_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup198

if.then193:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %153) #10
  br label %cleanup198

cleanup198:                                       ; preds = %if.then193, %if.else.cleanup198_crit_edge, %if.then183, %if.then176.cleanup198_crit_edge, %if.else24.i.cleanup198_crit_edge, %sw.default.i, %if.then166, %for.end.cleanup198_crit_edge, %cleanup, %kvcalloc.exit.cleanup198_crit_edge, %kvcalloc.exit.thread, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup198_crit_edge, %kvmalloc_array.exit.cleanup198_crit_edge, %kvmalloc_array.exit.thread, %entry.cleanup198_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ -22, %if.then183 ], [ -22, %if.then193 ], [ -22, %if.then166 ], [ 0, %entry.cleanup198_crit_edge ], [ -12, %kvmalloc_array.exit.cleanup198_crit_edge ], [ -12, %kvcalloc.exit.cleanup198_crit_edge ], [ 0, %if.then176.cleanup198_crit_edge ], [ 0, %if.else.cleanup198_crit_edge ], [ 0, %for.end.cleanup198_crit_edge ], [ -12, %kvmalloc_array.exit.thread ], [ -12, %kvcalloc.exit.thread ], [ -22, %sw.default.i ], [ -22, %if.else24.i.cleanup198_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup198_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_cs_ioctl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data, ptr noundef %filp) local_unnamed_addr #0 align 64 {
entry:
  %parser = alloca %struct.radeon_cs_parser, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @llvm.lifetime.start.p0(i64 336, ptr nonnull %parser) #10
  %exclusive_lock = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 4
  tail call void @down_read(ptr noundef %exclusive_lock) #10
  %accel_working = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %accel_working to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %accel_working, align 2, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_reset = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 69
  %4 = ptrtoint ptr %in_reset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %in_reset, align 1, !range !101
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_read(ptr noundef %exclusive_lock) #10
  %call = tail call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  %spec.store.select = select i1 %tobool5.not, i32 -11, i32 %call
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %6 = call ptr @memset(ptr %parser, i32 0, i32 336)
  %filp9 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 2
  %7 = ptrtoint ptr %filp9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %filp, ptr %filp9, align 8
  %rdev10 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 1
  %8 = ptrtoint ptr %rdev10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %rdev10, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %parser to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parser, align 8
  %family = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %family, align 4
  %family13 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 19
  %14 = ptrtoint ptr %family13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %family13, align 4
  %call14 = call i32 @radeon_cs_parser_init(ptr noundef nonnull %parser, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  call fastcc void @radeon_cs_parser_fini(ptr noundef nonnull %parser, i32 noundef %call14, i1 noundef zeroext false)
  call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call14)
  %cmp.i = icmp eq i32 %call14, -35
  br i1 %cmp.i, label %if.then.i, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 -11, i32 %call.i
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 12
  %15 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chunk_ib.i, align 4
  %cmp.i79 = icmp eq ptr %16, null
  br i1 %cmp.i79, label %if.end19.if.then22_crit_edge, label %if.end.i

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.end.i:                                         ; preds = %if.end19
  %cs_flags.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 21
  %17 = ptrtoint ptr %cs_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cs_flags.i, align 4
  %and.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i80 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i80, label %if.end.i.if.end33.i_crit_edge, label %if.then1.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then1.i:                                       ; preds = %if.end.i
  %19 = ptrtoint ptr %filp9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %filp9, align 8
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_priv.i, align 4
  %23 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %24)
  %cmp3.i = icmp ugt i32 %24, 51
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.then1.i.if.end26.i_crit_edge

if.then1.i.if.end26.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %chunk_const_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 15
  %25 = ptrtoint ptr %chunk_const_ib.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chunk_const_ib.i, align 8
  %cmp4.not.i = icmp eq ptr %26, null
  br i1 %cmp4.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %28)
  %cmp7.i = icmp ugt i32 %28, 65536
  br i1 %cmp7.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %28) #10
  br label %if.then29

if.end10.i:                                       ; preds = %if.then5.i
  %ring.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 22
  %29 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ring.i, align 8
  %const_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17
  %mul.i = shl nuw nsw i32 %28, 2
  %call.i81 = call i32 @radeon_ib_get(ptr noundef %1, i32 noundef %30, ptr noundef %const_ib.i, ptr noundef %22, i32 noundef %mul.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool12.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #10
  br label %if.then29

if.end14.i:                                       ; preds = %if.end10.i
  %is_const_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17, i32 7
  %31 = ptrtoint ptr %is_const_ib.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %is_const_ib.i, align 8
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %26, align 4
  %length_dw18.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %length_dw18.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %length_dw18.i, align 4
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17, i32 3
  %35 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptr.i, align 8
  %user_ptr.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %26, i32 0, i32 2
  %37 = ptrtoint ptr %user_ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %user_ptr.i, align 4
  %39 = load i32, ptr %26, align 4
  %mul21.i = shl i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul21.i)
  %cmp9.i.i.i = icmp slt i32 %mul21.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end14.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.if.then29_crit_edge, label %if.then27.i.i.i, !prof !96

land.rhs16.i.i.i.if.then29_crit_edge:             ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.then29

if.then.i.i.i.i:                                  ; preds = %if.end14.i
  call void @__check_object_size(ptr noundef %36, i32 noundef %mul21.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #10
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %38, i32 %mul21.i, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i.i = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !96

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %36, i32 noundef %mul21.i) #10
  %41 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !98
  %and.i.i.i.i.i = and i32 %43, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %36, ptr noundef %38, i32 noundef %mul21.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %mul21.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %mul21.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end26.i_crit_edge, label %if.then11.i.i.i, !prof !96

if.end.i.i.i.if.end26.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i32 %mul21.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 %sub.i.i.i
  %44 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %if.then29

if.end26.i:                                       ; preds = %if.end.i.i.i.if.end26.i_crit_edge, %land.lhs.true.i.if.end26.i_crit_edge, %if.then1.i.if.end26.i_crit_edge
  %45 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chunk_ib.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %48)
  %cmp29.i = icmp ugt i32 %48, 65536
  br i1 %cmp29.i, label %if.then30.i, label %if.end26.i.if.end33.i_crit_edge

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %48) #10
  br label %if.then29

if.end33.i:                                       ; preds = %if.end26.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge
  %vm.0.i = phi ptr [ null, %if.end.i.if.end33.i_crit_edge ], [ %22, %if.end26.i.if.end33.i_crit_edge ]
  %49 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chunk_ib.i, align 4
  %ring35.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 22
  %51 = ptrtoint ptr %ring35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ring35.i, align 8
  %ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %mul37.i = shl i32 %54, 2
  %call38.i = call i32 @radeon_ib_get(ptr noundef %1, i32 noundef %52, ptr noundef %ib.i, ptr noundef %vm.0.i, i32 noundef %mul37.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26) #10
  br label %if.then29

if.end41.i:                                       ; preds = %if.end33.i
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 4
  %length_dw44.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 1
  %57 = ptrtoint ptr %length_dw44.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %length_dw44.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %kdata.i, align 4
  %tobool45.not.i = icmp eq ptr %59, null
  %ptr53.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 3
  %60 = ptrtoint ptr %ptr53.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ptr53.i, align 8
  br i1 %tobool45.not.i, label %if.else.i, label %if.then46.i

if.then46.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %50, align 4
  %mul51.i = shl i32 %63, 2
  %64 = call ptr @memcpy(ptr %61, ptr %59, i32 %mul51.i)
  br label %if.then22

if.else.i:                                        ; preds = %if.end41.i
  %user_ptr54.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %50, i32 0, i32 2
  %65 = ptrtoint ptr %user_ptr54.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %user_ptr54.i, align 4
  %67 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %50, align 4
  %mul56.i = shl i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul56.i)
  %cmp9.i.i110.i = icmp slt i32 %mul56.i, 0
  br i1 %cmp9.i.i110.i, label %land.rhs16.i.i113.i, label %if.then.i.i.i116.i

land.rhs16.i.i113.i:                              ; preds = %if.else.i
  %.b1.i.i112.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i112.i, label %land.rhs16.i.i113.i.if.then29_crit_edge, label %if.then27.i.i114.i, !prof !96

land.rhs16.i.i113.i.if.then29_crit_edge:          ; preds = %land.rhs16.i.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then27.i.i114.i:                               ; preds = %land.rhs16.i.i113.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %if.then29

if.then.i.i.i116.i:                               ; preds = %if.else.i
  call void @__check_object_size(ptr noundef %61, i32 noundef %mul56.i, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #10
  %call.i.i117.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i117.i, label %if.then.i.i.i116.i.if.end.i.i131.i_crit_edge, label %land.lhs.true.i.i121.i

if.then.i.i.i116.i.if.end.i.i131.i_crit_edge:     ; preds = %if.then.i.i.i116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i131.i

land.lhs.true.i.i121.i:                           ; preds = %if.then.i.i.i116.i
  %69 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %66, i32 %mul56.i, i32 -1226833920) #14, !srcloc !97
  %asmresult.i.i119.i = extractvalue { i32, i32 } %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i119.i)
  %cmp.i6.i120.i = icmp eq i32 %asmresult.i.i119.i, 0
  br i1 %cmp.i6.i120.i, label %if.then.i7.i128.i, label %land.lhs.true.i.i121.i.if.end.i.i131.i_crit_edge, !prof !96

land.lhs.true.i.i121.i.if.end.i.i131.i_crit_edge: ; preds = %land.lhs.true.i.i121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i131.i

if.then.i7.i128.i:                                ; preds = %land.lhs.true.i.i121.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i122.i = call zeroext i1 @__kasan_check_write(ptr noundef %61, i32 noundef %mul56.i) #10
  %70 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i.i.i123.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i.i.i.i123.i to ptr
  %cpu_domain.i.i.i.i.i124.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 4
  %72 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i124.i) #7, !srcloc !98
  %and.i.i.i.i125.i = and i32 %72, -13
  %or.i.i.i.i126.i = or i32 %and.i.i.i.i125.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i126.i) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %call1.i.i.i127.i = call i32 @arm_copy_from_user(ptr noundef %61, ptr noundef %66, i32 noundef %mul56.i) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %72) #10, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  br label %if.end.i.i131.i

if.end.i.i131.i:                                  ; preds = %if.then.i7.i128.i, %land.lhs.true.i.i121.i.if.end.i.i131.i_crit_edge, %if.then.i.i.i116.i.if.end.i.i131.i_crit_edge
  %res.0.i.i129.i = phi i32 [ %mul56.i, %if.then.i.i.i116.i.if.end.i.i131.i_crit_edge ], [ %call1.i.i.i127.i, %if.then.i7.i128.i ], [ %mul56.i, %land.lhs.true.i.i121.i.if.end.i.i131.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i129.i)
  %tobool4.not.i.i130.i = icmp eq i32 %res.0.i.i129.i, 0
  br i1 %tobool4.not.i.i130.i, label %if.end.i.i131.i.if.then22_crit_edge, label %if.then11.i.i134.i, !prof !96

if.end.i.i131.i.if.then22_crit_edge:              ; preds = %if.end.i.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then11.i.i134.i:                               ; preds = %if.end.i.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i132.i = sub i32 %mul56.i, %res.0.i.i129.i
  %add.ptr.i.i133.i = getelementptr i8, ptr %61, i32 %sub.i.i132.i
  %73 = call ptr @memset(ptr %add.ptr.i.i133.i, i32 0, i32 %res.0.i.i129.i)
  br label %if.then29

if.then22:                                        ; preds = %if.end.i.i131.i.if.then22_crit_edge, %if.then46.i, %if.end19.if.then22_crit_edge
  %call23 = call fastcc i32 @radeon_cs_parser_relocs(ptr noundef nonnull %parser)
  %74 = zext i32 %call23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call23, label %if.end27 [
    i32 0, label %if.end32
    i32 -512, label %if.then22.if.then29_crit_edge
  ]

if.then22.if.then29_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call23) #10
  br label %if.then29

if.then29:                                        ; preds = %if.end27, %if.then22.if.then29_crit_edge, %if.then11.i.i134.i, %if.then27.i.i114.i, %land.rhs16.i.i113.i.if.then29_crit_edge, %if.then40.i, %if.then30.i, %if.then11.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.if.then29_crit_edge, %if.then13.i, %if.then8.i
  %r.0110 = phi i32 [ %call23, %if.end27 ], [ -14, %land.rhs16.i.i113.i.if.then29_crit_edge ], [ -14, %if.then27.i.i114.i ], [ -14, %if.then11.i.i134.i ], [ -14, %land.rhs16.i.i.i.if.then29_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %if.then11.i.i.i ], [ -22, %if.then30.i ], [ %call.i81, %if.then13.i ], [ -22, %if.then8.i ], [ %call38.i, %if.then40.i ], [ %call23, %if.then22.if.then29_crit_edge ]
  call fastcc void @radeon_cs_parser_fini(ptr noundef nonnull %parser, i32 noundef %r.0110, i1 noundef zeroext false)
  call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %r.0110)
  %cmp.i82 = icmp eq i32 %r.0110, -35
  br i1 %cmp.i82, label %if.then.i86, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i86:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %call.i83 = call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  %spec.store.select.i85 = select i1 %tobool.not.i84, i32 -11, i32 %call.i83
  br label %cleanup

if.end32:                                         ; preds = %if.then22
  call fastcc void @trace_radeon_cs(ptr noundef nonnull %parser)
  %75 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chunk_ib.i, align 4
  %cmp.i90 = icmp eq ptr %76, null
  br i1 %cmp.i90, label %if.end32.if.end36_crit_edge, label %if.end.i94

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end.i94:                                       ; preds = %if.end32
  %cs_flags.i91 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 21
  %77 = ptrtoint ptr %cs_flags.i91 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cs_flags.i91, align 4
  %and.i92 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i92)
  %tobool.not.i93 = icmp eq i32 %and.i92, 0
  br i1 %tobool.not.i93, label %if.end2.i, label %if.end.i94.if.end36_crit_edge

if.end.i94.if.end36_crit_edge:                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end2.i:                                        ; preds = %if.end.i94
  %asic.i = getelementptr inbounds %struct.radeon_device, ptr %1, i32 0, i32 56
  %79 = ptrtoint ptr %asic.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %asic.i, align 8
  %ring3.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 22
  %81 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ring3.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_asic, ptr %80, i32 0, i32 14, i32 %82
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %cs_parse.i = getelementptr inbounds %struct.radeon_asic_ring, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %cs_parse.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cs_parse.i, align 4
  %call.i95 = call i32 %86(ptr noundef nonnull %parser) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool4.not.i = icmp eq i32 %call.i95, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.end2.i.if.then6.i_crit_edge

if.end2.i.if.then6.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end2.i
  %parser_error.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 20
  %87 = ptrtoint ptr %parser_error.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %parser_error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool5.not.i = icmp eq i32 %88, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %lor.lhs.false.i.if.then6.i_crit_edge

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end2.i.if.then6.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #10
  br label %radeon_cs_ib_chunk.exit

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %validated.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 10
  %sync.i.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end7.i
  %.pn.in.i.i = phi ptr [ %validated.i.i, %if.end7.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %89 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %validated.i.i
  br i1 %cmp.not.i.i, label %if.end14.i96, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %reloc.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %90 = ptrtoint ptr %reloc.0.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reloc.0.i.i, align 8
  %resv2.i.i = getelementptr inbounds %struct.radeon_bo, ptr %91, i32 0, i32 4, i32 0, i32 9
  %92 = ptrtoint ptr %resv2.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %resv2.i.i, align 8
  %94 = ptrtoint ptr %rdev10 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rdev10, align 4
  %num_shared.i.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %.pn.i.i, i32 0, i32 2
  %96 = ptrtoint ptr %num_shared.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_shared.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.i.i = icmp ne i32 %97, 0
  %call.i.i = call i32 @radeon_sync_resv(ptr noundef %95, ptr noundef %sync.i.i, ptr noundef %93, i1 noundef zeroext %tobool.i.i) #10
  %98 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i.i, label %if.then12.i [
    i32 0, label %for.body.i.i.for.cond.i.i_crit_edge
    i32 -512, label %for.body.i.i.out_crit_edge
  ]

for.body.i.i.out_crit_edge:                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

if.then12.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call.i.i) #10
  br label %radeon_cs_ib_chunk.exit

if.end14.i96:                                     ; preds = %for.cond.i.i
  %99 = ptrtoint ptr %ring3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ring3.i, align 8
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %100, label %if.end14.i96.if.end25.i_crit_edge [
    i32 5, label %if.then17.i
    i32 6, label %if.end14.i96.if.then23.i_crit_edge
    i32 7, label %if.end14.i96.if.then23.i_crit_edge126
  ]

if.end14.i96.if.then23.i_crit_edge126:            ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.end14.i96.if.then23.i_crit_edge:               ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then23.i

if.end14.i96.if.end25.i_crit_edge:                ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then17.i:                                      ; preds = %if.end14.i96
  call void @__sanitizer_cov_trace_pc() #12
  call void @radeon_uvd_note_usage(ptr noundef %1) #10
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end14.i96.if.then23.i_crit_edge, %if.end14.i96.if.then23.i_crit_edge126
  call void @radeon_vce_note_usage(ptr noundef %1) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.then17.i, %if.end14.i96.if.end25.i_crit_edge
  %ib.i97 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16
  %call26.i = call i32 @radeon_ib_schedule(ptr noundef %1, ptr noundef %ib.i97, ptr noundef null, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end36_crit_edge, label %if.then28.i

if.end25.i.if.end36_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #10
  br label %out

radeon_cs_ib_chunk.exit:                          ; preds = %if.then12.i, %if.then6.i
  %retval.0.i = phi i32 [ %call.i95, %if.then6.i ], [ %call.i.i, %if.then12.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool34.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool34.not, label %radeon_cs_ib_chunk.exit.if.end36_crit_edge, label %radeon_cs_ib_chunk.exit.out_crit_edge

radeon_cs_ib_chunk.exit.out_crit_edge:            ; preds = %radeon_cs_ib_chunk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

radeon_cs_ib_chunk.exit.if.end36_crit_edge:       ; preds = %radeon_cs_ib_chunk.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %radeon_cs_ib_chunk.exit.if.end36_crit_edge, %if.end25.i.if.end36_crit_edge, %if.end.i94.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %call37 = call fastcc i32 @radeon_cs_ib_vm_chunk(ptr noundef %1, ptr noundef nonnull %parser)
  br label %out

out:                                              ; preds = %if.end36, %radeon_cs_ib_chunk.exit.out_crit_edge, %if.then28.i, %for.body.i.i.out_crit_edge
  %r.1 = phi i32 [ %retval.0.i, %radeon_cs_ib_chunk.exit.out_crit_edge ], [ %call37, %if.end36 ], [ %call26.i, %if.then28.i ], [ %call.i.i, %for.body.i.i.out_crit_edge ]
  call fastcc void @radeon_cs_parser_fini(ptr noundef nonnull %parser, i32 noundef %r.1, i1 noundef zeroext true)
  call void @up_read(ptr noundef %exclusive_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %r.1)
  %cmp.i98 = icmp eq i32 %r.1, -35
  br i1 %cmp.i98, label %if.then.i102, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i102:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %call.i99 = call i32 @radeon_gpu_reset(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  %spec.store.select.i101 = select i1 %tobool.not.i100, i32 -11, i32 %call.i99
  br label %cleanup

cleanup:                                          ; preds = %if.then.i102, %out.cleanup_crit_edge, %if.then.i86, %if.then29.cleanup_crit_edge, %if.then.i, %if.then16.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ %spec.store.select, %if.then3 ], [ -16, %if.then ], [ %spec.store.select.i, %if.then.i ], [ %call14, %if.then16.cleanup_crit_edge ], [ %spec.store.select.i85, %if.then.i86 ], [ %r.0110, %if.then29.cleanup_crit_edge ], [ %spec.store.select.i101, %if.then.i102 ], [ %r.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 336, ptr nonnull %parser) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_gpu_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radeon_cs_parser_fini(ptr noundef %parser, i32 noundef %error, i1 noundef zeroext %backoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error)
  %tobool.not = icmp eq i32 %error, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %validated = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 10
  tail call void @list_sort(ptr noundef null, ptr noundef %validated, ptr noundef nonnull @cmp_size_smaller_first) #10
  %ticket = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 24
  %fence = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 5
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 8
  tail call void @ttm_eu_fence_buffer_objects(ptr noundef %ticket, ptr noundef %validated, ptr noundef %1) #10
  br label %if.end6

if.else:                                          ; preds = %entry
  br i1 %backoff, label %if.then3, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ticket4 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 24
  %validated5 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 10
  tail call void @ttm_eu_backoff_reservation(ptr noundef %ticket4, ptr noundef %validated5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.else.if.end6_crit_edge, %if.then
  %relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 8
  %2 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %relocs, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.end6.if.end14_crit_edge, label %for.cond.preheader

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.cond.preheader:                               ; preds = %if.end6
  %nrelocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 7
  %4 = ptrtoint ptr %nrelocs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nrelocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp851.not = icmp eq i32 %5, 0
  br i1 %cmp851.not, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %relocs, align 8
  %arrayidx = getelementptr %struct.radeon_bo_list, ptr %7, i32 %i.052
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %cmp10 = icmp eq ptr %9, null
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %tbo = getelementptr inbounds %struct.radeon_bo, ptr %9, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %tbo, null
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %if.then.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end12
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tbo, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @llvm.prefetch.p0(ptr nonnull %tbo, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %tbo, ptr nonnull %tbo, i32 1, ptr nonnull elementtype(i32) %tbo) #10, !srcloc !103
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %tbo, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @drm_gem_object_free(ptr noundef nonnull %tbo) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.052, 1
  %11 = ptrtoint ptr %nrelocs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nrelocs, align 4
  %cmp8 = icmp ult i32 %inc, %12
  br i1 %cmp8, label %cleanup.for.body_crit_edge, label %cleanup.if.end14_crit_edge

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %track = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 18
  %13 = ptrtoint ptr %track to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %track, align 8
  tail call void @kfree(ptr noundef %14) #10
  %15 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %relocs, align 8
  tail call void @kvfree(ptr noundef %16) #10
  %vm_bos = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 9
  %17 = ptrtoint ptr %vm_bos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vm_bos, align 4
  tail call void @kvfree(ptr noundef %18) #10
  %nchunks = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 3
  %19 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nchunks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1753.not = icmp eq i32 %20, 0
  br i1 %cmp1753.not, label %if.end14.for.end22_crit_edge, label %for.body18.lr.ph

if.end14.for.end22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body18.lr.ph:                                 ; preds = %if.end14
  %chunks = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 4
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %i.154 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc21, %for.body18.for.body18_crit_edge ]
  %21 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chunks, align 8
  %kdata = getelementptr %struct.radeon_cs_chunk, ptr %22, i32 %i.154, i32 1
  %23 = ptrtoint ptr %kdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kdata, align 4
  tail call void @kvfree(ptr noundef %24) #10
  %inc21 = add nuw i32 %i.154, 1
  %25 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nchunks, align 4
  %cmp17 = icmp ult i32 %inc21, %26
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end22_crit_edge

for.body18.for.end22_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end22

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

for.end22:                                        ; preds = %for.body18.for.end22_crit_edge, %if.end14.for.end22_crit_edge
  %chunks23 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 4
  %27 = ptrtoint ptr %chunks23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunks23, align 8
  tail call void @kvfree(ptr noundef %28) #10
  %chunks_array = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 5
  %29 = ptrtoint ptr %chunks_array to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunks_array, align 4
  tail call void @kvfree(ptr noundef %30) #10
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 1
  %31 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rdev, align 4
  %ib24 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16
  tail call void @radeon_ib_free(ptr noundef %32, ptr noundef %ib24) #10
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 4
  %const_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17
  tail call void @radeon_ib_free(ptr noundef %34, ptr noundef %const_ib) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @radeon_cs_parser_relocs(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %buckets = alloca %struct.radeon_cs_buckets, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %buckets) #10
  %0 = call ptr @memset(ptr %buckets, i32 255, i32 264)
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %1 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chunk_relocs, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup137_crit_edge, label %if.end

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup137

if.end:                                           ; preds = %entry
  %dma_reloc_idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %dma_reloc_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dma_reloc_idx, align 8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %div223 = lshr i32 %5, 2
  %nrelocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 7
  %6 = ptrtoint ptr %nrelocs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div223, ptr %nrelocs, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div223, i32 48) #10
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !95

kvcalloc.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %relocs246 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %9 = ptrtoint ptr %relocs246 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %relocs246, align 8
  br label %cleanup137

kvcalloc.exit:                                    ; preds = %if.end
  %10 = extractvalue { i32, i1 } %7, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %10, i32 noundef 3520, i32 noundef -1) #13
  %relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %11 = ptrtoint ptr %relocs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %relocs, align 8
  %cmp4 = icmp eq ptr %call.i.i.i, null
  br i1 %cmp4, label %kvcalloc.exit.cleanup137_crit_edge, label %kvcalloc.exit.for.body.i_crit_edge

kvcalloc.exit.for.body.i_crit_edge:               ; preds = %kvcalloc.exit
  br label %for.body.i

kvcalloc.exit.cleanup137_crit_edge:               ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup137

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %kvcalloc.exit.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %kvcalloc.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %i.03.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %i.03.i, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %for.cond.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i
  %14 = ptrtoint ptr %nrelocs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nrelocs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8261.not = icmp eq i32 %15, 0
  br i1 %cmp8261.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %kdata = getelementptr inbounds %struct.radeon_cs_chunk, ptr %2, i32 0, i32 1
  %filp = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 2
  %ring = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %rdev = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %need_mmap_lock.0.off0267 = phi i1 [ false, %for.body.lr.ph ], [ %need_mmap_lock.2.off0, %for.inc.for.body_crit_edge ]
  %i.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %kdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kdata, align 4
  %mul = shl i32 %i.0262, 2
  %arrayidx = getelementptr i32, ptr %17, i32 %mul
  %18 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filp, align 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %call10 = call ptr @drm_gem_object_lookup(ptr noundef %19, i32 noundef %21) #10
  %cmp11 = icmp eq ptr %call10, null
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %23) #10
  br label %cleanup137

if.end14:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %call10, i32 -96
  %24 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %relocs, align 8
  %arrayidx16 = getelementptr %struct.radeon_bo_list, ptr %25, i32 %i.0262
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %arrayidx16, align 8
  %flags = getelementptr inbounds %struct.drm_radeon_cs_reloc, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = shl i32 %28, 1
  %mul17 = and i32 %and, 30
  %write_domain = getelementptr inbounds %struct.drm_radeon_cs_reloc, ptr %arrayidx, i32 0, i32 2
  %29 = ptrtoint ptr %write_domain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool = icmp ne i32 %30, 0
  %lnot.ext = zext i1 %tobool to i32
  %add = or i32 %mul17, %lnot.ext
  %31 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ring, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cmp19 = icmp eq i32 %32, 5
  br i1 %cmp19, label %land.lhs.true, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0262)
  %cmp20 = icmp eq i32 %i.0262, 0
  br i1 %cmp20, label %land.lhs.true.if.then32_crit_edge, label %lor.lhs.false

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false:                                    ; preds = %land.lhs.true
  %33 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rdev, align 4
  %pdev = getelementptr inbounds %struct.radeon_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 8
  %call21 = call zeroext i8 @pci_find_capability(ptr noundef %36, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call21)
  %tobool22.not = icmp eq i8 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false.if.then32_crit_edge

lor.lhs.false.if.then32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rdev, align 4
  %family = getelementptr inbounds %struct.radeon_device, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %family, align 4
  %.off = add i32 %40, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %lor.lhs.false23.if.then32_crit_edge, label %lor.lhs.false23.if.else_crit_edge

lor.lhs.false23.if.else_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

lor.lhs.false23.if.then32_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false23.if.then32_crit_edge, %lor.lhs.false.if.then32_crit_edge, %land.lhs.true.if.then32_crit_edge
  %41 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %relocs, align 8
  %preferred_domains = getelementptr %struct.radeon_bo_list, ptr %42, i32 %i.0262, i32 3
  %43 = ptrtoint ptr %preferred_domains to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %preferred_domains, align 8
  br label %if.end54

if.else:                                          ; preds = %lor.lhs.false23.if.else_crit_edge, %if.end14.if.else_crit_edge
  %44 = ptrtoint ptr %write_domain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %write_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not = icmp eq i32 %45, 0
  br i1 %tobool38.not, label %cond.false, label %if.else.cond.end_crit_edge

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %read_domains = getelementptr inbounds %struct.drm_radeon_cs_reloc, ptr %arrayidx, i32 0, i32 1
  %46 = ptrtoint ptr %read_domains to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %read_domains, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %47, %cond.false ], [ %45, %if.else.cond.end_crit_edge ]
  %and40 = and i32 %cond, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %relocs, align 8
  %preferred_domains46 = getelementptr %struct.radeon_bo_list, ptr %49, i32 %i.0262, i32 3
  %50 = ptrtoint ptr %preferred_domains46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %cond, ptr %preferred_domains46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond)
  %cmp47 = icmp eq i32 %cond, 4
  %spec.select = select i1 %cmp47, i32 6, i32 %cond
  br label %if.end54

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28) #10
  br label %cleanup137

if.end54:                                         ; preds = %cleanup.thread, %if.then32
  %spec.select.sink = phi i32 [ %spec.select, %cleanup.thread ], [ 4, %if.then32 ]
  %priority.0 = phi i32 [ %add, %cleanup.thread ], [ 32, %if.then32 ]
  %51 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %relocs, align 8
  %allowed_domains53 = getelementptr %struct.radeon_bo_list, ptr %52, i32 %i.0262, i32 4
  %53 = ptrtoint ptr %allowed_domains53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.select.sink, ptr %allowed_domains53, align 4
  %54 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rdev, align 4
  %56 = load ptr, ptr %relocs, align 8
  %arrayidx57 = getelementptr %struct.radeon_bo_list, ptr %56, i32 %i.0262
  %57 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx57, align 8
  %ttm = getelementptr inbounds %struct.radeon_bo, ptr %58, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %ttm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ttm, align 8
  %call59 = call zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef %55, ptr noundef %60) #10
  br i1 %call59, label %if.then60, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then60:                                        ; preds = %if.end54
  %61 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %relocs, align 8
  %preferred_domains64 = getelementptr %struct.radeon_bo_list, ptr %62, i32 %i.0262, i32 3
  %63 = ptrtoint ptr %preferred_domains64 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %preferred_domains64, align 8
  %and65 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %cleanup75.thread, label %cleanup75

cleanup75.thread:                                 ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #10
  br label %cleanup137

cleanup75:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %preferred_domains64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %preferred_domains64, align 8
  %66 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %relocs, align 8
  %allowed_domains74 = getelementptr %struct.radeon_bo_list, ptr %67, i32 %i.0262, i32 4
  %68 = ptrtoint ptr %allowed_domains74 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %allowed_domains74, align 4
  br label %if.end78

if.end78:                                         ; preds = %cleanup75, %if.end54.if.end78_crit_edge
  %need_mmap_lock.2.off0 = phi i1 [ true, %cleanup75 ], [ %need_mmap_lock.0.off0267, %if.end54.if.end78_crit_edge ]
  %69 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %relocs, align 8
  %arrayidx80 = getelementptr %struct.radeon_bo_list, ptr %70, i32 %i.0262
  %71 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx80, align 8
  %prime_shared_count = getelementptr inbounds %struct.radeon_bo, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %prime_shared_count to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %prime_shared_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool82.not = icmp eq i32 %74, 0
  br i1 %tobool82.not, label %if.end78.if.end94_crit_edge, label %if.then83

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then83:                                        ; preds = %if.end78
  %allowed_domains86 = getelementptr %struct.radeon_bo_list, ptr %70, i32 %i.0262, i32 4
  %75 = ptrtoint ptr %allowed_domains86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %allowed_domains86, align 4
  %and87 = and i32 %76, -5
  store i32 %and87, ptr %allowed_domains86, align 4
  %77 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %relocs, align 8
  %allowed_domains90 = getelementptr %struct.radeon_bo_list, ptr %78, i32 %i.0262, i32 4
  %79 = ptrtoint ptr %allowed_domains90 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %allowed_domains90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool91.not = icmp eq i32 %80, 0
  br i1 %tobool91.not, label %if.then92, label %if.then83.if.end94_crit_edge

if.then83.if.end94_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then92:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30) #10
  br label %cleanup137

if.end94:                                         ; preds = %if.then83.if.end94_crit_edge, %if.end78.if.end94_crit_edge
  %81 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %relocs, align 8
  %arrayidx96 = getelementptr %struct.radeon_bo_list, ptr %82, i32 %i.0262
  %83 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx96, align 8
  %tbo98 = getelementptr inbounds %struct.radeon_bo, ptr %84, i32 0, i32 4
  %bo = getelementptr %struct.radeon_bo_list, ptr %82, i32 %i.0262, i32 1, i32 1
  %85 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %tbo98, ptr %bo, align 4
  %86 = ptrtoint ptr %write_domain to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %write_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool102.not = icmp eq i32 %87, 0
  %lnot.ext104 = zext i1 %tobool102.not to i32
  %88 = ptrtoint ptr %relocs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %relocs, align 8
  %num_shared = getelementptr %struct.radeon_bo_list, ptr %89, i32 %i.0262, i32 1, i32 2
  %90 = ptrtoint ptr %num_shared to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %lnot.ext104, ptr %num_shared, align 4
  %91 = load ptr, ptr %relocs, align 8
  %tv110 = getelementptr %struct.radeon_bo_list, ptr %91, i32 %i.0262, i32 1
  %92 = call i32 @llvm.umin.i32(i32 %priority.0, i32 32) #10
  %arrayidx.i232 = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %92
  %prev.i.i233 = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %92, i32 1
  %93 = ptrtoint ptr %prev.i.i233 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i233, align 4
  %call.i.i.i234 = call zeroext i1 @__list_add_valid(ptr noundef %tv110, ptr noundef %94, ptr noundef %arrayidx.i232) #10
  br i1 %call.i.i.i234, label %if.end.i.i.i, label %if.end94.for.inc_crit_edge

if.end94.for.inc_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %prev.i.i233 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %tv110, ptr %prev.i.i233, align 4
  %96 = ptrtoint ptr %tv110 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx.i232, ptr %tv110, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %tv110, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %tv110, ptr %94, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.end94.for.inc_crit_edge
  %inc = add nuw i32 %i.0262, 1
  %99 = ptrtoint ptr %nrelocs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nrelocs, align 4
  %cmp8 = icmp ult i32 %inc, %100
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %need_mmap_lock.0.off0.lcssa = phi i1 [ false, %for.cond.preheader.for.end_crit_edge ], [ %need_mmap_lock.2.off0, %for.inc.for.end_crit_edge ]
  %validated = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 10
  br label %for.body.i237

for.body.i237:                                    ; preds = %list_splice.exit.i.for.body.i237_crit_edge, %for.end
  %i.03.i235 = phi i32 [ 0, %for.end ], [ %inc.i239, %list_splice.exit.i.for.body.i237_crit_edge ]
  %arrayidx.i236 = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %i.03.i235
  %101 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %arrayidx.i236, align 4
  %cmp.i.not.i.i = icmp eq ptr %102, %arrayidx.i236
  br i1 %cmp.i.not.i.i, label %for.body.i237.list_splice.exit.i_crit_edge, label %if.then.i.i

for.body.i237.list_splice.exit.i_crit_edge:       ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice.exit.i

if.then.i.i:                                      ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %validated to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %validated, align 4
  %prev2.i.i.i = getelementptr [33 x %struct.list_head], ptr %buckets, i32 0, i32 %i.03.i235, i32 1
  %105 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i238 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i238 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %validated, ptr %prev3.i.i.i238, align 4
  store ptr %102, ptr %validated, align 4
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %104, ptr %106, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  %109 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev6.i.i.i, align 4
  br label %list_splice.exit.i

list_splice.exit.i:                               ; preds = %if.then.i.i, %for.body.i237.list_splice.exit.i_crit_edge
  %inc.i239 = add nuw nsw i32 %i.03.i235, 1
  %exitcond.not.i240 = icmp eq i32 %inc.i239, 33
  br i1 %exitcond.not.i240, label %radeon_cs_buckets_get_list.exit, label %list_splice.exit.i.for.body.i237_crit_edge

list_splice.exit.i.for.body.i237_crit_edge:       ; preds = %list_splice.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i237

radeon_cs_buckets_get_list.exit:                  ; preds = %list_splice.exit.i
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 21
  %110 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cs_flags, align 4
  %and116 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %radeon_cs_buckets_get_list.exit.if.end122_crit_edge, label %if.then118

radeon_cs_buckets_get_list.exit.if.end122_crit_edge: ; preds = %radeon_cs_buckets_get_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then118:                                       ; preds = %radeon_cs_buckets_get_list.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rdev119 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %112 = ptrtoint ptr %rdev119 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rdev119, align 4
  %vm = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 6
  %114 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %vm, align 4
  %call121 = call ptr @radeon_vm_get_bos(ptr noundef %113, ptr noundef %115, ptr noundef %validated) #10
  %vm_bos = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 9
  %116 = ptrtoint ptr %vm_bos to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call121, ptr %vm_bos, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %radeon_cs_buckets_get_list.exit.if.end122_crit_edge
  br i1 %need_mmap_lock.0.off0.lcssa, label %if.then124, label %if.end122.if.end126_crit_edge

if.end122.if.end126_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end126

if.then124:                                       ; preds = %if.end122
  %117 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i = and i32 %117, -16384
  %118 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %task, align 8
  %mm = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 53
  %121 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mm, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@radeon_cs_parser_relocs, %if.then.i.i241)) #10
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i241], !srcloc !105

if.then.i.i241:                                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %122, i1 noundef zeroext false) #10
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i241, %if.then124
  %mmap_lock.i = getelementptr inbounds %struct.anon.10, ptr %122, i32 0, i32 15
  call void @down_read(ptr noundef %mmap_lock.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@radeon_cs_parser_relocs, %if.then.i3.i)) #10
          to label %if.end126 [label %if.then.i3.i], !srcloc !105

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %122, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %if.end126

if.end126:                                        ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i, %if.end122.if.end126_crit_edge
  %rdev127 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %123 = ptrtoint ptr %rdev127 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %rdev127, align 4
  %ticket = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 24
  %ring129 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 22
  %125 = ptrtoint ptr %ring129 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ring129, align 8
  %call130 = call i32 @radeon_bo_list_validate(ptr noundef %124, ptr noundef %ticket, ptr noundef %validated, i32 noundef %126) #10
  br i1 %need_mmap_lock.0.off0.lcssa, label %if.then132, label %if.end126.cleanup137_crit_edge

if.end126.cleanup137_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup137

if.then132:                                       ; preds = %if.end126
  %127 = call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i242 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i242 to ptr
  %task134 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %task134 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %task134, align 8
  %mm135 = getelementptr inbounds %struct.task_struct, ptr %130, i32 0, i32 53
  %131 = ptrtoint ptr %mm135 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mm135, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@radeon_cs_parser_relocs, %if.then.i.i243)) #10
          to label %mmap_read_unlock.exit [label %if.then.i.i243], !srcloc !105

if.then.i.i243:                                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #12
  call void @__mmap_lock_do_trace_released(ptr noundef %132, i1 noundef zeroext false) #10
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i243, %if.then132
  %mmap_lock.i244 = getelementptr inbounds %struct.anon.10, ptr %132, i32 0, i32 15
  call void @up_read(ptr noundef %mmap_lock.i244) #10
  br label %cleanup137

cleanup137:                                       ; preds = %mmap_read_unlock.exit, %if.end126.cleanup137_crit_edge, %if.then92, %cleanup75.thread, %cleanup, %if.then12, %kvcalloc.exit.cleanup137_crit_edge, %kvcalloc.exit.thread, %entry.cleanup137_crit_edge
  %retval.6 = phi i32 [ 0, %entry.cleanup137_crit_edge ], [ -12, %kvcalloc.exit.cleanup137_crit_edge ], [ %call130, %mmap_read_unlock.exit ], [ %call130, %if.end126.cleanup137_crit_edge ], [ -12, %kvcalloc.exit.thread ], [ -22, %cleanup75.thread ], [ -22, %cleanup ], [ -22, %if.then92 ], [ -2, %if.then12 ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %buckets) #10
  ret i32 %retval.6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_radeon_cs(ptr noundef %p) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_cs, i32 0, i32 1), ptr blockaddress(@trace_radeon_cs, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !105

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !96

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !106
  %call42 = tail call i32 @__traceiter_radeon_cs(ptr noundef null, ptr noundef %p) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !107
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !96

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !85) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_cs, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_radeon_cs, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_radeon_cs.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_radeon_cs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.31, i32 noundef 48, ptr noundef nonnull @.str.32) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %31 = tail call i32 @llvm.read_register.i32(metadata !85) #10
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
define internal fastcc i32 @radeon_cs_ib_vm_chunk(ptr noundef %rdev, ptr noundef %parser) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %filp = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 2
  %0 = ptrtoint ptr %filp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %filp, align 8
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 12
  %4 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk_ib, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cs_flags = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 21
  %6 = ptrtoint ptr %cs_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %const_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17
  %length_dw = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %length_dw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length_dw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end4.if.end11_crit_edge, label %if.then5

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end4
  %asic = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %10 = ptrtoint ptr %asic to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asic, align 8
  %ring6 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 22
  %12 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring6, align 8
  %arrayidx = getelementptr %struct.radeon_asic, ptr %11, i32 0, i32 14, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %ib_parse = getelementptr inbounds %struct.radeon_asic_ring, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ib_parse to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ib_parse, align 4
  %call = tail call i32 %17(ptr noundef %rdev, ptr noundef %const_ib) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %asic12 = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 56
  %18 = ptrtoint ptr %asic12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %asic12, align 8
  %ring14 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 22
  %20 = ptrtoint ptr %ring14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring14, align 8
  %arrayidx15 = getelementptr %struct.radeon_asic, ptr %19, i32 0, i32 14, i32 %21
  %22 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx15, align 4
  %ib_parse16 = getelementptr inbounds %struct.radeon_asic_ring, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ib_parse16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ib_parse16, align 4
  %ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16
  %call17 = tail call i32 %25(ptr noundef %rdev, ptr noundef %ib) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %26 = ptrtoint ptr %ring14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ring14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %cmp22 = icmp eq i32 %27, 5
  br i1 %cmp22, label %if.then23, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @radeon_uvd_note_usage(ptr noundef %rdev) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %rdev1.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 1
  %28 = ptrtoint ptr %rdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rdev1.i, align 4
  %call.i = tail call i32 @radeon_vm_update_page_directory(ptr noundef %29, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.end24
  %call2.i = tail call i32 @radeon_vm_clear_freed(ptr noundef %29, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %ib_bo_va.i = getelementptr inbounds %struct.radeon_vm, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %ib_bo_va.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ib_bo_va.i, align 4
  %cmp.i = icmp eq ptr %31, null
  br i1 %cmp.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #10
  br label %out

if.end7.i:                                        ; preds = %if.end5.i
  %bo.i = getelementptr inbounds %struct.radeon_device, ptr %29, i32 0, i32 54, i32 1
  %32 = ptrtoint ptr %bo.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bo.i, align 4
  %resource.i = getelementptr inbounds %struct.radeon_bo, ptr %33, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resource.i, align 4
  %call9.i = tail call i32 @radeon_vm_bo_update(ptr noundef %29, ptr noundef nonnull %31, ptr noundef %35) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %for.cond.preheader.i, label %if.end7.i.out_crit_edge

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.preheader.i:                             ; preds = %if.end7.i
  %nrelocs.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 7
  %36 = ptrtoint ptr %nrelocs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nrelocs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp1361.not.i = icmp eq i32 %37, 0
  br i1 %cmp1361.not.i, label %for.cond.preheader.i.radeon_bo_vm_update_pte.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.radeon_bo_vm_update_pte.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_bo_vm_update_pte.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %relocs.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 8
  %sync.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %38 = ptrtoint ptr %relocs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %relocs.i, align 8
  %arrayidx.i = getelementptr %struct.radeon_bo_list, ptr %39, i32 %i.062.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 8
  %call15.i = tail call ptr @radeon_vm_bo_find(ptr noundef %3, ptr noundef %41) #10
  %cmp16.i = icmp eq ptr %call15.i, null
  br i1 %cmp16.i, label %do.end.i, label %if.end18.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.38, ptr noundef %41, ptr noundef %3) #15
  br label %out

if.end18.i:                                       ; preds = %for.body.i
  %resource20.i = getelementptr inbounds %struct.radeon_bo, ptr %41, i32 0, i32 4, i32 6
  %44 = ptrtoint ptr %resource20.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resource20.i, align 4
  %call21.i = tail call i32 @radeon_vm_bo_update(ptr noundef %29, ptr noundef nonnull %call15.i, ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %for.inc.i, label %if.end18.i.out_crit_edge

if.end18.i.out_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc.i:                                        ; preds = %if.end18.i
  %last_pt_update.i = getelementptr inbounds %struct.radeon_bo_va, ptr %call15.i, i32 0, i32 2
  %46 = ptrtoint ptr %last_pt_update.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %last_pt_update.i, align 4
  tail call void @radeon_sync_fence(ptr noundef %sync.i, ptr noundef %47) #10
  %inc.i = add nuw i32 %i.062.i, 1
  %48 = ptrtoint ptr %nrelocs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nrelocs.i, align 4
  %cmp13.i = icmp ult i32 %inc.i, %49
  br i1 %cmp13.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.radeon_bo_vm_update_pte.exit_crit_edge

for.inc.i.radeon_bo_vm_update_pte.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_bo_vm_update_pte.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

radeon_bo_vm_update_pte.exit:                     ; preds = %for.inc.i.radeon_bo_vm_update_pte.exit_crit_edge, %for.cond.preheader.i.radeon_bo_vm_update_pte.exit_crit_edge
  %call25.i = tail call i32 @radeon_vm_clear_invalids(ptr noundef %29, ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not, label %if.end28, label %radeon_bo_vm_update_pte.exit.out_crit_edge

radeon_bo_vm_update_pte.exit.out_crit_edge:       ; preds = %radeon_bo_vm_update_pte.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %radeon_bo_vm_update_pte.exit
  %validated.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 10
  %sync.i79 = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 16, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i81.for.cond.i_crit_edge, %if.end28
  %.pn.in.i = phi ptr [ %validated.i, %if.end28 ], [ %.pn.i, %for.body.i81.for.cond.i_crit_edge ]
  %50 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %validated.i
  br i1 %cmp.not.i, label %if.end35, label %for.body.i81

for.body.i81:                                     ; preds = %for.cond.i
  %reloc.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %51 = ptrtoint ptr %reloc.0.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reloc.0.i, align 8
  %resv2.i = getelementptr inbounds %struct.radeon_bo, ptr %52, i32 0, i32 4, i32 0, i32 9
  %53 = ptrtoint ptr %resv2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %resv2.i, align 8
  %55 = ptrtoint ptr %rdev1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %rdev1.i, align 4
  %num_shared.i = getelementptr inbounds %struct.ttm_validate_buffer, ptr %.pn.i, i32 0, i32 2
  %57 = ptrtoint ptr %num_shared.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_shared.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i = icmp ne i32 %58, 0
  %call.i80 = tail call i32 @radeon_sync_resv(ptr noundef %56, ptr noundef %sync.i79, ptr noundef %54, i1 noundef zeroext %tobool.i) #10
  %59 = zext i32 %call.i80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i80, label %if.then33 [
    i32 0, label %for.body.i81.for.cond.i_crit_edge
    i32 -512, label %for.body.i81.out_crit_edge
  ]

for.body.i81.out_crit_edge:                       ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.i81.for.cond.i_crit_edge:                ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then33:                                        ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35, i32 noundef %call.i80) #10
  br label %out

if.end35:                                         ; preds = %for.cond.i
  %family = getelementptr inbounds %struct.radeon_device, ptr %rdev, i32 0, i32 6
  %60 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %61)
  %cmp36 = icmp ugt i32 %61, 51
  br i1 %cmp36, label %land.lhs.true, label %if.end35.if.else_crit_edge

if.end35.if.else_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end35
  %chunk_const_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %parser, i32 0, i32 15
  %62 = ptrtoint ptr %chunk_const_ib to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chunk_const_ib, align 8
  %cmp37.not = icmp eq ptr %63, null
  br i1 %cmp37.not, label %land.lhs.true.if.else_crit_edge, label %if.then38

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then38:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call41 = tail call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef %ib, ptr noundef %const_ib, i1 noundef zeroext true) #10
  br label %out

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end35.if.else_crit_edge
  %call43 = tail call i32 @radeon_ib_schedule(ptr noundef %rdev, ptr noundef %ib, ptr noundef null, i1 noundef zeroext true) #10
  br label %out

out:                                              ; preds = %if.else, %if.then38, %if.then33, %for.body.i81.out_crit_edge, %radeon_bo_vm_update_pte.exit.out_crit_edge, %if.end18.i.out_crit_edge, %do.end.i, %if.end7.i.out_crit_edge, %if.then6.i, %if.end.i.out_crit_edge, %if.end24.out_crit_edge
  %r.0 = phi i32 [ %call25.i, %radeon_bo_vm_update_pte.exit.out_crit_edge ], [ %call.i80, %if.then33 ], [ %call41, %if.then38 ], [ %call43, %if.else ], [ -22, %do.end.i ], [ %call9.i, %if.end7.i.out_crit_edge ], [ %call2.i, %if.end.i.out_crit_edge ], [ %call.i, %if.end24.out_crit_edge ], [ -22, %if.then6.i ], [ %call.i80, %for.body.i81.out_crit_edge ], [ %call21.i, %if.end18.i.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end11.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.then5.cleanup_crit_edge ], [ %call17, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_cs_packet_parse(ptr nocapture noundef readonly %p, ptr nocapture noundef %pkt, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_ib = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %0 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk_ib, align 4
  %rdev1 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %rdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %idx)
  %cmp.not = icmp ugt i32 %5, %idx
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %idx, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.radeon_get_ib_value.exit_crit_edge

if.end.radeon_get_ib_value.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_get_ib_value.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %8 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptr.i, align 8
  br label %radeon_get_ib_value.exit

radeon_get_ib_value.exit:                         ; preds = %if.end.i, %if.end.radeon_get_ib_value.exit_crit_edge
  %.pn.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.radeon_get_ib_value.exit_crit_edge ]
  %retval.0.in.i = getelementptr i32, ptr %.pn.i, i32 %idx
  %10 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %11 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %idx, ptr %pkt, align 4
  %shr = lshr i32 %retval.0.i, 30
  %type = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %type, align 4
  %shr4 = lshr i32 %retval.0.i, 16
  %and5 = and i32 %shr4, 16383
  %count = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  %13 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and5, ptr %count, align 4
  %one_reg_wr = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 5
  %14 = ptrtoint ptr %one_reg_wr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %one_reg_wr, align 4
  %15 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %shr, label %sw.default [
    i32 0, label %sw.bb
    i32 3, label %sw.bb17
    i32 2, label %sw.bb20
  ]

sw.bb:                                            ; preds = %radeon_get_ib_value.exit
  %family = getelementptr inbounds %struct.radeon_device, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %17)
  %cmp7 = icmp ult i32 %17, 27
  %and9 = shl i32 %retval.0.i, 2
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %shl = and i32 %and9, 32764
  %reg = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 2
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %reg, align 4
  %shr10 = lshr i32 %retval.0.i, 15
  %and11 = and i32 %shr10, 1
  %19 = ptrtoint ptr %one_reg_wr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and11, ptr %one_reg_wr, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %shl14 = and i32 %and9, 262140
  %reg15 = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 2
  %20 = ptrtoint ptr %reg15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl14, ptr %reg15, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  %shr18 = lshr i32 %retval.0.i, 8
  %and19 = and i32 %shr18, 255
  %opcode = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 3
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and19, ptr %opcode, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %count, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef %idx) #10
  br label %dump_ib

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %if.else, %if.then8
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 4
  %add = add nuw i32 %idx, 1
  %add25 = add i32 %add, %24
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %26)
  %cmp27.not = icmp ult i32 %add25, %26
  br i1 %cmp27.not, label %sw.epilog.cleanup_crit_edge, label %if.then28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then28:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %idx, i32 noundef %shr, i32 noundef %24, i32 noundef %26) #10
  br label %dump_ib

dump_ib:                                          ; preds = %if.then28, %sw.default
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp35108.not = icmp eq i32 %28, 0
  br i1 %cmp35108.not, label %dump_ib.cleanup_crit_edge, label %for.body.lr.ph

dump_ib.cleanup_crit_edge:                        ; preds = %dump_ib
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %dump_ib
  %ptr.i102 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0109, i32 %idx)
  %cmp36 = icmp eq i32 %i.0109, %idx
  %29 = ptrtoint ptr %chunk_ib to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chunk_ib, align 4
  %kdata.i91 = getelementptr inbounds %struct.radeon_cs_chunk, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %kdata.i91 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %kdata.i91, align 4
  %tobool.not.i92 = icmp eq ptr %32, null
  br i1 %cmp36, label %do.end, label %do.end43

do.end:                                           ; preds = %for.body
  br i1 %tobool.not.i92, label %if.end.i94, label %do.end.radeon_get_ib_value.exit98_crit_edge

do.end.radeon_get_ib_value.exit98_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_get_ib_value.exit98

if.end.i94:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %ptr.i102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptr.i102, align 8
  br label %radeon_get_ib_value.exit98

radeon_get_ib_value.exit98:                       ; preds = %if.end.i94, %do.end.radeon_get_ib_value.exit98_crit_edge
  %.pn.i95 = phi ptr [ %34, %if.end.i94 ], [ %32, %do.end.radeon_get_ib_value.exit98_crit_edge ]
  %retval.0.in.i96 = getelementptr i32, ptr %.pn.i95, i32 %idx
  br label %for.inc

do.end43:                                         ; preds = %for.body
  br i1 %tobool.not.i92, label %if.end.i103, label %do.end43.radeon_get_ib_value.exit107_crit_edge

do.end43.radeon_get_ib_value.exit107_crit_edge:   ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_get_ib_value.exit107

if.end.i103:                                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %ptr.i102 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptr.i102, align 8
  br label %radeon_get_ib_value.exit107

radeon_get_ib_value.exit107:                      ; preds = %if.end.i103, %do.end43.radeon_get_ib_value.exit107_crit_edge
  %.pn.i104 = phi ptr [ %36, %if.end.i103 ], [ %32, %do.end43.radeon_get_ib_value.exit107_crit_edge ]
  %retval.0.in.i105 = getelementptr i32, ptr %.pn.i104, i32 %i.0109
  br label %for.inc

for.inc:                                          ; preds = %radeon_get_ib_value.exit107, %radeon_get_ib_value.exit98
  %retval.0.in.i96.sink = phi ptr [ %retval.0.in.i96, %radeon_get_ib_value.exit98 ], [ %retval.0.in.i105, %radeon_get_ib_value.exit107 ]
  %.str.8.sink = phi ptr [ @.str.8, %radeon_get_ib_value.exit98 ], [ @.str.12, %radeon_get_ib_value.exit107 ]
  %37 = ptrtoint ptr %retval.0.in.i96.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %retval.0.i97 = load i32, ptr %retval.0.in.i96.sink, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, i32 noundef %retval.0.i97) #15
  %inc = add nuw i32 %i.0109, 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %cmp35 = icmp ult i32 %inc, %39
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dump_ib.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %dump_ib.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @radeon_cs_packet_next_is_pkt3_nop(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  %p3reloc = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %p3reloc) #10
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 3
  %idx = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %1 = call ptr @memset(ptr %p3reloc, i32 255, i32 24)
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %call = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %p3reloc, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.not = icmp eq i32 %6, 3
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp3.not = icmp eq i32 %8, 16
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ %cmp3.not, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %p3reloc) #10
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @radeon_cs_dump_packet(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ptr = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 8
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pkt, align 4
  %count = getelementptr inbounds %struct.radeon_cs_packet, ptr %pkt, i32 0, i32 4
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry
  %idx.010 = phi i32 [ %3, %entry ], [ %inc3, %do.end.do.end_crit_edge ]
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %do.end.do.end_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %idx.010
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %idx.010, i32 noundef %5) #15
  %inc = add i32 %i.09, 1
  %inc3 = add i32 %idx.010, 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %add = add i32 %7, 1
  %cmp.not = icmp ugt i32 %inc, %add
  br i1 %cmp.not, label %for.end, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.end:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @radeon_cs_packet_next_reloc(ptr nocapture noundef %p, ptr nocapture noundef %cs_reloc, i32 noundef %nomm) local_unnamed_addr #0 align 64 {
entry:
  %p3reloc = alloca %struct.radeon_cs_packet, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %p3reloc) #10
  %0 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 3
  %2 = getelementptr inbounds %struct.radeon_cs_packet, ptr %p3reloc, i32 0, i32 4
  %chunk_relocs = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 13
  %3 = call ptr @memset(ptr %p3reloc, i32 255, i32 24)
  %4 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chunk_relocs, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %cs_reloc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %cs_reloc, align 4
  %7 = ptrtoint ptr %chunk_relocs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chunk_relocs, align 8
  %idx2 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 6
  %9 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idx2, align 8
  %call = call i32 @radeon_cs_packet_parse(ptr noundef %p, ptr noundef nonnull %p3reloc, i32 noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %add = add i32 %12, 2
  %13 = ptrtoint ptr %idx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx2, align 8
  %add6 = add i32 %add, %14
  store i32 %add6, ptr %idx2, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp7.not = icmp eq i32 %16, 3
  br i1 %cmp7.not, label %lor.lhs.false, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp8.not = icmp eq i32 %18, 16
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %19 = ptrtoint ptr %p3reloc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p3reloc, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %20) #10
  %ptr.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %21 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ptr.i, align 8
  %add.i = add i32 %12, 1
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.then9
  %idx.010.i = phi i32 [ %20, %if.then9 ], [ %inc3.i, %do.end.i.do.end.i_crit_edge ]
  %i.09.i = phi i32 [ 0, %if.then9 ], [ %inc.i, %do.end.i.do.end.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %22, i32 %idx.010.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %idx.010.i, i32 noundef %24) #15
  %inc.i = add i32 %i.09.i, 1
  %inc3.i = add i32 %idx.010.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %add.i
  br i1 %cmp.not.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %p3reloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p3reloc, align 4
  %add13 = add i32 %26, 1
  %chunk_ib.i = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 12
  %27 = ptrtoint ptr %chunk_ib.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chunk_ib.i, align 4
  %kdata.i = getelementptr inbounds %struct.radeon_cs_chunk, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %kdata.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %kdata.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.radeon_get_ib_value.exit_crit_edge

if.end11.radeon_get_ib_value.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %radeon_get_ib_value.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %ptr.i55 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %31 = ptrtoint ptr %ptr.i55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ptr.i55, align 8
  br label %radeon_get_ib_value.exit

radeon_get_ib_value.exit:                         ; preds = %if.end.i, %if.end11.radeon_get_ib_value.exit_crit_edge
  %.pn.i = phi ptr [ %32, %if.end.i ], [ %30, %if.end11.radeon_get_ib_value.exit_crit_edge ]
  %retval.0.in.i = getelementptr i32, ptr %.pn.i, i32 %add13
  %33 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %35)
  %cmp15.not = icmp ult i32 %retval.0.i, %35
  br i1 %cmp15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %radeon_get_ib_value.exit
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %retval.0.i, i32 noundef %35) #10
  %ptr.i56 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 16, i32 3
  %36 = ptrtoint ptr %ptr.i56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr.i56, align 8
  %add.i64 = add i32 %12, 1
  br label %do.end.i66

do.end.i66:                                       ; preds = %do.end.i66.do.end.i66_crit_edge, %if.then16
  %idx.010.i58 = phi i32 [ %26, %if.then16 ], [ %inc3.i63, %do.end.i66.do.end.i66_crit_edge ]
  %i.09.i59 = phi i32 [ 0, %if.then16 ], [ %inc.i62, %do.end.i66.do.end.i66_crit_edge ]
  %arrayidx.i60 = getelementptr i32, ptr %37, i32 %idx.010.i58
  %38 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i60, align 4
  %call.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %idx.010.i58, i32 noundef %39) #15
  %inc.i62 = add i32 %i.09.i59, 1
  %inc3.i63 = add i32 %idx.010.i58, 1
  %cmp.not.i65 = icmp ugt i32 %inc.i62, %add.i64
  br i1 %cmp.not.i65, label %do.end.i66.cleanup_crit_edge, label %do.end.i66.do.end.i66_crit_edge

do.end.i66.do.end.i66_crit_edge:                  ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i66

do.end.i66.cleanup_crit_edge:                     ; preds = %do.end.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %radeon_get_ib_value.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nomm)
  %tobool19.not = icmp eq i32 %nomm, 0
  %relocs27 = getelementptr inbounds %struct.radeon_cs_parser, ptr %p, i32 0, i32 8
  %40 = ptrtoint ptr %relocs27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %relocs27, align 8
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %cs_reloc to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %cs_reloc, align 4
  %kdata = getelementptr inbounds %struct.radeon_cs_chunk, ptr %8, i32 0, i32 1
  %43 = ptrtoint ptr %kdata to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %kdata, align 4
  %add21 = add i32 %retval.0.i, 3
  %arrayidx = getelementptr i32, ptr %44, i32 %add21
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %46 to i64
  %shl = shl nuw i64 %conv, 32
  %gpu_offset = getelementptr inbounds %struct.radeon_bo_list, ptr %41, i32 0, i32 2
  %47 = ptrtoint ptr %gpu_offset to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl, ptr %gpu_offset, align 8
  %48 = load ptr, ptr %kdata, align 4
  %arrayidx24 = getelementptr i32, ptr %48, i32 %retval.0.i
  %49 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx24, align 4
  %conv25 = zext i32 %50 to i64
  %51 = load ptr, ptr %cs_reloc, align 4
  %gpu_offset26 = getelementptr inbounds %struct.radeon_bo_list, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %gpu_offset26 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %gpu_offset26, align 8
  %or = or i64 %53, %conv25
  store i64 %or, ptr %gpu_offset26, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %div54 = lshr i32 %retval.0.i, 2
  %arrayidx28 = getelementptr %struct.radeon_bo_list, ptr %41, i32 %div54
  %54 = ptrtoint ptr %cs_reloc to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx28, ptr %cs_reloc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %do.end.i66.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then20 ], [ -22, %do.end.i66.cleanup_crit_edge ], [ -22, %do.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %p3reloc) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_size_smaller_first(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %a, i32 -4
  %add.ptr3 = getelementptr i8, ptr %b, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %resource = getelementptr inbounds %struct.radeon_bo, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr3, align 8
  %resource6 = getelementptr inbounds %struct.radeon_bo, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %resource6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resource6, align 4
  %num_pages7 = getelementptr inbounds %struct.ttm_resource, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num_pages7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pages7, align 4
  %sub = sub i32 %5, %11
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_fence_buffer_objects(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_eu_backoff_reservation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_ib_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @radeon_ttm_tt_has_userptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_get_bos(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_bo_list_validate(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_radeon_cs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_uvd_note_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_vce_note_usage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_ib_schedule(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_sync_resv(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_update_page_directory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_clear_freed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_bo_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radeon_vm_bo_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @radeon_sync_fence(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radeon_vm_clear_invalids(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !72, !74, !76, !78, !80, !81, !82, !83, !84}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 371, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 381, i32 5}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 386, i32 5}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 687, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 698, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 744, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 769, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 774, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 784, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @radeon_cs_packet_parse._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @radeon_cs_packet_parse._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 786, i32 4}
!24 = !{ptr @radeon_cs_packet_parse._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @radeon_cs_packet_parse._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 829, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @radeon_cs_dump_packet._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @radeon_cs_dump_packet._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 851, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 862, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 869, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 214, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 622, i32 5}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 628, i32 5}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 641, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 650, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 112, i32 4}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 151, i32 5}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 165, i32 5}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 179, i32 5}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/radeon/radeon_trace.h", i32 30, i32 1}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!66 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 474, i32 3}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 481, i32 4}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 493, i32 3}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 514, i32 3}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/radeon/radeon_cs.c", i32 529, i32 4}
!80 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @radeon_bo_vm_update_pte._entry, !79, !"_entry", i1 false, i1 false}
!84 = !{ptr @radeon_bo_vm_update_pte._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2153898391, i64 2153898416}
!98 = !{i64 6393946}
!99 = !{i64 6394143}
!100 = !{i64 2153879376}
!101 = !{i8 0, i8 2}
!102 = !{i64 2148773170}
!103 = !{i64 2148687610, i64 2148687642, i64 2148687671, i64 2148687705, i64 2148687736, i64 2148687759}
!104 = !{i64 2150076011}
!105 = !{i64 2148507430, i64 2148507435, i64 2148507448, i64 2148507492, i64 2148507526, i64 2148507547}
!106 = !{i64 2158055354}
!107 = !{i64 2158055537}
!108 = !{i64 2150134113}
!109 = !{i64 2150135149}
