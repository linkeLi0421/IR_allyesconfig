; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dpu_encoder_virt_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dpu_encoder_phys = type { ptr, ptr, %struct.dpu_encoder_phys_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.drm_display_mode, i32, i32, i32, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, [5 x %struct.dpu_encoder_irq] }
%struct.dpu_encoder_phys_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dpu_encoder_irq = type { ptr, i32, i32, %struct.dpu_irq_callback }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_hw_pingpong = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_pingpong_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_pingpong_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dpu_encoder_wait_info = type { ptr, ptr, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dpu_encoder_virt = type { %struct.drm_encoder, %struct.spinlock, i32, i8, i32, [4 x ptr], ptr, ptr, [2 x ptr], i8, ptr, ptr, %struct.mutex, [1 x i32], ptr, ptr, %struct.atomic_t, %struct.timer_list, %struct.timer_list, %struct.msm_display_info, i8, %struct.mutex, i32, %struct.delayed_work, %struct.kthread_work, %struct.msm_display_topology, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.msm_display_info = type { i32, i32, i32, [2 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_display_topology = type { i32, i32, i32, i32 }
%struct.split_pipe_cfg = type { i8, i32, i32, i8 }
%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_mdp_ops }
%struct.dpu_hw_mdp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_dither_cfg = type { i64, i32, i32, i32, i32, i32, [16 x i32] }
%struct.dpu_vsync_source_cfg = type { i32, i32, [8 x i32], i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.92 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.95, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.95 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.90 }
%union.anon.90 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.dpu_hw_ctl = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, i32, ptr, i32, i32, i32, %struct.dpu_hw_ctl_ops }
%struct.dpu_hw_ctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
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
%struct.dpu_crtc = type { %struct.drm_crtc, [12 x i8], ptr, i32, i32, i64, i64, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.atomic_t, [4 x %struct.dpu_crtc_frame_event], %struct.list_head, %struct.spinlock, %struct.completion, %struct.spinlock, %struct.dpu_core_perf_params, %struct.dpu_crtc_smmu_state_data }
%struct.dpu_crtc_frame_event = type { %struct.kthread_work, ptr, %struct.list_head, i64, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_smmu_state_data = type { i32, i32, i32 }
%struct.dpu_enc_phys_init_params = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.85, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.86, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.87, ptr, %struct.address_space, %struct.list_head, %union.anon.88, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.85 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.86 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.87 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.88 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state, i8, i8, [2 x %struct.drm_rect], i64, %struct.dpu_core_perf_params, i32, [2 x %struct.dpu_crtc_mixer], i32, [2 x ptr], i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_crtc_mixer = type { ptr, ptr, ptr, i32, i32 }
%struct.dpu_hw_intf = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, %struct.dpu_hw_intf_ops }
%struct.dpu_hw_intf_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"irq timeout id=%u, intf=%d, pp=%d, intr=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_wait_for_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid params\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_helper_wait_for_irq\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c\00", [52 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_wait_for_irq._entry_ptr = internal global ptr @dpu_encoder_helper_wait_for_irq._entry, section ".printk_index", align 4
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"encoder is disabled id=%u, intr=%d, irq=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skip irq wait id=%u, intr=%d, irq=%s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"id=%u, intr=%d, irq=%d, pp=%d, pending_cnt=%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"irq not triggered id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"irq timeout id=%u, intr=%d, irq=%d, pp=%d, atomic_cnt=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_register_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.3, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_helper_register_irq\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_register_irq._entry_ptr = internal global ptr @dpu_encoder_helper_register_irq._entry, section ".printk_index", align 4
@dpu_encoder_helper_register_irq._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d pp%d invalid IRQ index:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_register_irq._entry_ptr.12 = internal global ptr @dpu_encoder_helper_register_irq._entry.10, section ".printk_index", align 4
@dpu_encoder_helper_register_irq._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.3, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013[drm:%s:%d] [dpu error]enc%d intf%d pp%d failed to register IRQ callback for %s\0A\00", [45 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_register_irq._entry_ptr.15 = internal global ptr @dpu_encoder_helper_register_irq._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"duplicate unregister id=%u, intr=%d, irq=%d\00", [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unreg cb fail id=%u, intr=%d, irq=%d ret=%d\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enc%d \0A\00", [24 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_split_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), encoder %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_helper_split_config\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_split_config._entry_ptr = internal global ptr @dpu_encoder_helper_split_config._entry, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enc%d enable %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dpu_encoder_register_frame_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dpu_encoder_register_frame_event_callback\00", [54 x i8] zeroinitializer }, align 32
@dpu_encoder_register_frame_event_callback._entry_ptr = internal global ptr @dpu_encoder_register_frame_event_callback._entry, section ".printk_index", align 4
@dpu_encoder_trigger_kickoff_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.24, ptr @.str.3, i32 1585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpu_encoder_trigger_kickoff_pending\00", [60 x i8] zeroinitializer }, align 32
@dpu_encoder_trigger_kickoff_pending._entry_ptr = internal global ptr @dpu_encoder_trigger_kickoff_pending._entry, section ".printk_index", align 4
@dpu_encoder_vsync_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013[drm:%s:%d] [dpu error]crtc/crtc state object is NULL\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dpu_encoder_vsync_time\00", [41 x i8] zeroinitializer }, align 32
@dpu_encoder_vsync_time._entry_ptr = internal global ptr @dpu_encoder_vsync_time._entry, section ".printk_index", align 4
@dpu_encoder_vsync_time._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 1684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013[drm:%s:%d] [dpu error]time to vsync should not be zero, vtotal=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dpu_encoder_vsync_time._entry_ptr.29 = internal global ptr @dpu_encoder_vsync_time._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"enc%d cur_line=%u vtotal=%u time_to_vsync=%u, cur_time=%lld, wakeup_time=%lld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enc_prepare_for_kickoff\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"encoder_kickoff\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dpu_encoder_prepare_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.33, ptr @.str.3, i32 1823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpu_encoder_prepare_commit\00", [37 x i8] zeroinitializer }, align 32
@dpu_encoder_prepare_commit._entry_ptr = internal global ptr @dpu_encoder_prepare_commit._entry, section ".printk_index", align 4
@dpu_encoder_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&dpu_enc->frame_done_timer)\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_setup.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&dpu_enc->vsync_event_timer)\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_setup.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"(work_completion)(&(&dpu_enc->delayed_off_work)->work)\00", [41 x i8] zeroinitializer }, align 32
@dpu_encoder_setup.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"&(&dpu_enc->delayed_off_work)->timer\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enc%d created\0A\00", [17 x i8] zeroinitializer }, align 32
@dpu_encoder_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 2148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s:%d] [dpu error]failed to create encoder\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dpu_encoder_setup\00", [46 x i8] zeroinitializer }, align 32
@dpu_encoder_setup._entry_ptr = internal global ptr @dpu_encoder_setup._entry, section ".printk_index", align 4
@dpu_encoder_funcs = internal constant { %struct.drm_encoder_funcs, [16 x i8] } { %struct.drm_encoder_funcs { ptr null, ptr @dpu_encoder_destroy, ptr @dpu_encoder_late_register, ptr @dpu_encoder_early_unregister }, [16 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_encoder_virt_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @dpu_encoder_virt_disable, ptr @dpu_encoder_virt_enable, ptr @dpu_encoder_virt_atomic_check }, [44 x i8] zeroinitializer }, align 32
@dpu_encoder_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dpu_enc->enc_spinlock\00", [41 x i8] zeroinitializer }, align 32
@dpu_encoder_init.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dpu_enc->enc_lock\00", [45 x i8] zeroinitializer }, align 32
@dpu_encoder_init.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dpu_enc->rc_lock\00", [46 x i8] zeroinitializer }, align 32
@dpu_encoder_wait_for_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.49, ptr @.str.3, i32 2192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpu_encoder_wait_for_event\00", [37 x i8] zeroinitializer }, align 32
@dpu_encoder_wait_for_event._entry_ptr = internal global ptr @dpu_encoder_wait_for_event._entry, section ".printk_index", align 4
@dpu_encoder_wait_for_event._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 2213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[drm:%s:%d] [dpu error]enc%d unknown wait event %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dpu_encoder_wait_for_event._entry_ptr.52 = internal global ptr @dpu_encoder_wait_for_event._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait_for_completion_event\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_get_intf_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.54, ptr @.str.3, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_encoder_get_intf_mode\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_get_intf_mode._entry_ptr = internal global ptr @dpu_encoder_get_intf_mode._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_irq_wait_success = external dso_local global %struct.tracepoint, align 4
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", [54 x i8] zeroinitializer }, align 32
@trace_dpu_enc_irq_wait_success.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_irq_register_success = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_irq_register_success.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_irq_unregister_success = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_irq_unregister_success.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_encoder_virt_enable_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid parameters\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_dpu_encoder_virt_enable_helper\00", [32 x i8] zeroinitializer }, align 32
@_dpu_encoder_virt_enable_helper._entry_ptr = internal global ptr @_dpu_encoder_virt_enable_helper._entry, section ".printk_index", align 4
@_dpu_encoder_virt_enable_helper._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 1097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid dpu encoder/master\0A\00", [43 x i8] zeroinitializer }, align 32
@_dpu_encoder_virt_enable_helper._entry_ptr.62 = internal global ptr @_dpu_encoder_virt_enable_helper._entry.60, section ".printk_index", align 4
@_dpu_encoder_update_vsync_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[drm:%s:%d] [dpu error]invalid param dpu_enc:%d or disp_info:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"_dpu_encoder_update_vsync_source\00", [63 x i8] zeroinitializer }, align 32
@_dpu_encoder_update_vsync_source._entry_ptr = internal global ptr @_dpu_encoder_update_vsync_source._entry, section ".printk_index", align 4
@_dpu_encoder_update_vsync_source._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.3, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]invalid num phys enc %d/%d\0A\00", [43 x i8] zeroinitializer }, align 32
@_dpu_encoder_update_vsync_source._entry_ptr.67 = internal global ptr @_dpu_encoder_update_vsync_source._entry.65, section ".printk_index", align 4
@_dpu_encoder_update_vsync_source._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.3, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013[drm:%s:%d] [dpu error]invalid mdptop\0A\00", [55 x i8] zeroinitializer }, align 32
@_dpu_encoder_update_vsync_source._entry_ptr.70 = internal global ptr @_dpu_encoder_update_vsync_source._entry.68, section ".printk_index", align 4
@dither_matrix = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 15, i32 7, i32 13, i32 5, i32 3, i32 11, i32 1, i32 9, i32 12, i32 4, i32 14, i32 6, i32 0, i32 8, i32 2, i32 10], [32 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_vblank_cb = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_vblank_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_frame_event_cb = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_frame_event_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_trigger_start = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_trigger_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_wait_event_timeout = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_wait_event_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_encoder_calculate_linetime._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[drm:%s:%d] [dpu error]get_line_count function not defined\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"_dpu_encoder_calculate_linetime\00", [32 x i8] zeroinitializer }, align 32
@_dpu_encoder_calculate_linetime._entry_ptr = internal global ptr @_dpu_encoder_calculate_linetime._entry, section ".printk_index", align 4
@_dpu_encoder_calculate_linetime._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.3, i32 1626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]pclk is 0, cannot calculate line time\0A\00", [32 x i8] zeroinitializer }, align 32
@_dpu_encoder_calculate_linetime._entry_ptr.75 = internal global ptr @_dpu_encoder_calculate_linetime._entry.73, section ".printk_index", align 4
@_dpu_encoder_calculate_linetime._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.3, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013[drm:%s:%d] [dpu error]pclk period is 0\0A\00", [53 x i8] zeroinitializer }, align 32
@_dpu_encoder_calculate_linetime._entry_ptr.78 = internal global ptr @_dpu_encoder_calculate_linetime._entry.76, section ".printk_index", align 4
@_dpu_encoder_calculate_linetime._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.3, i32 1642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]line time calculation is 0\0A\00", [43 x i8] zeroinitializer }, align 32
@_dpu_encoder_calculate_linetime._entry_ptr.81 = internal global ptr @_dpu_encoder_calculate_linetime._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"enc%d clk_rate=%lldkHz, clk_period=%d, linetime=%dns\0A\00", [42 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_prepare_kickoff = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_prepare_kickoff.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_tracing_mark_write = external dso_local global %struct.tracepoint, align 4
@trace_tracing_mark_write.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_resource_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.83, ptr @.str.3, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpu_encoder_resource_control\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_resource_control._entry_ptr = internal global ptr @dpu_encoder_resource_control._entry, section ".printk_index", align 4
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"begin\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enc%d sw_event:%d, work cancelled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"id;%u, sw_event:%d, rc in ON state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"id;%u, sw_event:%d, rc in state %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kickoff\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"id:%d, sw_event:%d,rc:%d-unexpected\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"id:%d skip schedule work\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"frame done\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"id:%u, sw_event:%d, rc in %d state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pre stop\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"id: %u, sw_event:%d, rc in OFF state\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"id: %u, sw_event:%d, rc in state %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"id: %u, sw_event:%d, rc:%d !ON state\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"id:%u, sw_event:%d, rc:%d frame pending\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"id:%u, unexpected sw_event: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"end\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_rc = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_rc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_encoder_irq_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.103, ptr @.str.3, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_dpu_encoder_irq_control\00", [39 x i8] zeroinitializer }, align 32
@_dpu_encoder_irq_control._entry_ptr = internal global ptr @_dpu_encoder_irq_control._entry, section ".printk_index", align 4
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enc%d enable:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@_dpu_encoder_resource_control_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]encoder master not set\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"_dpu_encoder_resource_control_helper\00", [59 x i8] zeroinitializer }, align 32
@_dpu_encoder_resource_control_helper._entry_ptr = internal global ptr @_dpu_encoder_resource_control_helper._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_rc_helper = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_rc_helper.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_prepare_kickoff_reset = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_prepare_kickoff_reset.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"id:%u ctl %d reset\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_hw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 1512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013[drm:%s:%d] [dpu error]enc%d ctl %d reset failure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dpu_encoder_helper_hw_reset\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_helper_hw_reset._entry_ptr = internal global ptr @dpu_encoder_helper_hw_reset._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_kickoff = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_kickoff.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_encoder_trigger_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid pingpong hw\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_dpu_encoder_trigger_flush\00", [37 x i8] zeroinitializer }, align 32
@_dpu_encoder_trigger_flush._entry_ptr = internal global ptr @_dpu_encoder_trigger_flush._entry, section ".printk_index", align 4
@_dpu_encoder_trigger_flush._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]missing trigger cb\0A\00", [51 x i8] zeroinitializer }, align 32
@_dpu_encoder_trigger_flush._entry_ptr.114 = internal global ptr @_dpu_encoder_trigger_flush._entry.112, section ".printk_index", align 4
@__tracepoint_dpu_enc_trigger_flush = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_trigger_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@_dpu_encoder_trigger_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 1444, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[drm:%s:%d] [dpu error]invalid argument(s)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_dpu_encoder_trigger_start\00", [37 x i8] zeroinitializer }, align 32
@_dpu_encoder_trigger_start._entry_ptr = internal global ptr @_dpu_encoder_trigger_start._entry, section ".printk_index", align 4
@_dpu_encoder_trigger_start._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.116, ptr @.str.3, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_dpu_encoder_trigger_start._entry_ptr.118 = internal global ptr @_dpu_encoder_trigger_start._entry.117, section ".printk_index", align 4
@__tracepoint_dpu_enc_early_kickoff = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_early_kickoff.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_setup_display._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.3, i32 1988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), enc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_encoder_setup_display\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display._entry_ptr = internal global ptr @dpu_encoder_setup_display._entry, section ".printk_index", align 4
@dpu_encoder_parent_ops = internal constant { %struct.dpu_encoder_virt_ops, [20 x i8] } { %struct.dpu_encoder_virt_ops { ptr @dpu_encoder_vblank_callback, ptr @dpu_encoder_underrun_callback, ptr @dpu_encoder_frame_done_callback }, [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dsi_info->num_of_h_tiles %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.122, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 1, i8 -10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[drm:%s:%d] dsi_info->num_of_h_tiles %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"h_tile_instance %d = %d, split_role %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display.__UNIQUE_ID_ddebug478 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.122, ptr @.str.120, ptr @.str.3, ptr @.str.124, i8 1, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[drm:%s:%d] h_tile_instance %d = %d, split_role %d\0A\00", [44 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.120, ptr @.str.3, i32 2044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013[drm:%s:%d] [dpu error]enc%d could not get intf: type %d, id %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display._entry_ptr.128 = internal global ptr @dpu_encoder_setup_display._entry.126, section ".printk_index", align 4
@dpu_encoder_setup_display._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.120, ptr @.str.3, i32 2053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to add phys encs\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_setup_display._entry_ptr.131 = internal global ptr @dpu_encoder_setup_display._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"encoder_vblank_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"encoder_underrun_callback\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_underrun_cb = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_underrun_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_frame_done_cb_not_busy = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_frame_done_cb_not_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_frame_done_cb = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_frame_done_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@dpu_encoder_virt_add_phys_encs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.3, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[drm:%s:%d] [dpu error]enc%d too many physical encoders %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpu_encoder_virt_add_phys_encs\00", [33 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_add_phys_encs._entry_ptr = internal global ptr @dpu_encoder_virt_add_phys_encs._entry, section ".printk_index", align 4
@dpu_encoder_virt_add_phys_encs._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.135, ptr @.str.3, i32 1943, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to init vid enc: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_add_phys_encs._entry_ptr.138 = internal global ptr @dpu_encoder_virt_add_phys_encs._entry.136, section ".printk_index", align 4
@dpu_encoder_virt_add_phys_encs._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.135, ptr @.str.3, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to init cmd enc: %ld\0A\00", [36 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_add_phys_encs._entry_ptr.141 = internal global ptr @dpu_encoder_virt_add_phys_encs._entry.139, section ".printk_index", align 4
@dpu_encoder_frame_done_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.142, ptr @.str.3, i32 2075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dpu_encoder_frame_done_timeout\00", [33 x i8] zeroinitializer }, align 32
@dpu_encoder_frame_done_timeout._entry_ptr = internal global ptr @dpu_encoder_frame_done_timeout._entry, section ".printk_index", align 4
@.str.143 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"id:%u invalid timeout frame_busy_mask=%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"id:%u invalid timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@dpu_encoder_frame_done_timeout._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.142, ptr @.str.3, i32 2088, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013[drm:%s:%d] [dpu error]enc%d frame done timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@dpu_encoder_frame_done_timeout._entry_ptr.147 = internal global ptr @dpu_encoder_frame_done_timeout._entry.145, section ".printk_index", align 4
@__tracepoint_dpu_enc_frame_done_timeout = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_frame_done_timeout.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_vsync_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.148, ptr @.str.3, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dpu_encoder_vsync_event_handler\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_vsync_event_handler._entry_ptr = internal global ptr @dpu_encoder_vsync_event_handler._entry, section ".printk_index", align 4
@dpu_encoder_vsync_event_handler._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.148, ptr @.str.3, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013[drm:%s:%d] [dpu error]invalid crtc index\0A\00", [51 x i8] zeroinitializer }, align 32
@dpu_encoder_vsync_event_handler._entry_ptr.151 = internal global ptr @dpu_encoder_vsync_event_handler._entry.149, section ".printk_index", align 4
@dpu_encoder_vsync_event_handler._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.148, ptr @.str.3, i32 1721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013[drm:%s:%d] [dpu error]event_thread not found for crtc:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@dpu_encoder_vsync_event_handler._entry_ptr.154 = internal global ptr @dpu_encoder_vsync_event_handler._entry.152, section ".printk_index", align 4
@__tracepoint_dpu_enc_vsync_event_work = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_vsync_event_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.155, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpu_encoder_destroy\00", [44 x i8] zeroinitializer }, align 32
@dpu_encoder_destroy._entry_ptr = internal global ptr @dpu_encoder_destroy._entry, section ".printk_index", align 4
@dpu_encoder_destroy._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.3, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d expected 0 num_phys_encs not %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_destroy._entry_ptr.158 = internal global ptr @dpu_encoder_destroy._entry.156, section ".printk_index", align 4
@_dpu_encoder_init_debugfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 1877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013[drm:%s:%d] [dpu error]invalid encoder or kms\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_dpu_encoder_init_debugfs\00", [38 x i8] zeroinitializer }, align 32
@_dpu_encoder_init_debugfs._entry_ptr = internal global ptr @_dpu_encoder_init_debugfs._entry, section ".printk_index", align 4
@.str.161 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"encoder%u\00", [22 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@_dpu_encoder_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @_dpu_encoder_status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"intf:%d    vsync:%8d     underrun:%8d    \00", [54 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mode: video\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mode: command\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mode: ???\0A\00", [21 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.167, ptr @.str.3, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpu_encoder_virt_mode_set\00", [38 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr = internal global ptr @dpu_encoder_virt_mode_set._entry, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.3, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm:%s:%d] [dpu error]Failed to get global state\00", [44 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.170 = internal global ptr @dpu_encoder_virt_mode_set._entry.168, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.3, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d failed to find attached connector\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.173 = internal global ptr @dpu_encoder_virt_mode_set._entry.171, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str.3, i32 1006, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013[drm:%s:%d] [dpu error]enc%d invalid connector state\0A\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.176 = internal global ptr @dpu_encoder_virt_mode_set._entry.174, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.167, ptr @.str.3, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no pp block assigned at idx: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.179 = internal global ptr @dpu_encoder_virt_mode_set._entry.177, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.167, ptr @.str.3, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no ctl block assigned at idx: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.182 = internal global ptr @dpu_encoder_virt_mode_set._entry.180, section ".printk_index", align 4
@dpu_encoder_virt_mode_set._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.167, ptr @.str.3, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013[drm:%s:%d] [dpu error]enc%d no intf block assigned at idx: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_mode_set._entry_ptr.185 = internal global ptr @dpu_encoder_virt_mode_set._entry.183, section ".printk_index", align 4
@__tracepoint_dpu_enc_mode_set = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_mode_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_virt_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.3, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013[drm:%s:%d] [dpu error]enc%d timeout pending\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dpu_encoder_virt_disable\00", [39 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_disable._entry_ptr = internal global ptr @dpu_encoder_virt_disable._entry, section ".printk_index", align 4
@.str.188 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enc%d encoder disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_dpu_enc_disable = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_disable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_virt_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.3, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013[drm:%s:%d] [dpu error]enc%d dpu resource control failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dpu_encoder_virt_enable\00", [40 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_enable._entry_ptr = internal global ptr @dpu_encoder_virt_enable._entry, section ".printk_index", align 4
@__tracepoint_dpu_enc_enable = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_enable.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dpu_encoder_virt_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.192, ptr @.str.3, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013[drm:%s:%d] [dpu error]invalid arg(s), drm_enc %d, crtc/conn state %d/%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dpu_encoder_virt_atomic_check\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_atomic_check._entry_ptr = internal global ptr @dpu_encoder_virt_atomic_check._entry, section ".printk_index", align 4
@dpu_encoder_virt_atomic_check._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.192, ptr @.str.3, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013[drm:%s:%d] [dpu error]enc%d mode unsupported, phys idx %d\0A\00", [34 x i8] zeroinitializer }, align 32
@dpu_encoder_virt_atomic_check._entry_ptr.195 = internal global ptr @dpu_encoder_virt_atomic_check._entry.193, section ".printk_index", align 4
@__tracepoint_dpu_enc_atomic_check = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_atomic_check.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_dpu_enc_atomic_check_flags = external dso_local global %struct.tracepoint, align 4
@trace_dpu_enc_atomic_check_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.196 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 249, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 271, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 280, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 287, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 293, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 309, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 320, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 344, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 350, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 358, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 381, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 390, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 430, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 488, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 520, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1326, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1585, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1665, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1683, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1691, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1754, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1783, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1823, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2124, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2128, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2134, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2143, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2148, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"dpu_encoder_funcs\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2102, i32 39 }
@___asan_gen_.355 = private unnamed_addr constant [25 x i8] c"dpu_encoder_helper_funcs\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2095, i32 46 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2176, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2178, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2179, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2192, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2212, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2218, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2234, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant [45 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 199, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 108, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1091, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1097, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 654, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 658, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 671, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant [14 x i8] c"dither_matrix\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 216, i32 12 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1620, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1626, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1632, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1642, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1646, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 755, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 774, i32 24 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 780, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 787, i32 4 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 793, i32 4 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 809, i32 6 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 822, i32 4 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 833, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 843, i32 6 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 861, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 872, i32 6 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 882, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 887, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 904, i32 6 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 913, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 924, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 939, i32 6 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 945, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 949, i32 6 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 955, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 696, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 702, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 726, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1507, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1512, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1412, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1418, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1444, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1449, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1988, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant [23 x i8] c"dpu_encoder_parent_ops\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1972, i32 42 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2011, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2036, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2043, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2053, i32 5 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1249, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1267, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1933, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1942, i32 4 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1955, i32 4 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2075, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2080, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2084, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 2088, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1708, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1715, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1720, i32 3 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 449, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 469, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1877, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1881, i32 32 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1888, i32 22 }
@___asan_gen_.724 = private unnamed_addr constant [25 x i8] c"_dpu_encoder_status_fops\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1867, i32 1 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1845, i32 17 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1852, i32 16 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1855, i32 16 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1858, i32 16 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 979, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 992, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1003, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1006, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1048, i32 4 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1054, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1074, i32 4 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1210, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1220, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 1166, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 585, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.814 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.815 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.815, i32 615, i32 4 }
@llvm.compiler.used = appending global [261 x ptr] [ptr @_dpu_encoder_calculate_linetime._entry, ptr @_dpu_encoder_calculate_linetime._entry.73, ptr @_dpu_encoder_calculate_linetime._entry.76, ptr @_dpu_encoder_calculate_linetime._entry.79, ptr @_dpu_encoder_calculate_linetime._entry_ptr, ptr @_dpu_encoder_calculate_linetime._entry_ptr.75, ptr @_dpu_encoder_calculate_linetime._entry_ptr.78, ptr @_dpu_encoder_calculate_linetime._entry_ptr.81, ptr @_dpu_encoder_init_debugfs._entry, ptr @_dpu_encoder_init_debugfs._entry_ptr, ptr @_dpu_encoder_irq_control._entry, ptr @_dpu_encoder_irq_control._entry_ptr, ptr @_dpu_encoder_resource_control_helper._entry, ptr @_dpu_encoder_resource_control_helper._entry_ptr, ptr @_dpu_encoder_trigger_flush._entry, ptr @_dpu_encoder_trigger_flush._entry.112, ptr @_dpu_encoder_trigger_flush._entry_ptr, ptr @_dpu_encoder_trigger_flush._entry_ptr.114, ptr @_dpu_encoder_trigger_start._entry, ptr @_dpu_encoder_trigger_start._entry.117, ptr @_dpu_encoder_trigger_start._entry_ptr, ptr @_dpu_encoder_trigger_start._entry_ptr.118, ptr @_dpu_encoder_update_vsync_source._entry, ptr @_dpu_encoder_update_vsync_source._entry.65, ptr @_dpu_encoder_update_vsync_source._entry.68, ptr @_dpu_encoder_update_vsync_source._entry_ptr, ptr @_dpu_encoder_update_vsync_source._entry_ptr.67, ptr @_dpu_encoder_update_vsync_source._entry_ptr.70, ptr @_dpu_encoder_virt_enable_helper._entry, ptr @_dpu_encoder_virt_enable_helper._entry.60, ptr @_dpu_encoder_virt_enable_helper._entry_ptr, ptr @_dpu_encoder_virt_enable_helper._entry_ptr.62, ptr @dpu_encoder_destroy._entry, ptr @dpu_encoder_destroy._entry.156, ptr @dpu_encoder_destroy._entry_ptr, ptr @dpu_encoder_destroy._entry_ptr.158, ptr @dpu_encoder_frame_done_timeout._entry, ptr @dpu_encoder_frame_done_timeout._entry.145, ptr @dpu_encoder_frame_done_timeout._entry_ptr, ptr @dpu_encoder_frame_done_timeout._entry_ptr.147, ptr @dpu_encoder_get_intf_mode._entry, ptr @dpu_encoder_get_intf_mode._entry_ptr, ptr @dpu_encoder_helper_hw_reset._entry, ptr @dpu_encoder_helper_hw_reset._entry_ptr, ptr @dpu_encoder_helper_register_irq._entry, ptr @dpu_encoder_helper_register_irq._entry.10, ptr @dpu_encoder_helper_register_irq._entry.13, ptr @dpu_encoder_helper_register_irq._entry_ptr, ptr @dpu_encoder_helper_register_irq._entry_ptr.12, ptr @dpu_encoder_helper_register_irq._entry_ptr.15, ptr @dpu_encoder_helper_split_config._entry, ptr @dpu_encoder_helper_split_config._entry_ptr, ptr @dpu_encoder_helper_wait_for_irq._entry, ptr @dpu_encoder_helper_wait_for_irq._entry_ptr, ptr @dpu_encoder_prepare_commit._entry, ptr @dpu_encoder_prepare_commit._entry_ptr, ptr @dpu_encoder_register_frame_event_callback._entry, ptr @dpu_encoder_register_frame_event_callback._entry_ptr, ptr @dpu_encoder_resource_control._entry, ptr @dpu_encoder_resource_control._entry_ptr, ptr @dpu_encoder_setup._entry, ptr @dpu_encoder_setup._entry_ptr, ptr @dpu_encoder_setup_display._entry, ptr @dpu_encoder_setup_display._entry.126, ptr @dpu_encoder_setup_display._entry.129, ptr @dpu_encoder_setup_display._entry_ptr, ptr @dpu_encoder_setup_display._entry_ptr.128, ptr @dpu_encoder_setup_display._entry_ptr.131, ptr @dpu_encoder_trigger_kickoff_pending._entry, ptr @dpu_encoder_trigger_kickoff_pending._entry_ptr, ptr @dpu_encoder_virt_add_phys_encs._entry, ptr @dpu_encoder_virt_add_phys_encs._entry.136, ptr @dpu_encoder_virt_add_phys_encs._entry.139, ptr @dpu_encoder_virt_add_phys_encs._entry_ptr, ptr @dpu_encoder_virt_add_phys_encs._entry_ptr.138, ptr @dpu_encoder_virt_add_phys_encs._entry_ptr.141, ptr @dpu_encoder_virt_atomic_check._entry, ptr @dpu_encoder_virt_atomic_check._entry.193, ptr @dpu_encoder_virt_atomic_check._entry_ptr, ptr @dpu_encoder_virt_atomic_check._entry_ptr.195, ptr @dpu_encoder_virt_disable._entry, ptr @dpu_encoder_virt_disable._entry_ptr, ptr @dpu_encoder_virt_enable._entry, ptr @dpu_encoder_virt_enable._entry_ptr, ptr @dpu_encoder_virt_mode_set._entry, ptr @dpu_encoder_virt_mode_set._entry.168, ptr @dpu_encoder_virt_mode_set._entry.171, ptr @dpu_encoder_virt_mode_set._entry.174, ptr @dpu_encoder_virt_mode_set._entry.177, ptr @dpu_encoder_virt_mode_set._entry.180, ptr @dpu_encoder_virt_mode_set._entry.183, ptr @dpu_encoder_virt_mode_set._entry_ptr, ptr @dpu_encoder_virt_mode_set._entry_ptr.170, ptr @dpu_encoder_virt_mode_set._entry_ptr.173, ptr @dpu_encoder_virt_mode_set._entry_ptr.176, ptr @dpu_encoder_virt_mode_set._entry_ptr.179, ptr @dpu_encoder_virt_mode_set._entry_ptr.182, ptr @dpu_encoder_virt_mode_set._entry_ptr.185, ptr @dpu_encoder_vsync_event_handler._entry, ptr @dpu_encoder_vsync_event_handler._entry.149, ptr @dpu_encoder_vsync_event_handler._entry.152, ptr @dpu_encoder_vsync_event_handler._entry_ptr, ptr @dpu_encoder_vsync_event_handler._entry_ptr.151, ptr @dpu_encoder_vsync_event_handler._entry_ptr.154, ptr @dpu_encoder_vsync_time._entry, ptr @dpu_encoder_vsync_time._entry.27, ptr @dpu_encoder_vsync_time._entry_ptr, ptr @dpu_encoder_vsync_time._entry_ptr.29, ptr @dpu_encoder_wait_for_event._entry, ptr @dpu_encoder_wait_for_event._entry.50, ptr @dpu_encoder_wait_for_event._entry_ptr, ptr @dpu_encoder_wait_for_event._entry_ptr.52, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dpu_encoder_setup.__key, ptr @.str.34, ptr @dpu_encoder_setup.__key.35, ptr @.str.36, ptr @dpu_encoder_setup.__key.37, ptr @.str.38, ptr @dpu_encoder_setup.__key.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @dpu_encoder_funcs, ptr @dpu_encoder_helper_funcs, ptr @dpu_encoder_init.__key, ptr @.str.44, ptr @dpu_encoder_init.__key.45, ptr @.str.46, ptr @dpu_encoder_init.__key.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @dither_matrix, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.119, ptr @.str.120, ptr @dpu_encoder_parent_ops, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.140, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @_dpu_encoder_status_fops, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.194], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_wait_for_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_register_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_register_irq._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_register_irq._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_split_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_register_frame_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_trigger_kickoff_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_vsync_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_vsync_time._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_prepare_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_funcs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_init.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_init.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_wait_for_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_wait_for_event._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_get_intf_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_virt_enable_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_virt_enable_helper._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_update_vsync_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_update_vsync_source._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_update_vsync_source._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dither_matrix to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_calculate_linetime._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_calculate_linetime._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_calculate_linetime._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_calculate_linetime._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_resource_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_irq_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_resource_control_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_helper_hw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_trigger_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_trigger_flush._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_trigger_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_trigger_start._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup_display._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_parent_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup_display._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_setup_display._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_add_phys_encs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_add_phys_encs._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_add_phys_encs._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_frame_done_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_frame_done_timeout._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_vsync_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_vsync_event_handler._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_vsync_event_handler._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_destroy._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_init_debugfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_encoder_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_mode_set._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_encoder_virt_atomic_check._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_report_irq_timeout(ptr noundef %phys_enc, i32 noundef %intr_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %4 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %5, -1
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %6 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_pp, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  %sub2 = add i32 %9, -1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %cond, i32 noundef %sub, i32 noundef %sub2, i32 noundef %intr_idx) #9
  %parent_ops = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 3
  %10 = ptrtoint ptr %parent_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent_ops, align 4
  %handle_frame_done = getelementptr inbounds %struct.dpu_encoder_virt_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %handle_frame_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handle_frame_done, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phys_enc, align 4
  tail call void %13(ptr noundef %15, ptr noundef %phys_enc, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_helper_wait_for_irq(ptr noundef %phys_enc, i32 noundef %intr_idx, ptr noundef readonly %wait_info) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %wait_info, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %intr_idx)
  %cmp = icmp ugt i32 %intr_idx, 4
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 271) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 14
  %0 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.then3.cond.end_crit_edge, label %cond.true

if.then3.cond.end_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then3.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then3.cond.end_crit_edge ]
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 2
  %6 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_idx, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %cond, i32 noundef %intr_idx, i32 noundef %7) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %irq_idx7 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 2
  %8 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_idx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp slt i32 %9, 0
  %10 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phys_enc, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %cmp8, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.end6
  br i1 %tobool11.not, label %if.then9.cond.end17_crit_edge, label %cond.true12

if.then9.cond.end17_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end17

cond.true12:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %base14 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base14, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true12, %if.then9.cond.end17_crit_edge
  %cond18 = phi i32 [ %13, %cond.true12 ], [ -1, %if.then9.cond.end17_crit_edge ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %cond18, i32 noundef %intr_idx, ptr noundef %15) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  br i1 %tobool11.not, label %if.end19.cond.end27_crit_edge, label %cond.true22

if.end19.cond.end27_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end27

cond.true22:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %base24 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base24, align 4
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true22, %if.end19.cond.end27_crit_edge
  %cond28 = phi i32 [ %17, %cond.true22 ], [ -1, %if.end19.cond.end27_crit_edge ]
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %18 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_pp, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %sub = add i32 %21, -1
  %atomic_cnt = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 1
  %22 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %23, i32 noundef 4) #9
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %23, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %cond28, i32 noundef %intr_idx, i32 noundef %9, i32 noundef %sub, i32 noundef %25) #9
  %26 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phys_enc, align 4
  %tobool32.not = icmp eq ptr %27, null
  br i1 %tobool32.not, label %cond.end27.cond.end38_crit_edge, label %cond.true33

cond.end27.cond.end38_crit_edge:                  ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38

cond.true33:                                      ; preds = %cond.end27
  call void @__sanitizer_cov_trace_pc() #11
  %base35 = getelementptr inbounds %struct.drm_encoder, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base35, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %cond.end27.cond.end38_crit_edge
  %cond39 = phi i32 [ %29, %cond.true33 ], [ -1, %cond.end27.cond.end38_crit_edge ]
  %30 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_idx7, align 4
  %call.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp8.i.i.i = icmp slt i64 %call.i, 0
  %32 = tail call i64 @llvm.abs.i64(i64 %call.i, i1 false) #9
  %33 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %32) #13, !srcloc !467
  %34 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %32, i64 %33, i32 0) #13, !srcloc !468
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %34, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %timeout_ms.i = getelementptr inbounds %struct.dpu_encoder_wait_info, ptr %wait_info, i32 0, i32 2
  %35 = ptrtoint ptr %timeout_ms.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %timeout_ms.i, align 8
  %add.i = add i64 %cond213.i.i.i, %36
  %conv.i = trunc i64 %36 to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool13.not.i = icmp eq i32 %call2.i.i, 0
  br label %do.body.i

do.body.i:                                        ; preds = %if.end48.i.do.body.i_crit_edge, %cond.end38
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1480) #9
  %37 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %38, i32 noundef 4) #9
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  %41 = select i1 %cmp.i, i1 %tobool13.not.i, i1 false
  %__ret.0.i = select i1 %41, i32 1, i32 %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0.i)
  %tobool16.not.i = icmp eq i32 %__ret.0.i, 0
  %42 = select i1 %cmp.i, i1 true, i1 %tobool16.not.i
  br i1 %42, label %do.body.i.if.end48.i_crit_edge, label %if.then18.i

do.body.i.if.end48.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then18.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %43 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then18.i
  %__ret19.0.i = phi i32 [ %call2.i.i, %if.then18.i ], [ %call45.i, %cleanup.i ]
  %44 = ptrtoint ptr %wait_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wait_info, align 8
  %call21.i = call i32 @prepare_to_wait_event(ptr noundef %45, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %46 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i90.i = call zeroext i1 @__kasan_check_read(ptr noundef %47, i32 noundef 4) #9
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp25.i = icmp eq i32 %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.0.i)
  %tobool31.not.i = icmp eq i32 %__ret19.0.i, 0
  %50 = select i1 %cmp25.i, i1 %tobool31.not.i, i1 false
  %__ret19.1.i = select i1 %50, i32 1, i32 %__ret19.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret19.1.i)
  %tobool38.not.i = icmp eq i32 %__ret19.1.i, 0
  %51 = select i1 %cmp25.i, i1 true, i1 %tobool38.not.i
  br i1 %51, label %for.end.i, label %cleanup.i

cleanup.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call45.i = call i32 @schedule_timeout(i32 noundef %__ret19.1.i) #9
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %wait_info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %wait_info, align 8
  call void @finish_wait(ptr noundef %53, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end48.i

if.end48.i:                                       ; preds = %for.end.i, %do.body.i.if.end48.i_crit_edge
  %__ret.1.i = phi i32 [ %__ret.0.i, %do.body.i.if.end48.i_crit_edge ], [ %__ret19.1.i, %for.end.i ]
  %call50.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call50.i)
  %cmp8.i.i93.i = icmp slt i64 %call50.i, 0
  %54 = call i64 @llvm.abs.i64(i64 %call50.i, i1 false) #9
  %55 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %54) #13, !srcloc !467
  %56 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %54, i64 %55, i32 0) #13, !srcloc !468
  %asmresult10.i.i.i94.i = extractvalue { i64, i32 } %56, 0
  %div1811.i.i95.i = lshr i64 %asmresult10.i.i.i94.i, 18
  %sub210.i.i96.i = sub nsw i64 0, %div1811.i.i95.i
  %cond213.i.i97.i = select i1 %cmp8.i.i93.i, i64 %sub210.i.i96.i, i64 %div1811.i.i95.i
  %57 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef %58, i32 noundef 4) #9
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %58, align 4
  call fastcc void @trace_dpu_enc_wait_event_timeout(i32 noundef %cond39, i32 noundef %31, i32 noundef %__ret.1.i, i64 noundef %cond213.i.i97.i, i64 noundef %add.i, i32 noundef %60) #9
  %61 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i92.i = call zeroext i1 @__kasan_check_read(ptr noundef %62, i32 noundef 4) #9
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool57.not.i = icmp ne i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %cmp59.i = icmp eq i32 %__ret.1.i, 0
  %or.cond.i = select i1 %tobool57.not.i, i1 %cmp59.i, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i97.i, i64 %add.i)
  %cmp61.i = icmp slt i64 %cond213.i.i97.i, %add.i
  %or.cond89.i = select i1 %or.cond.i, i1 %cmp61.i, i1 false
  br i1 %or.cond89.i, label %if.end48.i.do.body.i_crit_edge, label %dpu_encoder_helper_wait_event_timeout.exit

if.end48.i.do.body.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

dpu_encoder_helper_wait_event_timeout.exit:       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1.i)
  %cmp42 = icmp slt i32 %__ret.1.i, 1
  br i1 %cmp42, label %if.then43, label %if.else130

if.then43:                                        ; preds = %dpu_encoder_helper_wait_event_timeout.exit
  %dpu_kms = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 8
  %65 = ptrtoint ptr %dpu_kms to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dpu_kms, align 4
  %67 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq_idx7, align 4
  %call45 = call i32 @dpu_core_irq_read(ptr noundef %66, i32 noundef %68, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  %69 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phys_enc, align 4
  %tobool115.not = icmp eq ptr %70, null
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.then43
  br i1 %tobool115.not, label %if.then47.cond.end55_crit_edge, label %cond.true50

if.then47.cond.end55_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end55

cond.true50:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  %base52 = getelementptr inbounds %struct.drm_encoder, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %base52, align 4
  br label %cond.end55

cond.end55:                                       ; preds = %cond.true50, %if.then47.cond.end55_crit_edge
  %cond56 = phi i32 [ %72, %cond.true50 ], [ -1, %if.then47.cond.end55_crit_edge ]
  %73 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq_idx7, align 4
  %75 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_pp, align 4
  %idx59 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %idx59 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %idx59, align 4
  %sub60 = add i32 %78, -1
  %79 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i201 = call zeroext i1 @__kasan_check_read(ptr noundef %80, i32 noundef 4) #9
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %cond56, i32 noundef %intr_idx, i32 noundef %74, i32 noundef %sub60, i32 noundef %82) #9
  %83 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !469
  %and.i = and i32 %83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool77.not = icmp eq i32 %and.i, 0
  br i1 %tobool77.not, label %if.then78, label %do.body94.critedge

if.then78:                                        ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #11
  call void @trace_hardirqs_off() #9
  %func.c = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 3, i32 1
  %84 = ptrtoint ptr %func.c to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %func.c, align 4
  %86 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq_idx7, align 4
  call void %85(ptr noundef %phys_enc, i32 noundef %87) #9
  call void @trace_hardirqs_on() #9
  br label %do.body94

do.body94.critedge:                               ; preds = %cond.end55
  call void @__sanitizer_cov_trace_pc() #11
  %func.c205 = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 3, i32 1
  %88 = ptrtoint ptr %func.c205 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %func.c205, align 4
  %90 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_idx7, align 4
  call void %89(ptr noundef %phys_enc, i32 noundef %91) #9
  br label %do.body94

do.body94:                                        ; preds = %do.body94.critedge, %if.then78
  %92 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !470
  %and.i.i = and i32 %92, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool102.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool102.not, label %if.then106, label %do.body94.do.end109_crit_edge, !prof !471

do.body94.do.end109_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end109

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %do.body94.do.end109_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %83) #9, !srcloc !472
  br label %cleanup

if.else:                                          ; preds = %if.then43
  br i1 %tobool115.not, label %if.else.cond.end121_crit_edge, label %cond.true116

if.else.cond.end121_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end121

cond.true116:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %base118 = getelementptr inbounds %struct.drm_encoder, ptr %70, i32 0, i32 2
  %93 = ptrtoint ptr %base118 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %base118, align 4
  br label %cond.end121

cond.end121:                                      ; preds = %cond.true116, %if.else.cond.end121_crit_edge
  %cond122 = phi i32 [ %94, %cond.true116 ], [ -1, %if.else.cond.end121_crit_edge ]
  %95 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq_idx7, align 4
  %97 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw_pp, align 4
  %idx125 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %idx125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %idx125, align 4
  %sub126 = add i32 %100, -1
  %101 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i202 = call zeroext i1 @__kasan_check_read(ptr noundef %102, i32 noundef 4) #9
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %102, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %cond122, i32 noundef %intr_idx, i32 noundef %96, i32 noundef %sub126, i32 noundef %104) #9
  br label %cleanup

if.else130:                                       ; preds = %dpu_encoder_helper_wait_event_timeout.exit
  %105 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %phys_enc, align 4
  %tobool132.not = icmp eq ptr %106, null
  br i1 %tobool132.not, label %if.else130.cond.end138_crit_edge, label %cond.true133

if.else130.cond.end138_crit_edge:                 ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end138

cond.true133:                                     ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  %base135 = getelementptr inbounds %struct.drm_encoder, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %base135 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %base135, align 4
  br label %cond.end138

cond.end138:                                      ; preds = %cond.true133, %if.else130.cond.end138_crit_edge
  %cond139 = phi i32 [ %108, %cond.true133 ], [ -1, %if.else130.cond.end138_crit_edge ]
  %109 = ptrtoint ptr %irq_idx7 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq_idx7, align 4
  %111 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %hw_pp, align 4
  %idx142 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %idx142 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %idx142, align 4
  %sub143 = add i32 %114, -1
  %115 = ptrtoint ptr %atomic_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %atomic_cnt, align 4
  %call.i.i203 = call zeroext i1 @__kasan_check_read(ptr noundef %116, i32 noundef 4) #9
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %116, align 4
  call fastcc void @trace_dpu_enc_irq_wait_success(i32 noundef %cond139, i32 noundef %intr_idx, i32 noundef %110, i32 noundef %sub143, i32 noundef %118)
  br label %cleanup

cleanup:                                          ; preds = %cond.end138, %cond.end121, %do.end109, %cond.end17, %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -11, %cond.end ], [ 0, %cond.end17 ], [ 0, %do.end109 ], [ -110, %cond.end121 ], [ 0, %cond.end138 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_read(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_irq_wait_success(i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx, i32 noundef %pp_idx, i32 noundef %atomic_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_wait_success, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_irq_wait_success, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !475
  %call42 = tail call i32 @__traceiter_dpu_enc_irq_wait_success(ptr noundef null, i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx, i32 noundef %pp_idx, i32 noundef %atomic_cnt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !476
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_wait_success, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_wait_success, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_irq_wait_success.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_irq_wait_success.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 220, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define dso_local i32 @dpu_encoder_helper_register_irq(ptr noundef %phys_enc, i32 noundef %intr_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %intr_idx)
  %cmp = icmp ugt i32 %intr_idx, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9, i32 noundef 344) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 2
  %0 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %do.end6, label %if.end27

do.end6:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %phys_enc, null
  br i1 %tobool.not, label %do.end6.cond.end23_crit_edge, label %cond.true14

do.end6.cond.end23_crit_edge:                     ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true14:                                      ; preds = %do.end6
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %6 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %7, -1
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %8 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_pp, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %cond.true14.cond.end23_crit_edge, label %cond.true16

cond.true14.cond.end23_crit_edge:                 ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end23

cond.true16:                                      ; preds = %cond.true14
  call void @__sanitizer_cov_trace_pc() #11
  %idx = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx, align 4
  %sub18 = add i32 %11, -1
  br label %cond.end23

cond.end23:                                       ; preds = %cond.true16, %cond.true14.cond.end23_crit_edge, %do.end6.cond.end23_crit_edge
  %cond12114 = phi i32 [ %sub, %cond.true16 ], [ %sub, %cond.true14.cond.end23_crit_edge ], [ -1, %do.end6.cond.end23_crit_edge ]
  %cond110113 = phi i32 [ %5, %cond.true16 ], [ %5, %cond.true14.cond.end23_crit_edge ], [ -1, %do.end6.cond.end23_crit_edge ]
  %cond24 = phi i32 [ %sub18, %cond.true16 ], [ -1, %cond.true14.cond.end23_crit_edge ], [ -1, %do.end6.cond.end23_crit_edge ]
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef 351, i32 noundef %cond110113, i32 noundef %cond12114, i32 noundef %cond24, i32 noundef %1) #12
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %dpu_kms = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 8
  %12 = ptrtoint ptr %dpu_kms to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dpu_kms, align 4
  %cb = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 3
  %call29 = tail call i32 @dpu_core_irq_register_callback(ptr noundef %13, i32 noundef %1, ptr noundef %cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end67, label %do.end34

do.end34:                                         ; preds = %if.end27
  %tobool36.not = icmp eq ptr %phys_enc, null
  br i1 %tobool36.not, label %do.end34.cond.end63_crit_edge, label %cond.true52

do.end34.cond.end63_crit_edge:                    ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.true52:                                      ; preds = %do.end34
  %14 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phys_enc, align 4
  %base39 = getelementptr inbounds %struct.drm_encoder, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %base39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base39, align 4
  %intf_idx46 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 12
  %18 = ptrtoint ptr %intf_idx46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intf_idx46, align 4
  %sub47 = add i32 %19, -1
  %hw_pp53 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 6
  %20 = ptrtoint ptr %hw_pp53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_pp53, align 4
  %tobool54.not = icmp eq ptr %21, null
  br i1 %tobool54.not, label %cond.true52.cond.end63_crit_edge, label %cond.true55

cond.true52.cond.end63_crit_edge:                 ; preds = %cond.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end63

cond.true55:                                      ; preds = %cond.true52
  call void @__sanitizer_cov_trace_pc() #11
  %idx57 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %idx57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx57, align 4
  %sub58 = add i32 %23, -1
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true55, %cond.true52.cond.end63_crit_edge, %do.end34.cond.end63_crit_edge
  %cond50120 = phi i32 [ %sub47, %cond.true55 ], [ %sub47, %cond.true52.cond.end63_crit_edge ], [ -1, %do.end34.cond.end63_crit_edge ]
  %cond43116119 = phi i32 [ %17, %cond.true55 ], [ %17, %cond.true52.cond.end63_crit_edge ], [ -1, %do.end34.cond.end63_crit_edge ]
  %cond64 = phi i32 [ %sub58, %cond.true55 ], [ -1, %cond.true52.cond.end63_crit_edge ], [ -1, %do.end34.cond.end63_crit_edge ]
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 360, i32 noundef %cond43116119, i32 noundef %cond50120, i32 noundef %cond64, ptr noundef %25) #12
  %26 = ptrtoint ptr %irq_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -22, ptr %irq_idx, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.end27
  %27 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phys_enc, align 4
  %tobool69.not = icmp eq ptr %28, null
  br i1 %tobool69.not, label %if.end67.cond.end75_crit_edge, label %cond.true70

if.end67.cond.end75_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end75

cond.true70:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %base72 = getelementptr inbounds %struct.drm_encoder, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %base72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base72, align 4
  br label %cond.end75

cond.end75:                                       ; preds = %cond.true70, %if.end67.cond.end75_crit_edge
  %cond76 = phi i32 [ %30, %cond.true70 ], [ -1, %if.end67.cond.end75_crit_edge ]
  %31 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_idx, align 4
  tail call fastcc void @trace_dpu_enc_irq_register_success(i32 noundef %cond76, i32 noundef %intr_idx, i32 noundef %32)
  br label %cleanup

cleanup:                                          ; preds = %cond.end75, %cond.end63, %cond.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %cond.end23 ], [ %call29, %cond.end63 ], [ 0, %cond.end75 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_irq_register_success(i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_register_success, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_irq_register_success, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !479
  %call42 = tail call i32 @__traceiter_dpu_enc_irq_register_success(ptr noundef null, i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !480
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_register_success, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_register_success, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_irq_register_success.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_irq_register_success.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 192, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define dso_local i32 @dpu_encoder_helper_unregister_irq(ptr noundef %phys_enc, i32 noundef %intr_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_idx = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 2
  %0 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phys_enc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %cond, i32 noundef %intr_idx, i32 noundef %1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpu_kms = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 8
  %6 = ptrtoint ptr %dpu_kms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dpu_kms, align 4
  %cb = getelementptr %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 21, i32 %intr_idx, i32 3
  %call = tail call i32 @dpu_core_irq_unregister_callback(ptr noundef %7, i32 noundef %1, ptr noundef %cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phys_enc, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.then6.cond.end14_crit_edge, label %cond.true9

if.then6.cond.end14_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.true9:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %base11 = getelementptr inbounds %struct.drm_encoder, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base11, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.true9, %if.then6.cond.end14_crit_edge
  %cond15 = phi i32 [ %11, %cond.true9 ], [ -1, %if.then6.cond.end14_crit_edge ]
  %12 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_idx, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %cond15, i32 noundef %intr_idx, i32 noundef %13, i32 noundef %call) #9
  br label %if.end17

if.end17:                                         ; preds = %cond.end14, %if.end.if.end17_crit_edge
  %14 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phys_enc, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.end17.cond.end25_crit_edge, label %cond.true20

if.end17.cond.end25_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end25

cond.true20:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %base22 = getelementptr inbounds %struct.drm_encoder, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base22, align 4
  br label %cond.end25

cond.end25:                                       ; preds = %cond.true20, %if.end17.cond.end25_crit_edge
  %cond26 = phi i32 [ %17, %cond.true20 ], [ -1, %if.end17.cond.end25_crit_edge ]
  %18 = ptrtoint ptr %irq_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_idx, align 4
  tail call fastcc void @trace_dpu_enc_irq_unregister_success(i32 noundef %cond26, i32 noundef %intr_idx, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %cond.end25, %cond.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_core_irq_unregister_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_irq_unregister_success(i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_unregister_success, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_irq_unregister_success, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !481
  %call42 = tail call i32 @__traceiter_dpu_enc_irq_unregister_success(ptr noundef null, i32 noundef %drm_id, i32 noundef %intr_idx, i32 noundef %irq_idx) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !482
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_unregister_success, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_irq_unregister_success, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_irq_unregister_success.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_irq_unregister_success.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 197, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define dso_local i32 @dpu_encoder_get_vsync_count(ptr noundef readonly %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end4_crit_edge, label %cond.end

entry.cond.end4_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end4

cond.end:                                         ; preds = %entry
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %0 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_master, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %cond.end.cond.end4_crit_edge, label %cond.true2

cond.end.cond.end4_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end4

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %vsync_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vsync_cnt, i32 noundef 4) #9
  %2 = ptrtoint ptr %vsync_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %vsync_cnt, align 4
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %cond.end.cond.end4_crit_edge, %entry.cond.end4_crit_edge
  %cond5 = phi i32 [ %3, %cond.true2 ], [ 0, %cond.end.cond.end4_crit_edge ], [ 0, %entry.cond.end4_crit_edge ]
  ret i32 %cond5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_get_linecount(ptr noundef readonly %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %cond.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.end:                                         ; preds = %entry
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %0 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_master, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %get_line_count = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 2, i32 21
  %2 = ptrtoint ptr %get_line_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_line_count, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %linecount.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %cond.end.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %linecount.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_get_hw_resources(ptr noundef readonly %drm_enc, ptr noundef %hw_res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base1 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %cond) #9
  %2 = call ptr @memset(ptr %hw_res, i32 0, i32 32)
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %3 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp13.not = icmp eq i32 %4, 0
  br i1 %cmp13.not, label %cond.end.for.end_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %get_hw_resources = getelementptr inbounds %struct.dpu_encoder_phys, ptr %6, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %get_hw_resources to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_hw_resources, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %6, ptr noundef %hw_res) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.014, 1
  %9 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %10
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_split_config(ptr noundef %phys_enc, i32 noundef %interface) local_unnamed_addr #0 align 64 {
entry:
  %cfg = alloca %struct.split_pipe_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  %0 = call ptr @memset(ptr %cfg, i32 0, i32 16)
  %hw_mdptop1 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 4
  %1 = ptrtoint ptr %hw_mdptop1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_mdptop1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phys_enc, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %cmp = icmp ne ptr %phys_enc, null
  %conv = zext i1 %cmp to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 488, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %disp_info6 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %disp_info6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %disp_info6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %cmp7.not = icmp eq i32 %6, 6
  br i1 %cmp7.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %split_role = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 10
  %7 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11 = icmp eq i32 %8, 0
  br i1 %cmp11, label %if.then13, label %land.lhs.true

if.then13:                                        ; preds = %if.end10
  %ops = getelementptr inbounds %struct.dpu_hw_mdp, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.then13.cleanup_crit_edge, label %if.then15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  call void %10(ptr noundef nonnull %2, ptr noundef nonnull %cfg) #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %cfg, align 4
  %intf_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 11
  %12 = ptrtoint ptr %intf_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intf_mode, align 4
  %mode = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mode, align 4
  %intf = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %intf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %interface, ptr %intf, align 4
  %needs_single_flush = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 2, i32 17
  %16 = ptrtoint ptr %needs_single_flush to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %needs_single_flush, align 4
  %tobool24.not = icmp eq ptr %17, null
  br i1 %tobool24.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true25

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true25:                                  ; preds = %land.lhs.true
  %call28 = tail call zeroext i1 %17(ptr noundef %phys_enc) #9
  br i1 %call28, label %if.then30, label %land.lhs.true25.if.end31_crit_edge

land.lhs.true25.if.end31_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  %split_flush_en = getelementptr inbounds %struct.split_pipe_cfg, ptr %cfg, i32 0, i32 3
  %18 = ptrtoint ptr %split_flush_en to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %split_flush_en, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true25.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge
  %19 = ptrtoint ptr %split_role to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %split_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp33 = icmp eq i32 %20, 1
  br i1 %cmp33, label %cond.end, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %if.end31
  %base37 = getelementptr inbounds %struct.drm_encoder, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %base37 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base37, align 4
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cfg, align 4, !range !483
  %25 = zext i8 %24 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %22, i32 noundef %25) #9
  %ops41 = getelementptr inbounds %struct.dpu_hw_mdp, ptr %2, i32 0, i32 4
  %26 = ptrtoint ptr %ops41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops41, align 4
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %cond.end.cleanup_crit_edge, label %if.then44

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then44:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  call void %27(ptr noundef nonnull %2, ptr noundef nonnull %cfg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %cond.end.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then15, %if.then13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_virt_runtime_resume(ptr noundef %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %enabled = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %cur_slave = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 7
  %2 = ptrtoint ptr %cur_slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_slave, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %restore = getelementptr inbounds %struct.dpu_encoder_phys, ptr %3, i32 0, i32 2, i32 20
  %4 = ptrtoint ptr %restore to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restore, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef nonnull %3) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %6 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_master, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end21_crit_edge, label %land.lhs.true11

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true11:                                  ; preds = %if.end9
  %restore14 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 20
  %8 = ptrtoint ptr %restore14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %restore14, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %land.lhs.true11.if.end21_crit_edge, label %if.then16

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef nonnull %7) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true11.if.end21_crit_edge, %if.end9.if.end21_crit_edge
  tail call fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef %drm_enc)
  br label %out

out:                                              ; preds = %if.end21, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %enc_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef readonly %drm_enc) unnamed_addr #0 align 64 {
entry:
  %dither_cfg.i = alloca %struct.dpu_hw_dither_cfg, align 8
  %vsync_cfg.i = alloca %struct.dpu_vsync_source_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_enc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false4

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef 1091) #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %2 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_master, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.59, i32 noundef 1097) #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false4
  %disp_info = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19
  %4 = ptrtoint ptr %disp_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disp_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp = icmp eq i32 %5, 10
  br i1 %cmp, label %land.lhs.true, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end12
  %hw_mdptop = getelementptr inbounds %struct.dpu_encoder_phys, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %hw_mdptop to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_mdptop, align 4
  %tobool14.not = icmp eq ptr %7, null
  br i1 %tobool14.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true15

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true15:                                  ; preds = %land.lhs.true
  %intf_audio_select = getelementptr inbounds %struct.dpu_hw_mdp, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %intf_audio_select to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %intf_audio_select, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %land.lhs.true15.if.end26_crit_edge, label %if.then19

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef nonnull %7) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %land.lhs.true15.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end12.if.end26_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %vsync_cfg.i) #9
  %10 = getelementptr inbounds i8, ptr %vsync_cfg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 36)
  %tobool1.not.i.not = icmp eq ptr %disp_info, null
  br i1 %tobool1.not.i.not, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, i32 noundef 655, i32 noundef 1, i32 noundef 0) #12
  br label %_dpu_encoder_update_vsync_source.exit

if.else.i:                                        ; preds = %if.end26
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %12 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.i = icmp ugt i32 %13, 2
  br i1 %cmp4.i, label %do.end9.i, label %if.end13.i

do.end9.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef 660, i32 noundef %13, i32 noundef 2) #12
  br label %_dpu_encoder_update_vsync_source.exit

if.end13.i:                                       ; preds = %if.else.i
  %14 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm_enc, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %kms.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kms.i, align 4
  %hw_mdp.i = getelementptr inbounds %struct.dpu_kms, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %hw_mdp.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_mdp.i, align 8
  %tobool15.not.i = icmp eq ptr %21, null
  br i1 %tobool15.not.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.64, i32 noundef 671) #12
  br label %_dpu_encoder_update_vsync_source.exit

if.end22.i:                                       ; preds = %if.end13.i
  %setup_vsync_source.i = getelementptr inbounds %struct.dpu_hw_mdp, ptr %21, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %setup_vsync_source.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %setup_vsync_source.i, align 4
  %tobool23.not.i = icmp eq ptr %23, null
  br i1 %tobool23.not.i, label %if.end22.i._dpu_encoder_update_vsync_source.exit_crit_edge, label %land.lhs.true.i

if.end22.i._dpu_encoder_update_vsync_source.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_update_vsync_source.exit

land.lhs.true.i:                                  ; preds = %if.end22.i
  %capabilities.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19, i32 1
  %24 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true.i._dpu_encoder_update_vsync_source.exit_crit_edge, label %for.cond.preheader.i

land.lhs.true.i._dpu_encoder_update_vsync_source.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_update_vsync_source.exit

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2762.not.i = icmp eq i32 %13, 0
  br i1 %cmp2762.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.preheader.i
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %idx.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx.i, align 4
  %arrayidx29.i = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %vsync_cfg.i, i32 0, i32 2, i32 0
  %30 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %exitcond.not.i = icmp eq i32 %13, 1
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.1

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.1 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 1
  %31 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.1, align 4
  %idx.i.1 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %idx.i.1, align 4
  %arrayidx29.i.1 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %vsync_cfg.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %arrayidx29.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx29.i.1, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.1, %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %36 = ptrtoint ptr %vsync_cfg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %13, ptr %vsync_cfg.i, align 4
  %is_te_using_watchdog_timer.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19, i32 4
  %37 = ptrtoint ptr %is_te_using_watchdog_timer.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_te_using_watchdog_timer.i, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool31.not.i = icmp eq i8 %38, 0
  %spec.select.i = select i1 %tobool31.not.i, i32 0, i32 15
  %39 = getelementptr inbounds %struct.dpu_vsync_source_cfg, ptr %vsync_cfg.i, i32 0, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select.i, ptr %39, align 4
  %41 = ptrtoint ptr %setup_vsync_source.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %setup_vsync_source.i, align 4
  call void %42(ptr noundef nonnull %21, ptr noundef nonnull %vsync_cfg.i) #9
  br label %_dpu_encoder_update_vsync_source.exit

_dpu_encoder_update_vsync_source.exit:            ; preds = %for.end.i, %land.lhs.true.i._dpu_encoder_update_vsync_source.exit_crit_edge, %if.end22.i._dpu_encoder_update_vsync_source.exit_crit_edge, %do.end19.i, %do.end9.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %vsync_cfg.i) #9
  %43 = ptrtoint ptr %disp_info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %disp_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %44)
  %cmp30 = icmp eq i32 %44, 6
  br i1 %cmp30, label %land.lhs.true31, label %_dpu_encoder_update_vsync_source.exit.cleanup_crit_edge

_dpu_encoder_update_vsync_source.exit.cleanup_crit_edge: ; preds = %_dpu_encoder_update_vsync_source.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true31:                                  ; preds = %_dpu_encoder_update_vsync_source.exit
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %45 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp32 = icmp eq i32 %46, 0
  br i1 %cmp32, label %do.end44, label %if.then59.critedge, !prof !471

do.end44:                                         ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1111, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then59.critedge:                               ; preds = %land.lhs.true31
  %phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5
  %47 = ptrtoint ptr %phys_encs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phys_encs, align 4
  %connector = getelementptr inbounds %struct.dpu_encoder_phys, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %connector, align 4
  %bpc60 = getelementptr inbounds %struct.drm_connector, ptr %50, i32 0, i32 20, i32 2
  %51 = ptrtoint ptr %bpc60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bpc60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %52)
  %cond.i = icmp eq i32 %52, 6
  %c0_bitdepth.i = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %dither_cfg.i, i32 0, i32 2
  %c1_bitdepth.i = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %dither_cfg.i, i32 0, i32 3
  %c2_bitdepth.i = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %dither_cfg.i, i32 0, i32 4
  %c3_bitdepth.i = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %dither_cfg.i, i32 0, i32 5
  %matrix.i = getelementptr inbounds %struct.dpu_hw_dither_cfg, ptr %dither_cfg.i, i32 0, i32 6
  %arrayidx62 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 0
  %53 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %54, null
  br i1 %tobool63.not, label %if.then59.critedge.for.inc_crit_edge, label %if.end65

if.then59.critedge.for.inc_crit_edge:             ; preds = %if.then59.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end65:                                         ; preds = %if.then59.critedge
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %dither_cfg.i) #9
  %55 = call ptr @memset(ptr %dither_cfg.i, i32 0, i32 96)
  %setup_dither.i = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %54, i32 0, i32 5, i32 8
  %56 = ptrtoint ptr %setup_dither.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %setup_dither.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end65._dpu_encoder_setup_dither.exit_crit_edge, label %if.end.i

if.end65._dpu_encoder_setup_dither.exit_crit_edge: ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_setup_dither.exit

if.end.i:                                         ; preds = %if.end65
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %c0_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 6, ptr %c0_bitdepth.i, align 4
  %59 = ptrtoint ptr %c1_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %c1_bitdepth.i, align 8
  %60 = ptrtoint ptr %c2_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 6, ptr %c2_bitdepth.i, align 4
  %61 = ptrtoint ptr %c3_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %c3_bitdepth.i, align 8
  %62 = call ptr @memcpy(ptr %matrix.i, ptr @dither_matrix, i32 64)
  call void %57(ptr noundef nonnull %54, ptr noundef nonnull %dither_cfg.i) #9
  br label %_dpu_encoder_setup_dither.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void %57(ptr noundef nonnull %54, ptr noundef null) #9
  br label %_dpu_encoder_setup_dither.exit

_dpu_encoder_setup_dither.exit:                   ; preds = %sw.default.i, %sw.bb.i, %if.end65._dpu_encoder_setup_dither.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %dither_cfg.i) #9
  br label %for.inc

for.inc:                                          ; preds = %_dpu_encoder_setup_dither.exit, %if.then59.critedge.for.inc_crit_edge
  %arrayidx62.1 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx62.1, align 4
  %tobool63.not.1 = icmp eq ptr %64, null
  br i1 %tobool63.not.1, label %for.inc.cleanup_crit_edge, label %if.end65.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end65.1:                                       ; preds = %for.inc
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %dither_cfg.i) #9
  %65 = call ptr @memset(ptr %dither_cfg.i, i32 0, i32 96)
  %setup_dither.i.1 = getelementptr inbounds %struct.dpu_hw_pingpong, ptr %64, i32 0, i32 5, i32 8
  %66 = ptrtoint ptr %setup_dither.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %setup_dither.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %67, null
  br i1 %tobool.not.i.1, label %if.end65.1._dpu_encoder_setup_dither.exit.1_crit_edge, label %if.end.i.1

if.end65.1._dpu_encoder_setup_dither.exit.1_crit_edge: ; preds = %if.end65.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_setup_dither.exit.1

if.end.i.1:                                       ; preds = %if.end65.1
  br i1 %cond.i, label %sw.bb.i.1, label %sw.default.i.1

sw.default.i.1:                                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  call void %67(ptr noundef nonnull %64, ptr noundef null) #9
  br label %_dpu_encoder_setup_dither.exit.1

sw.bb.i.1:                                        ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %c0_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 6, ptr %c0_bitdepth.i, align 4
  %69 = ptrtoint ptr %c1_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 6, ptr %c1_bitdepth.i, align 8
  %70 = ptrtoint ptr %c2_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %c2_bitdepth.i, align 4
  %71 = ptrtoint ptr %c3_bitdepth.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 6, ptr %c3_bitdepth.i, align 8
  %72 = call ptr @memcpy(ptr %matrix.i, ptr @dither_matrix, i32 64)
  call void %67(ptr noundef nonnull %64, ptr noundef nonnull %dither_cfg.i) #9
  br label %_dpu_encoder_setup_dither.exit.1

_dpu_encoder_setup_dither.exit.1:                 ; preds = %sw.bb.i.1, %sw.default.i.1, %if.end65.1._dpu_encoder_setup_dither.exit.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %dither_cfg.i) #9
  br label %cleanup

cleanup:                                          ; preds = %_dpu_encoder_setup_dither.exit.1, %for.inc.cleanup_crit_edge, %do.end44, %_dpu_encoder_update_vsync_source.exit.cleanup_crit_edge, %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_assign_crtc(ptr noundef %drm_enc, ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %enc_spinlock) #9
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %crtc6 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 10
  %0 = ptrtoint ptr %crtc6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc6, align 4
  %tobool7.not = icmp eq ptr %1, null
  br i1 %tobool7.not, label %land.rhs.if.end_crit_edge, label %do.end18, !prof !474

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end18:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1286, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end18, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %crtc31 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 10
  %2 = ptrtoint ptr %crtc31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %crtc, ptr %crtc31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %enc_spinlock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_toggle_vblank_for_crtc(ptr noundef %drm_enc, ptr noundef readnone %crtc, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_enc_vblank_cb(i32 noundef %cond, i1 noundef zeroext %enable)
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %enc_spinlock) #9
  %crtc7 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 10
  %2 = ptrtoint ptr %crtc7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc7, align 4
  %cmp8.not = icmp eq ptr %3, %crtc
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %enc_spinlock, i32 noundef %call4) #9
  br i1 %cmp8.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %4 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1236.not = icmp eq i32 %5, 0
  br i1 %cmp1236.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end20.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %if.end20.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.037
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %control_vblank_irq = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %control_vblank_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %control_vblank_irq, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %for.body.if.end20_crit_edge, label %if.then15

for.body.if.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 %9(ptr noundef %7, i1 noundef zeroext %enable) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %for.body.if.end20_crit_edge
  %inc = add nuw i32 %i.037, 1
  %10 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_phys_encs, align 4
  %cmp12 = icmp ult i32 %inc, %11
  br i1 %cmp12, label %if.end20.for.body_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_vblank_cb(i32 noundef %drm_id, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vblank_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_vblank_cb, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !484
  %call43 = tail call i32 @__traceiter_dpu_enc_vblank_cb(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %enable) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !485
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !474

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vblank_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vblank_cb, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_vblank_cb.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_vblank_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 357, ptr noundef nonnull @.str.56) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_register_frame_event_callback(ptr noundef %drm_enc, ptr noundef %frame_event_cb, ptr noundef %frame_event_cb_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool2.not = icmp eq ptr %drm_enc, null
  br i1 %tobool2.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 1326) #12
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tobool = icmp ne ptr %frame_event_cb, null
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  tail call fastcc void @trace_dpu_enc_frame_event_cb(i32 noundef %1, i1 noundef zeroext %tobool)
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 1
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %enc_spinlock) #9
  %crtc_frame_event_cb = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 14
  %2 = ptrtoint ptr %crtc_frame_event_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %frame_event_cb, ptr %crtc_frame_event_cb, align 4
  %crtc_frame_event_cb_data = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 15
  %3 = ptrtoint ptr %crtc_frame_event_cb_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %frame_event_cb_data, ptr %crtc_frame_event_cb_data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %enc_spinlock, i32 noundef %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_frame_event_cb(i32 noundef %drm_id, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_event_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_frame_event_cb, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !486
  %call43 = tail call i32 @__traceiter_dpu_enc_frame_event_cb(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %enable) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !487
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !474

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_event_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_event_cb, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_frame_event_cb.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_frame_event_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 361, ptr noundef nonnull @.str.56) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_helper_trigger_start(ptr nocapture noundef readonly %phys_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys_enc, i32 0, i32 5
  %0 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_ctl, align 4
  %ops = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void %3(ptr noundef %1) #9
  %4 = ptrtoint ptr %phys_enc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phys_enc, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.then.cond.end_crit_edge ]
  %idx = getelementptr inbounds %struct.dpu_hw_ctl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call fastcc void @trace_dpu_enc_trigger_start(i32 noundef %cond, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_trigger_start(i32 noundef %drm_id, i32 noundef %ctl_idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_start, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_trigger_start, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !488
  %call42 = tail call i32 @__traceiter_dpu_enc_trigger_start(ptr noundef null, i32 noundef %drm_id, i32 noundef %ctl_idx) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !489
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_trigger_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_trigger_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 319, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define dso_local void @dpu_encoder_trigger_kickoff_pending(ptr noundef readonly %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %0 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %capabilities = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19, i32 1
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, i32 noundef 1585) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.035
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_ctl, align 4
  %clear_pending_flush = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %clear_pending_flush to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clear_pending_flush, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %for.body.if.end7_crit_edge, label %if.then4

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %5) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.body.if.end7_crit_edge
  %8 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_master, align 4
  %cmp8 = icmp eq ptr %3, %9
  br i1 %cmp8, label %land.lhs.true, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end7
  %10 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capabilities, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true10:                                  ; preds = %land.lhs.true
  %trigger_pending = getelementptr inbounds %struct.dpu_hw_ctl, ptr %5, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %trigger_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trigger_pending, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %land.lhs.true10.for.inc_crit_edge, label %if.then13

land.lhs.true10.for.inc_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %5) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %land.lhs.true10.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %inc = add nuw i32 %i.035, 1
  %14 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_vsync_time(ptr noundef readonly %drm_enc, ptr nocapture noundef %wakeup_time) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 1665) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %cur_master.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %4 = ptrtoint ptr %cur_master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %get_line_count.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 21
  %6 = ptrtoint ptr %get_line_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_line_count.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 1620) #12
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %adjusted_mode, align 4
  %conv.i = sext i32 %9 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef 1626) #12
  br label %cleanup

if.end12.i:                                       ; preds = %if.end4.i
  %sub.i = add nsw i64 %conv.i, 999999999
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp187.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp187.i, label %if.then191.i, label %if.else197.i, !prof !474

if.then191.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv192.i = trunc i64 %sub.i to i32
  %div195.i = udiv i32 %conv192.i, %9
  br label %if.end201.i

if.else197.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %sub.i) #13, !srcloc !490
  %asmresult1.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t351.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else197.i, %if.then191.i
  %_tmp.0.off0.i = phi i32 [ %div195.i, %if.then191.i ], [ %extract.t351.i, %if.else197.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %_tmp.0.off0.i)
  %cmp205.i = icmp eq i32 %_tmp.0.off0.i, 0
  br i1 %cmp205.i, label %do.end210.i, label %if.end213.i

do.end210.i:                                      ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #11
  %call212.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.72, i32 noundef 1632) #12
  br label %cleanup

if.end213.i:                                      ; preds = %if.end201.i
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %htotal.i, align 2
  %conv214.i = zext i16 %12 to i32
  %mul215.i = mul i32 %_tmp.0.off0.i, %conv214.i
  %div216.i = udiv i32 %mul215.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %mul215.i)
  %13 = icmp ult i32 %mul215.i, 1000
  br i1 %13, label %do.end222.i, label %if.end225.i

do.end222.i:                                      ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #11
  %call224.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.72, i32 noundef 1642) #12
  br label %cleanup

if.end225.i:                                      ; preds = %if.end213.i
  %tobool226.not.i = icmp eq ptr %drm_enc, null
  br i1 %tobool226.not.i, label %if.end225.i.if.end9_crit_edge, label %cond.true227.i

if.end225.i.if.end9_crit_edge:                    ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

cond.true227.i:                                   ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #11
  %base228.i = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %14 = ptrtoint ptr %base228.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base228.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %cond.true227.i, %if.end225.i.if.end9_crit_edge
  %cond231.i = phi i32 [ %15, %cond.true227.i ], [ -1, %if.end225.i.if.end9_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.82, i32 noundef %cond231.i, i64 noundef %conv.i, i32 noundef %_tmp.0.off0.i, i32 noundef %div216.i) #9
  %16 = ptrtoint ptr %cur_master.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur_master.i, align 4
  %get_line_count = getelementptr inbounds %struct.dpu_encoder_phys, ptr %17, i32 0, i32 2, i32 21
  %18 = ptrtoint ptr %get_line_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_line_count, align 4
  %call11 = tail call i32 %19(ptr noundef %17) #9
  %vtotal12 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %vtotal12 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vtotal12, align 4
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %conv)
  %cmp.not = icmp ult i32 %call11, %conv
  %sub = select i1 %cmp.not, i32 %call11, i32 0
  %conv.pn = sub i32 %conv, %sub
  %time_to_vsync.0 = mul i32 %conv.pn, %div216.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %time_to_vsync.0)
  %cmp17 = icmp eq i32 %time_to_vsync.0, 0
  br i1 %cmp17, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef 1684, i32 noundef %conv) #12
  br label %cleanup

if.end25:                                         ; preds = %if.end9
  %call26 = tail call i64 @ktime_get() #9
  %conv27 = zext i32 %time_to_vsync.0 to i64
  %add = add i64 %call26, %conv27
  %22 = ptrtoint ptr %wakeup_time to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add, ptr %wakeup_time, align 8
  br i1 %tobool226.not.i, label %if.end25.cond.end_crit_edge, label %cond.true

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %base29 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %23 = ptrtoint ptr %base29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base29, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end25.cond.end_crit_edge
  %cond = phi i32 [ %24, %cond.true ], [ -1, %if.end25.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call26)
  %cmp8.i.i = icmp slt i64 %call26, 0
  %25 = tail call i64 @llvm.abs.i64(i64 %call26, i1 false) #9
  %26 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %25) #13, !srcloc !467
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %25, i64 %26, i32 0) #13, !srcloc !468
  %asmresult10.i.i.i = extractvalue { i64, i32 } %27, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %cmp8.i.i59 = icmp slt i64 %add, 0
  %28 = tail call i64 @llvm.abs.i64(i64 %add, i1 false) #9
  %29 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %28) #13, !srcloc !467
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %28, i64 %29, i32 0) #13, !srcloc !468
  %asmresult10.i.i.i60 = extractvalue { i64, i32 } %30, 0
  %div1811.i.i61 = lshr i64 %asmresult10.i.i.i60, 18
  %sub210.i.i62 = sub nsw i64 0, %div1811.i.i61
  %cond213.i.i63 = select i1 %cmp8.i.i59, i64 %sub210.i.i62, i64 %div1811.i.i61
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %cond, i32 noundef %call11, i32 noundef %conv, i32 noundef %time_to_vsync.0, i64 noundef %cond213.i.i, i64 noundef %cond213.i.i63) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end22, %do.end222.i, %do.end210.i, %do.end9.i, %do.end.i, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end22 ], [ 0, %cond.end ], [ -22, %do.end ], [ -22, %do.end9.i ], [ -22, %do.end210.i ], [ -22, %do.end222.i ], [ -22, %do.end.i ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_prepare_for_kickoff(ptr noundef %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_enc_prepare_kickoff(i32 noundef %cond)
  %2 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %7, ptr noundef nonnull @.str.31, i1 noundef zeroext true)
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %8 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp47.not = icmp eq i32 %9, 0
  br i1 %cmp47.not, label %if.end29.critedge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %needs_hw_reset.0.off048 = phi i1 [ %spec.select, %if.end.for.body_crit_edge ], [ false, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.049
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %prepare_for_kickoff = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 14
  %12 = ptrtoint ptr %prepare_for_kickoff to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prepare_for_kickoff, align 4
  %tobool1.not = icmp eq ptr %13, null
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %11) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %enable_state = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %enable_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp4 = icmp eq i32 %15, 4
  %spec.select = select i1 %cmp4, i1 true, i1 %needs_hw_reset.0.off048
  %inc = add nuw i32 %i.049, 1
  %16 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %tgid9 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 69
  %20 = ptrtoint ptr %tgid9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tgid9, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %21, ptr noundef nonnull @.str.31, i1 noundef zeroext false)
  %call10 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 1)
  br i1 %spec.select, label %if.then12, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then12:                                        ; preds = %for.end
  br i1 %tobool.not, label %if.then12.cond.end18_crit_edge, label %cond.true14

if.then12.cond.end18_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.true14:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %base15 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %22 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base15, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.true14, %if.then12.cond.end18_crit_edge
  %cond19 = phi i32 [ %23, %cond.true14 ], [ -1, %if.then12.cond.end18_crit_edge ]
  tail call fastcc void @trace_dpu_enc_prepare_kickoff_reset(i32 noundef %cond19)
  %24 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2250.not = icmp eq i32 %25, 0
  br i1 %cmp2250.not, label %cond.end18.if.end29_crit_edge, label %cond.end18.for.body23_crit_edge

cond.end18.for.body23_crit_edge:                  ; preds = %cond.end18
  br label %for.body23

cond.end18.if.end29_crit_edge:                    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.body23:                                       ; preds = %dpu_encoder_helper_hw_reset.exit.for.body23_crit_edge, %cond.end18.for.body23_crit_edge
  %i.151 = phi i32 [ %inc27, %dpu_encoder_helper_hw_reset.exit.for.body23_crit_edge ], [ 0, %cond.end18.for.body23_crit_edge ]
  %arrayidx25 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.151
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %hw_ctl.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %hw_ctl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw_ctl.i, align 4
  %reset.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %31, i32 0, i32 9, i32 10
  %32 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %for.body23.dpu_encoder_helper_hw_reset.exit_crit_edge, label %if.end.i

for.body23.dpu_encoder_helper_hw_reset.exit_crit_edge: ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_helper_hw_reset.exit

if.end.i:                                         ; preds = %for.body23
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %35, %cond.true.i ], [ -1, %if.end.i.cond.end.i_crit_edge ]
  %idx.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %31, i32 0, i32 2
  %36 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.107, i32 noundef %cond.i, i32 noundef %37) #9
  %38 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reset.i, align 4
  %call.i = tail call i32 %39(ptr noundef %31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %cond.end.i.if.end18.i_crit_edge, label %do.end.i

cond.end.i.if.end18.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

do.end.i:                                         ; preds = %cond.end.i
  br i1 %tobool2.not.i, label %do.end.i.cond.end14.i_crit_edge, label %cond.true9.i

do.end.i.cond.end14.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14.i

cond.true9.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %base11.i = getelementptr inbounds %struct.drm_encoder, ptr %29, i32 0, i32 2
  %40 = ptrtoint ptr %base11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base11.i, align 4
  br label %cond.end14.i

cond.end14.i:                                     ; preds = %cond.true9.i, %do.end.i.cond.end14.i_crit_edge
  %cond15.i = phi i32 [ %41, %cond.true9.i ], [ -1, %do.end.i.cond.end14.i_crit_edge ]
  %42 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idx.i, align 4
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 1512, i32 noundef %cond15.i, i32 noundef %43) #12
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %29, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %45) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %cond.end14.i, %cond.end.i.if.end18.i_crit_edge
  %enable_state.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %27, i32 0, i32 14
  %46 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %enable_state.i, align 4
  br label %dpu_encoder_helper_hw_reset.exit

dpu_encoder_helper_hw_reset.exit:                 ; preds = %if.end18.i, %for.body23.dpu_encoder_helper_hw_reset.exit_crit_edge
  %inc27 = add nuw i32 %i.151, 1
  %47 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_phys_encs, align 4
  %cmp22 = icmp ult i32 %inc27, %48
  br i1 %cmp22, label %dpu_encoder_helper_hw_reset.exit.for.body23_crit_edge, label %dpu_encoder_helper_hw_reset.exit.if.end29_crit_edge

dpu_encoder_helper_hw_reset.exit.if.end29_crit_edge: ; preds = %dpu_encoder_helper_hw_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

dpu_encoder_helper_hw_reset.exit.for.body23_crit_edge: ; preds = %dpu_encoder_helper_hw_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23

if.end29.critedge:                                ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task, align 8
  %tgid9.c = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 69
  %51 = ptrtoint ptr %tgid9.c to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tgid9.c, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %52, ptr noundef nonnull @.str.31, i1 noundef zeroext false)
  %call10.c = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 1)
  br label %if.end29

if.end29:                                         ; preds = %if.end29.critedge, %dpu_encoder_helper_hw_reset.exit.if.end29_crit_edge, %cond.end18.if.end29_crit_edge, %for.end.if.end29_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_prepare_kickoff(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_prepare_kickoff, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !491
  %call42 = tail call i32 @__traceiter_dpu_enc_prepare_kickoff(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !492
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_prepare_kickoff.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_prepare_kickoff.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 252, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define internal fastcc void @trace_tracing_mark_write(i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 1), ptr blockaddress(@trace_tracing_mark_write, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !493
  %call43 = tail call i32 @__traceiter_tracing_mark_write(ptr noundef null, i32 noundef %pid, ptr noundef %name, i1 noundef zeroext %trace_begin) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !494
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !474

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_tracing_mark_write, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_tracing_mark_write.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_tracing_mark_write.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 121, ptr noundef nonnull @.str.56) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef %sw_event) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_enc, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.83, i32 noundef 755) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %capabilities = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %idle_pc_supported = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 20
  %8 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %idle_pc_supported, align 4, !range !483
  %.fr = freeze i8 %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.fr)
  %tobool7.not = icmp ne i8 %.fr, 0
  br i1 %tobool7.not, label %if.end.cond.end_crit_edge, label %switch.early.test

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

switch.early.test:                                ; preds = %if.end
  %10 = zext i32 %sw_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sw_event, label %switch.early.test.cleanup_crit_edge [
    i32 4, label %switch.early.test.cond.end_crit_edge
    i32 3, label %switch.early.test.cond.end_crit_edge424
    i32 1, label %switch.early.test.cond.end_crit_edge425
  ]

switch.early.test.cond.end_crit_edge425:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

switch.early.test.cond.end_crit_edge424:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

switch.early.test.cond.end_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end:                                         ; preds = %switch.early.test.cond.end_crit_edge, %switch.early.test.cond.end_crit_edge424, %switch.early.test.cond.end_crit_edge425, %if.end.cond.end_crit_edge
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  %rc_state = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 22
  %13 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rc_state, align 4
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %12, i32 noundef %sw_event, i1 noundef zeroext %tobool7.not, i32 noundef %14, ptr noundef nonnull @.str.84)
  %15 = zext i32 %sw_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %sw_event, label %cond.end254 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb75
    i32 3, label %sw.bb113
    i32 4, label %sw.bb162
    i32 5, label %sw.bb206
  ]

sw.bb:                                            ; preds = %cond.end
  %delayed_off_work = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 23
  %call17 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_off_work) #9
  br i1 %call17, label %cond.end25, label %sw.bb.if.end27_crit_edge

sw.bb.if.end27_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

cond.end25:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.85, i32 noundef %17, i32 noundef 1) #9
  br label %if.end27

if.end27:                                         ; preds = %cond.end25, %sw.bb.if.end27_crit_edge
  %rc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %rc_lock, i32 noundef 0) #9
  %18 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rc_state, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %19, label %cond.end50 [
    i32 2, label %cond.end36
    i32 0, label %if.end27.if.end55_crit_edge
    i32 3, label %if.end27.if.end55_crit_edge426
  ]

if.end27.if.end55_crit_edge426:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end27.if.end55_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

cond.end36:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.86, i32 noundef %22, i32 noundef 1) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock) #9
  br label %cleanup

cond.end50:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.87, i32 noundef %24, i32 noundef 1, i32 noundef %19) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end27.if.end55_crit_edge, %if.end27.if.end55_crit_edge426
  %tobool6.not.not = xor i1 %tobool6.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp59 = icmp eq i32 %19, 3
  %or.cond = select i1 %tobool6.not.not, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_irq_control(ptr noundef nonnull %drm_enc, i1 noundef zeroext true)
  br label %if.end62

if.else61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %drm_enc, i1 noundef zeroext true)
  br label %if.end62

if.end62:                                         ; preds = %if.else61, %if.then60
  %25 = ptrtoint ptr %rc_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %rc_state, align 4
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base, align 4
  %28 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool72 = icmp ne i8 %29, 0
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %27, i32 noundef 1, i1 noundef zeroext %tobool72, i32 noundef 2, ptr noundef nonnull @.str.88)
  tail call void @mutex_unlock(ptr noundef %rc_lock) #9
  br label %cond.end271

sw.bb75:                                          ; preds = %cond.end
  %30 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp77.not = icmp eq i32 %31, 2
  br i1 %cmp77.not, label %if.end87, label %cond.end84

cond.end84:                                       ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.89, i32 noundef %33, i32 noundef 2, i32 noundef %31) #9
  br label %cleanup

if.end87:                                         ; preds = %sw.bb75
  %34 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end87.if.end99_crit_edge, label %dpu_crtc_frame_pending.exit

if.end87.if.end99_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

dpu_crtc_frame_pending.exit:                      ; preds = %if.end87
  %frame_pending.i = getelementptr inbounds %struct.dpu_crtc, ptr %35, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %frame_pending.i, i32 noundef 4) #9
  %36 = ptrtoint ptr %frame_pending.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %frame_pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp90 = icmp sgt i32 %37, 1
  br i1 %cmp90, label %cond.end97, label %dpu_crtc_frame_pending.exit.if.end99_crit_edge

dpu_crtc_frame_pending.exit.if.end99_crit_edge:   ; preds = %dpu_crtc_frame_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

cond.end97:                                       ; preds = %dpu_crtc_frame_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.90, i32 noundef %39) #9
  br label %cleanup

if.end99:                                         ; preds = %dpu_crtc_frame_pending.exit.if.end99_crit_edge, %if.end87.if.end99_crit_edge
  %wq = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 22
  %40 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wq, align 8
  %delayed_off_work100 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 23
  %idle_timeout = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 26
  %42 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idle_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %43) #9
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %delayed_off_work100, i32 noundef %call2.i) #9
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base, align 4
  %46 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool111 = icmp ne i8 %47, 0
  %48 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rc_state, align 4
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %45, i32 noundef 2, i1 noundef zeroext %tobool111, i32 noundef %49, ptr noundef nonnull @.str.91)
  br label %cond.end271

sw.bb113:                                         ; preds = %cond.end
  %delayed_off_work114 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 23
  %call115 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_off_work114) #9
  br i1 %call115, label %cond.end123, label %sw.bb113.if.end125_crit_edge

sw.bb113.if.end125_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

cond.end123:                                      ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.85, i32 noundef %51, i32 noundef 3) #9
  br label %if.end125

if.end125:                                        ; preds = %cond.end123, %sw.bb113.if.end125_crit_edge
  %rc_lock126 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %rc_lock126, i32 noundef 0) #9
  %52 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %rc_state, align 4
  %tobool6.not.not422 = xor i1 %tobool6.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp130 = icmp eq i32 %.pr, 3
  %or.cond423 = select i1 %tobool6.not.not422, i1 %cmp130, i1 false
  br i1 %or.cond423, label %cond.end.i, label %if.else132

cond.end.i:                                       ; preds = %if.end125
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.104, i32 noundef %54, i32 noundef 1) #9
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %55 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp22.not.i = icmp eq i32 %56, 0
  br i1 %cmp22.not.i, label %cond.end.i.if.end149_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.if.end149_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %if.end11.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.023.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %irq_control.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %58, i32 0, i32 2, i32 18
  %59 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irq_control.i, align 4
  %tobool6.not.i = icmp eq ptr %60, null
  br i1 %tobool6.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then7.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %60(ptr noundef %58, i1 noundef zeroext true) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %for.body.i.if.end11.i_crit_edge
  %inc.i = add nuw i32 %i.023.i, 1
  %61 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_phys_encs.i, align 4
  %cmp.i419 = icmp ult i32 %inc.i, %62
  br i1 %cmp.i419, label %if.end11.i.for.body.i_crit_edge, label %if.end11.i.if.end149_crit_edge

if.end11.i.if.end149_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else132:                                       ; preds = %if.end125
  %63 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %.pr, label %if.else132.if.end149_crit_edge [
    i32 0, label %if.else132.cond.end144_crit_edge
    i32 3, label %if.else132.cond.end144_crit_edge427
  ]

if.else132.cond.end144_crit_edge427:              ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end144

if.else132.cond.end144_crit_edge:                 ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end144

if.else132.if.end149_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

cond.end144:                                      ; preds = %if.else132.cond.end144_crit_edge, %if.else132.cond.end144_crit_edge427
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.92, i32 noundef %65, i32 noundef 3, i32 noundef %.pr) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock126) #9
  br label %cleanup

if.end149:                                        ; preds = %if.else132.if.end149_crit_edge, %if.end11.i.if.end149_crit_edge, %cond.end.i.if.end149_crit_edge
  %66 = ptrtoint ptr %rc_state to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %rc_state, align 4
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %base, align 4
  %69 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool159 = icmp ne i8 %70, 0
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %68, i32 noundef 3, i1 noundef zeroext %tobool159, i32 noundef 1, ptr noundef nonnull @.str.93)
  tail call void @mutex_unlock(ptr noundef %rc_lock126) #9
  br label %cond.end271

sw.bb162:                                         ; preds = %cond.end
  %rc_lock163 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %rc_lock163, i32 noundef 0) #9
  %71 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rc_state, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %72, label %sw.bb162.if.end193_crit_edge [
    i32 0, label %cond.end172
    i32 2, label %cond.end184
    i32 1, label %if.then192
  ]

sw.bb162.if.end193_crit_edge:                     ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

cond.end172:                                      ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.94, i32 noundef %75, i32 noundef 4) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock163) #9
  br label %cleanup

cond.end184:                                      ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.95, i32 noundef %77, i32 noundef 4, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock163) #9
  br label %cleanup

if.then192:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %drm_enc, i1 noundef zeroext false)
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %sw.bb162.if.end193_crit_edge
  %78 = ptrtoint ptr %rc_state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %rc_state, align 4
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %base, align 4
  %81 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool203 = icmp ne i8 %82, 0
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %80, i32 noundef 4, i1 noundef zeroext %tobool203, i32 noundef 0, ptr noundef nonnull @.str.96)
  tail call void @mutex_unlock(ptr noundef %rc_lock163) #9
  br label %cond.end271

sw.bb206:                                         ; preds = %cond.end
  %rc_lock207 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %rc_lock207, i32 noundef 0) #9
  %83 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rc_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %84)
  %cmp209.not = icmp eq i32 %84, 2
  br i1 %cmp209.not, label %if.end220, label %cond.end216

cond.end216:                                      ; preds = %sw.bb206
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %base, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, i32 noundef %86, i32 noundef 5, i32 noundef %84) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock207) #9
  br label %cleanup

if.end220:                                        ; preds = %sw.bb206
  %frame_busy_mask = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 13
  %87 = ptrtoint ptr %frame_busy_mask to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frame_busy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool221.not = icmp eq i32 %88, 0
  br i1 %tobool221.not, label %if.end232, label %cond.end228

cond.end228:                                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %base, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.98, i32 noundef %90, i32 noundef 5, i32 noundef 2) #9
  tail call void @mutex_unlock(ptr noundef %rc_lock207) #9
  br label %cleanup

if.end232:                                        ; preds = %if.end220
  br i1 %tobool6.not, label %if.else235, label %if.then234

if.then234:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_irq_control(ptr noundef nonnull %drm_enc, i1 noundef zeroext false)
  br label %if.end236

if.else235:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_resource_control_helper(ptr noundef nonnull %drm_enc, i1 noundef zeroext false)
  br label %if.end236

if.end236:                                        ; preds = %if.else235, %if.then234
  %91 = ptrtoint ptr %rc_state to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 3, ptr %rc_state, align 4
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %base, align 4
  %94 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool246 = icmp ne i8 %95, 0
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %93, i32 noundef 5, i1 noundef zeroext %tobool246, i32 noundef 3, ptr noundef nonnull @.str.99)
  tail call void @mutex_unlock(ptr noundef %rc_lock207) #9
  br label %cond.end271

cond.end254:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %base, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100, i32 noundef %97, i32 noundef %sw_event) #9
  %98 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base, align 4
  %100 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool264 = icmp ne i8 %101, 0
  %102 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %rc_state, align 4
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %99, i32 noundef %sw_event, i1 noundef zeroext %tobool264, i32 noundef %103, ptr noundef nonnull @.str.101)
  br label %cond.end271

cond.end271:                                      ; preds = %cond.end254, %if.end236, %if.end193, %if.end149, %if.end99, %if.end62
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %base, align 4
  %106 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %idle_pc_supported, align 4, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool274 = icmp ne i8 %107, 0
  %108 = ptrtoint ptr %rc_state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rc_state, align 4
  tail call fastcc void @trace_dpu_enc_rc(i32 noundef %105, i32 noundef %sw_event, i1 noundef zeroext %tobool274, i32 noundef %109, ptr noundef nonnull @.str.102)
  br label %cleanup

cleanup:                                          ; preds = %cond.end271, %cond.end228, %cond.end216, %cond.end184, %cond.end172, %cond.end144, %cond.end97, %cond.end84, %cond.end50, %cond.end36, %switch.early.test.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %cond.end271 ], [ 0, %cond.end216 ], [ 0, %cond.end228 ], [ 0, %cond.end172 ], [ -22, %cond.end184 ], [ 0, %cond.end144 ], [ -22, %cond.end84 ], [ 0, %cond.end97 ], [ 0, %cond.end36 ], [ -22, %cond.end50 ], [ -22, %do.end ], [ 0, %switch.early.test.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_prepare_kickoff_reset(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_prepare_kickoff_reset, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !495
  %call42 = tail call i32 @__traceiter_dpu_enc_prepare_kickoff_reset(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !496
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_prepare_kickoff_reset, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_prepare_kickoff_reset.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_prepare_kickoff_reset.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 256, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define dso_local void @dpu_encoder_kickoff(ptr noundef %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  %wakeup_time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wakeup_time) #9
  %0 = ptrtoint ptr %wakeup_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wakeup_time, align 8, !annotation !497
  %1 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 69
  %5 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %6, ptr noundef nonnull @.str.32, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_enc_kickoff(i32 noundef %cond)
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 8
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %call1 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #9
  %div = sdiv i32 5000, %call1
  %frame_done_timeout_ms = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_done_timeout_ms, i32 noundef 4) #9
  %13 = ptrtoint ptr %frame_done_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %div, ptr %frame_done_timeout_ms, align 4
  %frame_done_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #9
  %add = add i32 %call2.i, %14
  %call3 = tail call i32 @mod_timer(ptr noundef %frame_done_timer, i32 noundef %add) #9
  %enc_spinlock.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 1
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %enc_spinlock.i) #9
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %15 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp557.not.i = icmp eq i32 %16, 0
  br i1 %cmp557.not.i, label %cond.end.if.end30.i_crit_edge, label %for.body.lr.ph.i

cond.end.if.end30.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

for.body.lr.ph.i:                                 ; preds = %cond.end
  %frame_busy_mask.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pending_flush.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %pending_flush.2.i, %cleanup.i.for.body.i_crit_edge ]
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.058.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %enable_state.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %enable_state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp7.i = icmp eq i32 %20, 1
  br i1 %cmp7.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i44

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i44:                                       ; preds = %for.body.i
  %hw_ctl.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %hw_ctl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw_ctl.i, align 4
  %split_role.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 10
  %23 = ptrtoint ptr %split_role.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %split_role.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp9.not.i = icmp eq i32 %24, 2
  br i1 %cmp9.not.i, label %if.end.i44.if.end12.i_crit_edge, label %if.then11.i

if.end.i44.if.end12.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then11.i:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %i.058.i, ptr noundef %frame_busy_mask.i) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end.i44.if.end12.i_crit_edge
  %needs_single_flush.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %18, i32 0, i32 2, i32 17
  %25 = ptrtoint ptr %needs_single_flush.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %needs_single_flush.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end12.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.end12.i.if.then16.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %call15.i = tail call zeroext i1 %26(ptr noundef %18) #9
  br i1 %call15.i, label %if.else.i45, label %lor.lhs.false.i.if.then16.i_crit_edge

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end12.i.if.then16.i_crit_edge
  tail call fastcc void @_dpu_encoder_trigger_flush(ptr noundef %drm_enc, ptr noundef %18, i32 noundef 0) #9
  br label %cleanup.i

if.else.i45:                                      ; preds = %lor.lhs.false.i
  %get_pending_flush.i = getelementptr inbounds %struct.dpu_hw_ctl, ptr %22, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %get_pending_flush.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_pending_flush.i, align 4
  %tobool18.not.i = icmp eq ptr %28, null
  br i1 %tobool18.not.i, label %if.else.i45.cleanup.i_crit_edge, label %if.then19.i

if.else.i45.cleanup.i_crit_edge:                  ; preds = %if.else.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then19.i:                                      ; preds = %if.else.i45
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 %28(ptr noundef %22) #9
  %or.i = or i32 %call22.i, %pending_flush.059.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then19.i, %if.else.i45.cleanup.i_crit_edge, %if.then16.i, %for.body.i.cleanup.i_crit_edge
  %pending_flush.2.i = phi i32 [ %pending_flush.059.i, %for.body.i.cleanup.i_crit_edge ], [ %or.i, %if.then19.i ], [ %pending_flush.059.i, %if.else.i45.cleanup.i_crit_edge ], [ %pending_flush.059.i, %if.then16.i ]
  %inc.i = add nuw i32 %i.058.i, 1
  %29 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_phys_encs.i, align 4
  %cmp5.i = icmp ult i32 %inc.i, %30
  br i1 %cmp5.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_flush.2.i)
  %tobool25.not.i = icmp eq i32 %pending_flush.2.i, 0
  br i1 %tobool25.not.i, label %for.end.i.if.end30.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %cur_master.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %31 = ptrtoint ptr %cur_master.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cur_master.i, align 4
  %tobool26.not.i = icmp eq ptr %32, null
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end30.i_crit_edge, label %if.then27.i

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_trigger_flush(ptr noundef %drm_enc, ptr noundef nonnull %32, i32 noundef %pending_flush.2.i) #9
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %land.lhs.true.i.if.end30.i_crit_edge, %for.end.i.if.end30.i_crit_edge, %cond.end.if.end30.i_crit_edge
  %cur_master31.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %33 = ptrtoint ptr %cur_master31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_master31.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef 1444) #12
  br label %_dpu_encoder_kickoff_phys.exit

if.end.i.i:                                       ; preds = %if.end30.i
  %hw_pp.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %hw_pp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_pp.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %36, null
  br i1 %tobool1.not.i.i, label %do.end4.i.i, label %if.end7.i.i

do.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.116, i32 noundef 1449) #12
  br label %_dpu_encoder_kickoff_phys.exit

if.end7.i.i:                                      ; preds = %if.end.i.i
  %trigger_start.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %34, i32 0, i32 2, i32 16
  %37 = ptrtoint ptr %trigger_start.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %trigger_start.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %38, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i._dpu_encoder_kickoff_phys.exit_crit_edge, label %land.lhs.true.i.i

if.end7.i.i._dpu_encoder_kickoff_phys.exit_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_kickoff_phys.exit

land.lhs.true.i.i:                                ; preds = %if.end7.i.i
  %enable_state.i.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %34, i32 0, i32 14
  %39 = ptrtoint ptr %enable_state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %enable_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.not.i.i = icmp eq i32 %40, 1
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i._dpu_encoder_kickoff_phys.exit_crit_edge, label %if.then9.i.i

land.lhs.true.i.i._dpu_encoder_kickoff_phys.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_kickoff_phys.exit

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %38(ptr noundef nonnull %34) #9
  br label %_dpu_encoder_kickoff_phys.exit

_dpu_encoder_kickoff_phys.exit:                   ; preds = %if.then9.i.i, %land.lhs.true.i.i._dpu_encoder_kickoff_phys.exit_crit_edge, %if.end7.i.i._dpu_encoder_kickoff_phys.exit_crit_edge, %do.end4.i.i, %do.end.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %enc_spinlock.i, i32 noundef %call2.i43) #9
  %41 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp48.not = icmp eq i32 %42, 0
  br i1 %cmp48.not, label %_dpu_encoder_kickoff_phys.exit.for.end_crit_edge, label %_dpu_encoder_kickoff_phys.exit.for.body_crit_edge

_dpu_encoder_kickoff_phys.exit.for.body_crit_edge: ; preds = %_dpu_encoder_kickoff_phys.exit
  br label %for.body

_dpu_encoder_kickoff_phys.exit.for.end_crit_edge: ; preds = %_dpu_encoder_kickoff_phys.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %_dpu_encoder_kickoff_phys.exit.for.body_crit_edge
  %i.049 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %_dpu_encoder_kickoff_phys.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.049
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %handle_post_kickoff = getelementptr inbounds %struct.dpu_encoder_phys, ptr %44, i32 0, i32 2, i32 15
  %45 = ptrtoint ptr %handle_post_kickoff to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %handle_post_kickoff, align 4
  %tobool4.not = icmp eq ptr %46, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %46(ptr noundef %44) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.049, 1
  %47 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_phys_encs.i, align 4
  %cmp = icmp ult i32 %inc, %48
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %_dpu_encoder_kickoff_phys.exit.for.end_crit_edge
  %disp_info = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19
  %49 = ptrtoint ptr %disp_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %disp_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %cmp7 = icmp eq i32 %50, 6
  br i1 %cmp7, label %land.lhs.true, label %for.end.if.end22_crit_edge

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %for.end
  %call8 = call i32 @dpu_encoder_vsync_time(ptr noundef %drm_enc, ptr noundef nonnull %wakeup_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then10:                                        ; preds = %land.lhs.true
  br i1 %tobool.not, label %if.then10.cond.end16_crit_edge, label %cond.true12

if.then10.cond.end16_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end16

cond.true12:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %base13 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %51 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %base13, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true12, %if.then10.cond.end16_crit_edge
  %cond17 = phi i32 [ %52, %cond.true12 ], [ -1, %if.then10.cond.end16_crit_edge ]
  %53 = ptrtoint ptr %wakeup_time to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %wakeup_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %cmp8.i.i = icmp slt i64 %54, 0
  %55 = tail call i64 @llvm.abs.i64(i64 %54, i1 false) #9
  %56 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %55) #13, !srcloc !467
  %57 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %55, i64 %56, i32 0) #13, !srcloc !468
  %asmresult10.i.i.i = extractvalue { i64, i32 } %57, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 18
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  tail call fastcc void @trace_dpu_enc_early_kickoff(i32 noundef %cond17, i64 noundef %cond213.i.i)
  %vsync_event_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 18
  %call20 = tail call i32 @nsecs_to_jiffies(i64 noundef %54) #9
  %call21 = tail call i32 @mod_timer(ptr noundef %vsync_event_timer, i32 noundef %call20) #9
  br label %if.end22

if.end22:                                         ; preds = %cond.end16, %land.lhs.true.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %58 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task, align 8
  %tgid25 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 69
  %60 = ptrtoint ptr %tgid25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tgid25, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %61, ptr noundef nonnull @.str.32, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wakeup_time) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_kickoff(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_kickoff, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_kickoff, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !498
  %call42 = tail call i32 @__traceiter_dpu_enc_kickoff(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !499
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_kickoff, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_kickoff, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_kickoff.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_kickoff.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 248, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_early_kickoff(i32 noundef %drm_id, i64 noundef %time) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_early_kickoff, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_early_kickoff, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !500
  %call42 = tail call i32 @__traceiter_dpu_enc_early_kickoff(ptr noundef null, i32 noundef %drm_id, i64 noundef %time) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !501
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_early_kickoff, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_early_kickoff, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_early_kickoff.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_early_kickoff.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 476, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_encoder_prepare_commit(ptr noundef readonly %drm_enc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %0 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33, i32 noundef 1823) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %prepare_commit = getelementptr inbounds %struct.dpu_encoder_phys, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prepare_commit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare_commit, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %3) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.016, 1
  %6 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_setup(ptr nocapture noundef readonly %dev, ptr noundef %enc, ptr nocapture noundef readonly %disp_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms, align 4
  %call = tail call fastcc i32 @dpu_encoder_setup_display(ptr noundef %enc, ptr noundef %3, ptr noundef %disp_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end45

if.end:                                           ; preds = %entry
  %frame_done_timeout_ms = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_done_timeout_ms, i32 noundef 4) #9
  %4 = ptrtoint ptr %frame_done_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %frame_done_timeout_ms, align 4
  %frame_done_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %frame_done_timer, ptr noundef nonnull @dpu_encoder_frame_done_timeout, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @dpu_encoder_setup.__key) #9
  %5 = ptrtoint ptr %disp_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %disp_info, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %6, label %if.end.do.body16_crit_edge [
    i32 6, label %do.body5
    i32 2, label %if.then10
  ]

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %vsync_event_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 18
  tail call void @init_timer_key(ptr noundef %vsync_event_timer, ptr noundef nonnull @dpu_encoder_vsync_event_handler, i32 noundef 0, ptr noundef nonnull @.str.36, ptr noundef nonnull @dpu_encoder_setup.__key.35) #9
  br label %do.body16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %h_tile_instance = getelementptr inbounds %struct.msm_display_info, ptr %disp_info, i32 0, i32 3
  %8 = ptrtoint ptr %h_tile_instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_tile_instance, align 4
  %arrayidx11 = getelementptr %struct.msm_drm_private, ptr %1, i32 0, i32 6, i32 %9
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %dp12 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 27
  %12 = ptrtoint ptr %dp12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %dp12, align 4
  br label %do.body16

do.body16:                                        ; preds = %if.then10, %do.body5, %if.end.do.body16_crit_edge
  %delayed_off_work = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23
  tail call void @__init_work(ptr noundef %delayed_off_work, i32 noundef 0) #9
  %13 = ptrtoint ptr %delayed_off_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %delayed_off_work, align 4
  %lockdep_map = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @dpu_encoder_setup.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry23 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23, i32 0, i32 1
  %14 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dpu_encoder_off_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 23, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.40, ptr noundef nonnull @dpu_encoder_setup.__key.39) #9
  %idle_timeout = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 26
  %17 = ptrtoint ptr %idle_timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 58, ptr %idle_timeout, align 4
  %vsync_event_work = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 24
  %18 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 24, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 0, ptr %18, align 4
  %20 = ptrtoint ptr %vsync_event_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %vsync_event_work, ptr %vsync_event_work, align 4
  %prev.i80 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 24, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i80 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %vsync_event_work, ptr %prev.i80, align 4
  %func37 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 24, i32 1
  %22 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dpu_encoder_vsync_event_work_handler, ptr %func37, align 4
  %disp_info40 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %enc, i32 0, i32 19
  %23 = call ptr @memcpy(ptr %disp_info40, ptr %disp_info, i32 24)
  %tobool41.not = icmp eq ptr %enc, null
  br i1 %tobool41.not, label %do.body16.cond.end_crit_edge, label %cond.true

do.body16.cond.end_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %base42 = getelementptr inbounds %struct.drm_encoder, ptr %enc, i32 0, i32 2
  %24 = ptrtoint ptr %base42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base42, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body16.cond.end_crit_edge
  %cond = phi i32 [ %25, %cond.true ], [ -1, %do.body16.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %cond) #9
  br label %cleanup

do.end45:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef 2148) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %cond.end
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dpu_encoder_setup_display(ptr noundef %dpu_enc, ptr noundef %dpu_kms, ptr nocapture noundef readonly %disp_info) unnamed_addr #0 align 64 {
entry:
  %phys_params = alloca %struct.dpu_enc_phys_init_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phys_params) #9
  %0 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %phys_params, i32 0, i32 3
  %1 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %phys_params, i32 0, i32 4
  %tobool.not = icmp eq ptr %dpu_enc, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef 1988, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %phys_params, i32 0, i32 5
  %3 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %phys_params, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dpu_enc_phys_init_params, ptr %phys_params, i32 0, i32 1
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 6
  %5 = ptrtoint ptr %cur_master to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %cur_master, align 4
  %6 = getelementptr inbounds i8, ptr %phys_params, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = ptrtoint ptr %phys_params to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dpu_kms, ptr %phys_params, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dpu_enc, ptr %4, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dpu_encoder_parent_ops, ptr %3, align 4
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %enc_spinlock, ptr %2, align 4
  %12 = ptrtoint ptr %disp_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %disp_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch.selectcmp = icmp eq i32 %13, 2
  %switch.select = select i1 %switch.selectcmp, i32 10, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %switch.selectcmp196 = icmp eq i32 %13, 6
  %switch.select197 = select i1 %switch.selectcmp196, i32 1, i32 %switch.select
  %num_of_h_tiles = getelementptr inbounds %struct.msm_display_info, ptr %disp_info, i32 0, i32 2
  %14 = ptrtoint ptr %num_of_h_tiles to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_of_h_tiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %do.end18, label %if.end.if.end24_crit_edge, !prof !471

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2009, i32 noundef 9, ptr noundef null) #9
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %if.end.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %16 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body36, label %if.then34

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %num_of_h_tiles to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_of_h_tiles, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.121, i32 noundef %18) #9
  br label %do.end53

do.body36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_setup_display.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_setup_display, %if.then46)) #9
          to label %do.end53 [label %if.then46], !srcloc !473

if.then46:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %num_of_h_tiles to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_of_h_tiles, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_setup_display.__UNIQUE_ID_ddebug477, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.120, i32 noundef 2011, i32 noundef %20) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then46, %do.body36, %if.then34
  %capabilities = getelementptr inbounds %struct.msm_display_info, ptr %disp_info, i32 0, i32 1
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capabilities, align 4
  %23 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %do.end53.if.end61_crit_edge, label %if.then58

do.end53.if.end61_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then58:                                        ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  %catalog = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 3
  %25 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %catalog, align 8
  %caps = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %caps, align 4
  %has_idle_pc = getelementptr inbounds %struct.dpu_caps, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %has_idle_pc to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_idle_pc, align 2, !range !483
  %idle_pc_supported = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 20
  %31 = ptrtoint ptr %idle_pc_supported to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %idle_pc_supported, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %do.end53.if.end61_crit_edge
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %32 = ptrtoint ptr %num_of_h_tiles to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_of_h_tiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp63224.not = icmp eq i32 %33, 0
  br i1 %cmp63224.not, label %if.end61.for.cond142.preheader_crit_edge, label %for.body.lr.ph

if.end61.for.cond142.preheader_crit_edge:         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond142.preheader

for.body.lr.ph:                                   ; preds = %if.end61
  %catalog106 = getelementptr inbounds %struct.dpu_kms, ptr %dpu_kms, i32 0, i32 3
  %base1.i = getelementptr inbounds %struct.drm_encoder, ptr %dpu_enc, i32 0, i32 2
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 4
  %cur_slave.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 7
  br label %for.body

for.cond142.preheader:                            ; preds = %if.end141.for.cond142.preheader_crit_edge, %cond.end137, %if.end120.thread, %if.end61.for.cond142.preheader_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end61.for.cond142.preheader_crit_edge ], [ -22, %if.end120.thread ], [ %retval.0.i208218, %cond.end137 ], [ 0, %if.end141.for.cond142.preheader_crit_edge ]
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 4
  %34 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp143229.not = icmp eq i32 %35, 0
  br i1 %cmp143229.not, label %for.cond142.preheader.for.end149_crit_edge, label %for.cond142.preheader.for.body145_crit_edge

for.cond142.preheader.for.body145_crit_edge:      ; preds = %for.cond142.preheader
  br label %for.body145

for.cond142.preheader.for.end149_crit_edge:       ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.body:                                         ; preds = %if.end141.for.body_crit_edge, %for.body.lr.ph
  %36 = phi i32 [ %33, %for.body.lr.ph ], [ %90, %if.end141.for.body_crit_edge ]
  %i.0225 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end141.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_display_info, ptr %disp_info, i32 0, i32 3, i32 %i.0225
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp69 = icmp ugt i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0225)
  %cmp72 = icmp eq i32 %i.0225, 0
  %. = select i1 %cmp72, i32 1, i32 2
  %.sink = select i1 %cmp69, i32 %., i32 0
  %39 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %40 = load i32, ptr @__drm_debug, align 4
  %and.i203 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i203)
  %tobool.i204.not = icmp eq i32 %and.i203, 0
  br i1 %tobool.i204.not, label %do.body86, label %if.then83

if.then83:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %0, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.124, i32 noundef %i.0225, i32 noundef %38, i32 noundef %42) #9
  br label %do.end105

do.body86:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_encoder_setup_display.__UNIQUE_ID_ddebug478, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_encoder_setup_display, %if.then98)) #9
          to label %do.end105 [label %if.then98], !srcloc !473

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %0, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_encoder_setup_display.__UNIQUE_ID_ddebug478, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120, i32 noundef 2037, i32 noundef %i.0225, i32 noundef %38, i32 noundef %44) #9
  br label %do.end105

do.end105:                                        ; preds = %if.then98, %do.body86, %if.then83
  %45 = ptrtoint ptr %catalog106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %catalog106, align 8
  %intf_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %intf_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %intf_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp17.not.i = icmp eq i32 %48, 0
  br i1 %cmp17.not.i, label %do.end105.dpu_encoder_get_intf.exit.thread_crit_edge, label %for.body.lr.ph.i

do.end105.dpu_encoder_get_intf.exit.thread_crit_edge: ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_get_intf.exit.thread

for.body.lr.ph.i:                                 ; preds = %do.end105
  %intf.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %46, i32 0, i32 15
  %49 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %intf.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %type1.i = getelementptr %struct.dpu_intf_cfg, ptr %50, i32 %i.018.i, i32 5
  %51 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %switch.select197)
  %cmp2.i = icmp eq i32 %52, %switch.select197
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %controller_id5.i = getelementptr %struct.dpu_intf_cfg, ptr %50, i32 %i.018.i, i32 6
  %53 = ptrtoint ptr %controller_id5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %controller_id5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %38)
  %cmp6.i = icmp eq i32 %54, %38
  br i1 %cmp6.i, label %dpu_encoder_get_intf.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %48
  br i1 %exitcond.not.i, label %for.inc.i.dpu_encoder_get_intf.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.dpu_encoder_get_intf.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_get_intf.exit.thread

dpu_encoder_get_intf.exit.thread:                 ; preds = %for.inc.i.dpu_encoder_get_intf.exit.thread_crit_edge, %do.end105.dpu_encoder_get_intf.exit.thread_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %1, align 4
  br label %if.end120.thread

dpu_encoder_get_intf.exit:                        ; preds = %land.lhs.true.i
  %id.i = getelementptr %struct.dpu_intf_cfg, ptr %50, i32 %i.018.i, i32 1
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %57)
  %cmp109 = icmp eq i32 %57, 8
  br i1 %cmp109, label %dpu_encoder_get_intf.exit.if.end120.thread_crit_edge, label %cond.end.i

dpu_encoder_get_intf.exit.if.end120.thread_crit_edge: ; preds = %dpu_encoder_get_intf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end120.thread

if.end120.thread:                                 ; preds = %dpu_encoder_get_intf.exit.if.end120.thread_crit_edge, %dpu_encoder_get_intf.exit.thread
  %59 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %base1.i, align 4
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120, i32 noundef 2044, i32 noundef %60, i32 noundef %switch.select197, i32 noundef %38) #12
  br label %for.cond142.preheader

cond.end.i:                                       ; preds = %dpu_encoder_get_intf.exit
  %61 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %capabilities, align 4
  %63 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base1.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %64) #9
  %65 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_phys_encs.i, align 4
  %67 = add i32 %66, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %67)
  %cmp.i = icmp ult i32 %67, -4
  br i1 %cmp.i, label %cond.end8.i, label %if.end.i

cond.end8.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %base1.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.135, i32 noundef 1934, i32 noundef %69, i32 noundef %66) #12
  br label %cond.end137

if.end.i:                                         ; preds = %cond.end.i
  %and.i206 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool11.not.i = icmp eq i32 %and.i206, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end39.i_crit_edge, label %if.then12.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

if.then12.i:                                      ; preds = %if.end.i
  %call13.i = call ptr @dpu_encoder_phys_vid_init(ptr noundef nonnull %phys_params) #9
  %tobool.not.i.i = icmp eq ptr %call13.i, null
  %cmp.i.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %cond.end26.i, label %if.end36.i

cond.end26.i:                                     ; preds = %if.then12.i
  %70 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base1.i, align 4
  %72 = ptrtoint ptr %call13.i to i32
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef 1943, i32 noundef %71, i32 noundef %72) #12
  br i1 %tobool.not.i.i, label %cond.end26.i.cond.end137_crit_edge, label %cond.end26.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge

cond.end26.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge: ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_virt_add_phys_encs.exit

cond.end26.i.cond.end137_crit_edge:               ; preds = %cond.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end137

if.end36.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_phys_encs.i, align 4
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 5, i32 %74
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call13.i, ptr %arrayidx.i, align 4
  %76 = load i32, ptr %num_phys_encs.i, align 4
  %inc.i207 = add i32 %76, 1
  store i32 %inc.i207, ptr %num_phys_encs.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end36.i, %if.end.i.if.end39.i_crit_edge
  %enc.0.i = phi ptr [ %call13.i, %if.end36.i ], [ null, %if.end.i.if.end39.i_crit_edge ]
  %and40.i = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %if.end39.i.if.end72.i_crit_edge, label %if.then42.i

if.end39.i.if.end72.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72.i

if.then42.i:                                      ; preds = %if.end39.i
  %call43.i = call ptr @dpu_encoder_phys_cmd_init(ptr noundef nonnull %phys_params) #9
  %tobool.not.i107.i = icmp eq ptr %call43.i, null
  %cmp.i108.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i109.i = or i1 %tobool.not.i107.i, %cmp.i108.i
  br i1 %spec.select.i109.i, label %cond.end56.i, label %if.end66.i

cond.end56.i:                                     ; preds = %if.then42.i
  %77 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base1.i, align 4
  %79 = ptrtoint ptr %call43.i to i32
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.135, i32 noundef 1956, i32 noundef %78, i32 noundef %79) #12
  br i1 %tobool.not.i107.i, label %cond.end56.i.cond.end137_crit_edge, label %cond.end56.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge

cond.end56.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge: ; preds = %cond.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_virt_add_phys_encs.exit

cond.end56.i.cond.end137_crit_edge:               ; preds = %cond.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end137

if.end66.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_phys_encs.i, align 4
  %arrayidx69.i = getelementptr %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 5, i32 %81
  %82 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call43.i, ptr %arrayidx69.i, align 4
  %83 = load i32, ptr %num_phys_encs.i, align 4
  %inc71.i = add i32 %83, 1
  store i32 %inc71.i, ptr %num_phys_encs.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.end66.i, %if.end39.i.if.end72.i_crit_edge
  %enc.1.i = phi ptr [ %call43.i, %if.end66.i ], [ %enc.0.i, %if.end39.i.if.end72.i_crit_edge ]
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp73.i = icmp eq i32 %85, 2
  %cur_slave.i.cur_master = select i1 %cmp73.i, ptr %cur_slave.i, ptr %cur_master
  %86 = ptrtoint ptr %cur_slave.i.cur_master to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %enc.1.i, ptr %cur_slave.i.cur_master, align 4
  br label %if.end141

dpu_encoder_virt_add_phys_encs.exit:              ; preds = %cond.end56.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge, %cond.end26.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge
  %retval.0.i208 = phi i32 [ %72, %cond.end26.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge ], [ %79, %cond.end56.i.dpu_encoder_virt_add_phys_encs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i208)
  %tobool125.not = icmp eq i32 %retval.0.i208, 0
  br i1 %tobool125.not, label %dpu_encoder_virt_add_phys_encs.exit.if.end141_crit_edge, label %dpu_encoder_virt_add_phys_encs.exit.cond.end137_crit_edge

dpu_encoder_virt_add_phys_encs.exit.cond.end137_crit_edge: ; preds = %dpu_encoder_virt_add_phys_encs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end137

dpu_encoder_virt_add_phys_encs.exit.if.end141_crit_edge: ; preds = %dpu_encoder_virt_add_phys_encs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

cond.end137:                                      ; preds = %dpu_encoder_virt_add_phys_encs.exit.cond.end137_crit_edge, %cond.end56.i.cond.end137_crit_edge, %cond.end26.i.cond.end137_crit_edge, %cond.end8.i
  %retval.0.i208218 = phi i32 [ -22, %cond.end8.i ], [ -22, %cond.end56.i.cond.end137_crit_edge ], [ -22, %cond.end26.i.cond.end137_crit_edge ], [ %retval.0.i208, %dpu_encoder_virt_add_phys_encs.exit.cond.end137_crit_edge ]
  %87 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base1.i, align 4
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.120, i32 noundef 2053, i32 noundef %88) #12
  br label %for.cond142.preheader

if.end141:                                        ; preds = %dpu_encoder_virt_add_phys_encs.exit.if.end141_crit_edge, %if.end72.i
  %inc = add nuw i32 %i.0225, 1
  %89 = ptrtoint ptr %num_of_h_tiles to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_of_h_tiles, align 4
  %cmp63 = icmp ult i32 %inc, %90
  br i1 %cmp63, label %if.end141.for.body_crit_edge, label %if.end141.for.cond142.preheader_crit_edge

if.end141.for.cond142.preheader_crit_edge:        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond142.preheader

if.end141.for.body_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body145:                                      ; preds = %for.body145.for.body145_crit_edge, %for.cond142.preheader.for.body145_crit_edge
  %i.1230 = phi i32 [ %inc148, %for.body145.for.body145_crit_edge ], [ 0, %for.cond142.preheader.for.body145_crit_edge ]
  %arrayidx146 = getelementptr %struct.dpu_encoder_virt, ptr %dpu_enc, i32 0, i32 5, i32 %i.1230
  %91 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx146, align 4
  %vsync_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %92, i32 0, i32 16
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %vsync_cnt, i32 noundef 4) #9
  %93 = ptrtoint ptr %vsync_cnt to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 0, ptr %vsync_cnt, align 4
  %underrun_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %92, i32 0, i32 17
  %call.i.i202 = call zeroext i1 @__kasan_check_write(ptr noundef %underrun_cnt, i32 noundef 4) #9
  %94 = ptrtoint ptr %underrun_cnt to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile i32 0, ptr %underrun_cnt, align 4
  %inc148 = add nuw i32 %i.1230, 1
  %95 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %num_phys_encs, align 4
  %cmp143 = icmp ult i32 %inc148, %96
  br i1 %cmp143, label %for.body145.for.body145_crit_edge, label %for.body145.for.end149_crit_edge

for.body145.for.end149_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end149

for.body145.for.body145_crit_edge:                ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body145

for.end149:                                       ; preds = %for.body145.for.end149_crit_edge, %for.cond142.preheader.for.end149_crit_edge
  call void @mutex_unlock(ptr noundef %enc_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end149, %do.end
  %retval.0 = phi i32 [ %ret.0.lcssa, %for.end149 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phys_params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_frame_done_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -280
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.142, i32 noundef 2075) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_busy_mask = getelementptr i8, ptr %t, i32 -16
  %2 = ptrtoint ptr %frame_busy_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_busy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.then4_crit_edge, label %lor.lhs.false

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.end
  %crtc_frame_event_cb = getelementptr i8, ptr %t, i32 -12
  %4 = ptrtoint ptr %crtc_frame_event_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc_frame_event_cb, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %if.else

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.end.if.then4_crit_edge
  %tobool5.not = icmp eq ptr %add.ptr, null
  br i1 %tobool5.not, label %if.then4.cond.end_crit_edge, label %cond.true

if.then4.cond.end_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %base6 = getelementptr i8, ptr %t, i32 -268
  %6 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then4.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %if.then4.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.143, i32 noundef %cond, i32 noundef %3) #9
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %frame_done_timeout_ms = getelementptr i8, ptr %t, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_done_timeout_ms, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !502
  tail call void @llvm.prefetch.p0(ptr %frame_done_timeout_ms, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %frame_done_timeout_ms) #9, !srcloc !503
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool10.not = icmp eq i32 %asmresult.i.i, 0
  %tobool12.not = icmp eq ptr %add.ptr, null
  br i1 %tobool10.not, label %if.then11, label %do.end23

if.then11:                                        ; preds = %if.else
  br i1 %tobool12.not, label %if.then11.cond.end17_crit_edge, label %cond.true13

if.then11.cond.end17_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end17

cond.true13:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %base14 = getelementptr i8, ptr %t, i32 -268
  %9 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base14, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true13, %if.then11.cond.end17_crit_edge
  %cond18 = phi i32 [ %10, %cond.true13 ], [ -1, %if.then11.cond.end17_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.144, i32 noundef %cond18) #9
  br label %cleanup

do.end23:                                         ; preds = %if.else
  br i1 %tobool12.not, label %cond.end39.critedge, label %cond.true26

cond.true26:                                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %base28 = getelementptr i8, ptr %t, i32 -268
  %11 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base28, align 4
  %call33.c59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.142, i32 noundef 2088, i32 noundef %12) #12
  %13 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base28, align 4
  br label %cond.end39

cond.end39.critedge:                              ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #11
  %call33.c = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.142, i32 noundef 2088, i32 noundef -1) #12
  br label %cond.end39

cond.end39:                                       ; preds = %cond.end39.critedge, %cond.true26
  %cond40 = phi i32 [ %14, %cond.true26 ], [ -1, %cond.end39.critedge ]
  tail call fastcc void @trace_dpu_enc_frame_done_timeout(i32 noundef %cond40)
  %15 = ptrtoint ptr %crtc_frame_event_cb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crtc_frame_event_cb, align 4
  %crtc_frame_event_cb_data = getelementptr i8, ptr %t, i32 -8
  %17 = ptrtoint ptr %crtc_frame_event_cb_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtc_frame_event_cb_data, align 4
  tail call void %16(ptr noundef %18, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end39, %cond.end17, %cond.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_vsync_event_handler(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -328
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %crtc = getelementptr i8, ptr %t, i32 -276
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.148, i32 noundef 1708) #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp = icmp ugt i32 %5, 7
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.148, i32 noundef 1715) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %arrayidx = getelementptr %struct.msm_drm_private, ptr %7, i32 0, i32 27, i32 %5
  %tobool15.not = icmp eq ptr %arrayidx, null
  br i1 %tobool15.not, label %do.end19, label %if.end24

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.148, i32 noundef 1721, i32 noundef %5) #12
  br label %cleanup

if.end24:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 @del_timer(ptr noundef %t) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end19, %do.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_off_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -500
  %call = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %add.ptr, i32 noundef 5)
  %crtc_frame_event_cb28.i = getelementptr i8, ptr %work, i32 -232
  %0 = ptrtoint ptr %crtc_frame_event_cb28.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc_frame_event_cb28.i, align 4
  %tobool29.not.i = icmp eq ptr %1, null
  br i1 %tobool29.not.i, label %entry.dpu_encoder_frame_done_callback.exit_crit_edge, label %if.then30.i

entry.dpu_encoder_frame_done_callback.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_frame_done_callback.exit

if.then30.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %crtc_frame_event_cb_data32.i = getelementptr i8, ptr %work, i32 -228
  %2 = ptrtoint ptr %crtc_frame_event_cb_data32.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc_frame_event_cb_data32.i, align 4
  tail call void %1(ptr noundef %3, i32 noundef 8) #9
  br label %dpu_encoder_frame_done_callback.exit

dpu_encoder_frame_done_callback.exit:             ; preds = %if.then30.i, %entry.dpu_encoder_frame_done_callback.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_vsync_event_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %wakeup_time = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -600
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %wakeup_time) #9
  %0 = ptrtoint ptr %wakeup_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %wakeup_time, align 8, !annotation !497
  %call = call i32 @dpu_encoder_vsync_time(ptr noundef %add.ptr, ptr noundef nonnull %wakeup_time)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %add.ptr, null
  br i1 %tobool2.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %base4 = getelementptr i8, ptr %work, i32 -588
  %1 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %3 = ptrtoint ptr %wakeup_time to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wakeup_time, align 8
  tail call fastcc void @trace_dpu_enc_vsync_event_work(i32 noundef %cond, i64 noundef %4)
  %vsync_event_timer = getelementptr i8, ptr %work, i32 -272
  %call6 = tail call i32 @nsecs_to_jiffies(i64 noundef %4) #9
  %call7 = tail call i32 @mod_timer(ptr noundef %vsync_event_timer, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %wakeup_time) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_destroy(ptr noundef %drm_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.155, i32 noundef 449) #12
  br label %cleanup

cond.end:                                         ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %1) #9
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %cond.end.if.end29_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.if.end29_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.056
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %destroy = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %destroy, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.body.if.end11_crit_edge, label %if.then5

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %5) #9
  %8 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys_encs, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %num_phys_encs, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %for.body.if.end11_crit_edge
  %inc = add nuw i32 %i.056, 1
  %11 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %for.end.if.end29_crit_edge, label %cond.end25

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

cond.end25:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base3, align 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, i32 noundef 470, i32 noundef %14, i32 noundef %12) #12
  br label %if.end29

if.end29:                                         ; preds = %cond.end25, %for.end.if.end29_crit_edge, %cond.end.if.end29_crit_edge
  %15 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %num_phys_encs, align 4
  tail call void @mutex_unlock(ptr noundef %enc_lock) #9
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %drm_enc) #9
  tail call void @mutex_destroy(ptr noundef %enc_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_encoder_init(ptr noundef %dev, i32 noundef %drm_enc_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 644, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @dpu_encoder_funcs, i32 noundef %drm_enc_mode, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %call.i) #9
  %4 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dpu_encoder_helper_funcs, ptr %helper_private.i, align 4
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %enc_spinlock, ptr noundef nonnull @.str.44, ptr noundef nonnull @dpu_encoder_init.__key, i16 noundef signext 3) #9
  %enabled = getelementptr inbounds %struct.dpu_encoder_virt, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %enabled, align 4
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %enc_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @dpu_encoder_init.__key.45) #9
  %rc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %call.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %rc_lock, ptr noundef nonnull @.str.48, ptr noundef nonnull @dpu_encoder_init.__key.47) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then5 ], [ %call.i, %if.end8 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_wait_for_event(ptr noundef readonly %drm_enc, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.49, i32 noundef 2192) #12
  br label %cleanup32

cond.end:                                         ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %1) #9
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55.not = icmp eq i32 %3, 0
  br i1 %cmp55.not, label %cond.end.cleanup32_crit_edge, label %for.body.lr.ph

cond.end.cleanup32_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.body.lr.ph:                                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %switch = icmp ult i32 %event, 3
  br i1 %switch, label %for.body.lr.ph.for.body_crit_edge, label %cond.end18

for.body.lr.ph.for.body_crit_edge:                ; preds = %for.body.lr.ph
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.lr.ph.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.056
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %event, label %sw.bb6 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %wait_for_commit_done = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 11
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %wait_for_tx_complete = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 12
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %wait_for_vblank = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 13
  br label %sw.epilog

cond.end18:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base3, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef 2213, i32 noundef %8, i32 noundef %event) #12
  br label %cleanup32

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %sw.bb
  %fn_wait.0.in = phi ptr [ %wait_for_vblank, %sw.bb6 ], [ %wait_for_tx_complete, %sw.bb4 ], [ %wait_for_commit_done, %sw.bb ]
  %9 = ptrtoint ptr %fn_wait.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %fn_wait.0 = load ptr, ptr %fn_wait.0.in, align 4
  %tobool21.not = icmp eq ptr %fn_wait.0, null
  br i1 %tobool21.not, label %sw.epilog.for.inc_crit_edge, label %if.then22

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then22:                                        ; preds = %sw.epilog
  %10 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 69
  %14 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %15, ptr noundef nonnull @.str.53, i1 noundef zeroext true)
  %call24 = tail call i32 %fn_wait.0(ptr noundef %5) #9
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %tgid27 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 69
  %18 = ptrtoint ptr %tgid27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tgid27, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %19, ptr noundef nonnull @.str.53, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool28.not = icmp eq i32 %call24, 0
  br i1 %tobool28.not, label %if.then22.for.inc_crit_edge, label %if.then22.cleanup32_crit_edge

if.then22.cleanup32_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %sw.epilog.for.inc_crit_edge
  %inc = add nuw i32 %i.056, 1
  %20 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup32_crit_edge

for.inc.cleanup32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup32

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup32:                                        ; preds = %for.inc.cleanup32_crit_edge, %if.then22.cleanup32_crit_edge, %cond.end18, %cond.end.cleanup32_crit_edge, %do.end
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %cond.end18 ], [ 0, %cond.end.cleanup32_crit_edge ], [ 0, %for.inc.cleanup32_crit_edge ], [ %call24, %if.then22.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_encoder_get_intf_mode(ptr noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encoder, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.54, i32 noundef 2234) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 6
  %0 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_master, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %intf_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %intf_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intf_mode, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 4
  %4 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %if.then7

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 5
  %6 = ptrtoint ptr %phys_encs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys_encs, align 4
  %intf_mode8 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %intf_mode8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %intf_mode8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end5.cleanup_crit_edge, %if.then3, %do.end
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %9, %if.then7 ], [ 0, %do.end ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_wait_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_register_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_irq_unregister_success(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_vblank_cb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_event_cb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_trigger_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_wait_event_timeout(i32 noundef %drm_id, i32 noundef %irq_idx, i32 noundef %rc, i64 noundef %time, i64 noundef %expected_time, i32 noundef %atomic_cnt) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_wait_event_timeout, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_wait_event_timeout, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !505
  %call42 = tail call i32 @__traceiter_dpu_enc_wait_event_timeout(ptr noundef null, i32 noundef %drm_id, i32 noundef %irq_idx, i32 noundef %rc, i64 noundef %time, i64 noundef %expected_time, i32 noundef %atomic_cnt) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !506
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_wait_event_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_wait_event_timeout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_wait_event_timeout.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_wait_event_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 531, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @__traceiter_dpu_enc_wait_event_timeout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_prepare_kickoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_tracing_mark_write(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_rc(i32 noundef %drm_id, i32 noundef %sw_event, i1 noundef zeroext %idle_pc_supported, i32 noundef %rc_state, ptr noundef %stage) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_rc, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !507
  %call43 = tail call i32 @__traceiter_dpu_enc_rc(ptr noundef null, i32 noundef %drm_id, i32 noundef %sw_event, i1 noundef zeroext %idle_pc_supported, i32 noundef %rc_state, ptr noundef %stage) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !508
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !474

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_rc.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_rc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 389, ptr noundef nonnull @.str.56) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_irq_control(ptr noundef readonly %drm_enc, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.103, i32 noundef 696) #12
  br label %cleanup

cond.end:                                         ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base3, align 4
  %conv = zext i1 %enable to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.104, i32 noundef %1, i32 noundef %conv) #9
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %cond.end.cleanup_crit_edge, label %cond.end.for.body_crit_edge

cond.end.for.body_crit_edge:                      ; preds = %cond.end
  br label %for.body

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %cond.end.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %if.end11.for.body_crit_edge ], [ 0, %cond.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %irq_control = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 2, i32 18
  %6 = ptrtoint ptr %irq_control to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_control, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.body.if.end11_crit_edge, label %if.then7

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %7(ptr noundef %5, i1 noundef zeroext %enable) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %for.body.if.end11_crit_edge
  %inc = add nuw i32 %i.023, 1
  %8 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_resource_control_helper(ptr noundef readonly %drm_enc, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_enc, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms, align 4
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call fastcc void @trace_dpu_enc_rc_helper(i32 noundef %cond, i1 noundef zeroext %enable)
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %8 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_master, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %do.end, label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 726) #12
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %pdev = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev9, i32 noundef 4) #9
  br i1 %tobool.not, label %do.end.i, label %cond.end.i

do.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.103, i32 noundef 696) #12
  br label %cleanup

cond.end.i:                                       ; preds = %if.then8
  %base3.i = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %12 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base3.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.104, i32 noundef %13, i32 noundef 1) #9
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %14 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22.not.i = icmp eq i32 %15, 0
  br i1 %cmp22.not.i, label %cond.end.i.cleanup_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %if.end11.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.023.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %irq_control.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %17, i32 0, i32 2, i32 18
  %18 = ptrtoint ptr %irq_control.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_control.i, align 4
  %tobool6.not.i = icmp eq ptr %19, null
  br i1 %tobool6.not.i, label %for.body.i.if.end11.i_crit_edge, label %if.then7.i

for.body.i.if.end11.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef %17, i1 noundef zeroext true) #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %for.body.i.if.end11.i_crit_edge
  %inc.i = add nuw i32 %i.023.i, 1
  %20 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_phys_encs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %if.end11.i.for.body.i_crit_edge, label %if.end11.i.cleanup_crit_edge

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.else:                                          ; preds = %if.end
  br i1 %tobool.not, label %do.end.i27, label %cond.end.i31

do.end.i27:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.103, i32 noundef 696) #12
  br label %_dpu_encoder_irq_control.exit41

cond.end.i31:                                     ; preds = %if.else
  %base3.i28 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %22 = ptrtoint ptr %base3.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base3.i28, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.104, i32 noundef %23, i32 noundef 0) #9
  %num_phys_encs.i29 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %24 = ptrtoint ptr %num_phys_encs.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_phys_encs.i29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22.not.i30 = icmp eq i32 %25, 0
  br i1 %cmp22.not.i30, label %cond.end.i31._dpu_encoder_irq_control.exit41_crit_edge, label %cond.end.i31.for.body.i36_crit_edge

cond.end.i31.for.body.i36_crit_edge:              ; preds = %cond.end.i31
  br label %for.body.i36

cond.end.i31._dpu_encoder_irq_control.exit41_crit_edge: ; preds = %cond.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_irq_control.exit41

for.body.i36:                                     ; preds = %if.end11.i40.for.body.i36_crit_edge, %cond.end.i31.for.body.i36_crit_edge
  %i.023.i32 = phi i32 [ %inc.i38, %if.end11.i40.for.body.i36_crit_edge ], [ 0, %cond.end.i31.for.body.i36_crit_edge ]
  %arrayidx.i33 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.023.i32
  %26 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i33, align 4
  %irq_control.i34 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %27, i32 0, i32 2, i32 18
  %28 = ptrtoint ptr %irq_control.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_control.i34, align 4
  %tobool6.not.i35 = icmp eq ptr %29, null
  br i1 %tobool6.not.i35, label %for.body.i36.if.end11.i40_crit_edge, label %if.then7.i37

for.body.i36.if.end11.i40_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i40

if.then7.i37:                                     ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %29(ptr noundef %27, i1 noundef zeroext false) #9
  br label %if.end11.i40

if.end11.i40:                                     ; preds = %if.then7.i37, %for.body.i36.if.end11.i40_crit_edge
  %inc.i38 = add nuw i32 %i.023.i32, 1
  %30 = ptrtoint ptr %num_phys_encs.i29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_phys_encs.i29, align 4
  %cmp.i39 = icmp ult i32 %inc.i38, %31
  br i1 %cmp.i39, label %if.end11.i40.for.body.i36_crit_edge, label %if.end11.i40._dpu_encoder_irq_control.exit41_crit_edge

if.end11.i40._dpu_encoder_irq_control.exit41_crit_edge: ; preds = %if.end11.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_irq_control.exit41

if.end11.i40.for.body.i36_crit_edge:              ; preds = %if.end11.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i36

_dpu_encoder_irq_control.exit41:                  ; preds = %if.end11.i40._dpu_encoder_irq_control.exit41_crit_edge, %cond.end.i31._dpu_encoder_irq_control.exit41_crit_edge, %do.end.i27
  %pdev11 = getelementptr inbounds %struct.dpu_kms, ptr %5, i32 0, i32 19
  %32 = ptrtoint ptr %pdev11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev11, align 8
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %call.i42 = tail call i32 @__pm_runtime_idle(ptr noundef %dev12, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %_dpu_encoder_irq_control.exit41, %if.end11.i.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %do.end.i, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_rc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_rc_helper(i32 noundef %drm_id, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc_helper, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_rc_helper, %do.body)) #9
          to label %if.end49 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !509
  %call43 = tail call i32 @__traceiter_dpu_enc_rc_helper(ptr noundef null, i32 noundef %drm_id, i1 noundef zeroext %enable) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !510
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !474

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div1.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc_helper, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_rc_helper, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_dpu_enc_rc_helper.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_rc_helper.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 353, ptr noundef nonnull @.str.56) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_rc_helper(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_prepare_kickoff_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_kickoff(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_encoder_trigger_flush(ptr noundef readonly %drm_enc, ptr noundef %phys, i32 noundef %extra_flush_bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_pp = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys, i32 0, i32 6
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_pp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 1412) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_ctl = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys, i32 0, i32 5
  %2 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_ctl, align 4
  %trigger_flush = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9, i32 7
  %4 = ptrtoint ptr %trigger_flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigger_flush, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, i32 noundef 1418) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %pending_ctlstart_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys, i32 0, i32 18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_ctlstart_cnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !511
  tail call void @llvm.prefetch.p0(ptr %pending_ctlstart_cnt.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_ctlstart_cnt.i, ptr %pending_ctlstart_cnt.i, i32 1, ptr elementtype(i32) %pending_ctlstart_cnt.i) #9, !srcloc !512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !513
  %pending_kickoff_cnt.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys, i32 0, i32 19
  %call.i.i3.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending_kickoff_cnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !511
  tail call void @llvm.prefetch.p0(ptr %pending_kickoff_cnt.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pending_kickoff_cnt.i, ptr %pending_kickoff_cnt.i, i32 1, ptr elementtype(i32) %pending_kickoff_cnt.i) #9, !srcloc !512
  %asmresult.i.i.i.i4.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %extra_flush_bits)
  %tobool10.not = icmp eq i32 %extra_flush_bits, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %land.lhs.true

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end8
  %update_pending_flush = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9, i32 4
  %8 = ptrtoint ptr %update_pending_flush to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_pending_flush, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true.if.end16_crit_edge, label %if.then13

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(ptr noundef %3, i32 noundef %extra_flush_bits) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true.if.end16_crit_edge, %if.end8.if.end16_crit_edge
  %10 = ptrtoint ptr %trigger_flush to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trigger_flush, align 4
  tail call void %11(ptr noundef %3) #9
  %get_pending_flush = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %get_pending_flush to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_pending_flush, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end16.if.end25_crit_edge, label %if.then21

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 %13(ptr noundef %3) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end16.if.end25_crit_edge
  %ret.0 = phi i32 [ %call24, %if.then21 ], [ -1, %if.end16.if.end25_crit_edge ]
  %tobool26.not = icmp eq ptr %drm_enc, null
  br i1 %tobool26.not, label %if.end25.cond.end_crit_edge, label %cond.true

if.end25.cond.end_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end25.cond.end_crit_edge
  %cond = phi i32 [ %15, %cond.true ], [ -1, %if.end25.cond.end_crit_edge ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phys, i32 0, i32 12
  %16 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %intf_idx, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_ctl, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idx, align 4
  tail call fastcc void @trace_dpu_enc_trigger_flush(i32 noundef %cond, i32 noundef %17, i32 noundef %asmresult.i.i.i.i4.i, i32 noundef %19, i32 noundef %extra_flush_bits, i32 noundef %ret.0)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end5, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_trigger_flush(i32 noundef %drm_id, i32 noundef %intf_idx, i32 noundef %pending_kickoff_cnt, i32 noundef %ctl_idx, i32 noundef %extra_flush_bits, i32 noundef %pending_flush_ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_flush, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_trigger_flush, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !514
  %call42 = tail call i32 @__traceiter_dpu_enc_trigger_flush(ptr noundef null, i32 noundef %drm_id, i32 noundef %intf_idx, i32 noundef %pending_kickoff_cnt, i32 noundef %ctl_idx, i32 noundef %extra_flush_bits, i32 noundef %pending_flush_ret) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !515
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_flush, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_trigger_flush, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_trigger_flush.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_trigger_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 453, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_trigger_flush(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_early_kickoff(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_vblank_callback(ptr noundef %drm_enc, ptr noundef %phy_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  %tobool1.not = icmp eq ptr %phy_enc, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %5, ptr noundef nonnull @.str.132, i1 noundef zeroext true)
  %enc_spinlock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 1
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %enc_spinlock) #9
  %crtc = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 10
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dpu_crtc_vblank_callback(ptr noundef nonnull %7) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %enc_spinlock, i32 noundef %call5) #9
  %vsync_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phy_enc, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %vsync_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %vsync_cnt, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %vsync_cnt, ptr %vsync_cnt, i32 1, ptr elementtype(i32) %vsync_cnt) #9, !srcloc !516
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %tgid15 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 69
  %11 = ptrtoint ptr %tgid15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tgid15, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %12, ptr noundef nonnull @.str.132, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_underrun_callback(ptr noundef readonly %drm_enc, ptr noundef %phy_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %phy_enc, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 69
  %4 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tgid, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %5, ptr noundef nonnull @.str.133, i1 noundef zeroext true)
  %underrun_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %phy_enc, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %underrun_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %underrun_cnt, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %underrun_cnt, ptr %underrun_cnt, i32 1, ptr elementtype(i32) %underrun_cnt) #9, !srcloc !516
  %call.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %underrun_cnt, i32 noundef 4) #9
  %7 = ptrtoint ptr %underrun_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %underrun_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm_enc, align 4
  tail call void @msm_disp_snapshot_state(ptr noundef %10) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %drm_enc, null
  br i1 %tobool5.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ -1, %if.end4.cond.end_crit_edge ]
  %call.i.i17 = tail call zeroext i1 @__kasan_check_read(ptr noundef %underrun_cnt, i32 noundef 4) #9
  %13 = ptrtoint ptr %underrun_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %underrun_cnt, align 4
  tail call fastcc void @trace_dpu_enc_underrun_cb(i32 noundef %cond, i32 noundef %14)
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %tgid10 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 69
  %17 = ptrtoint ptr %tgid10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tgid10, align 4
  tail call fastcc void @trace_tracing_mark_write(i32 noundef %18, ptr noundef nonnull @.str.133, i1 noundef zeroext false)
  br label %return

return:                                           ; preds = %cond.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_frame_done_callback(ptr noundef %drm_enc, ptr noundef readonly %ready_phys, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %frame_busy_mask = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 13
  %0 = ptrtoint ptr %frame_busy_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frame_busy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp63.not = icmp eq i32 %3, 0
  br i1 %cmp63.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool7.not = icmp eq ptr %drm_enc, null
  %base9 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  br label %for.body

if.then2:                                         ; preds = %if.then
  %tobool3.not = icmp eq ptr %drm_enc, null
  br i1 %tobool3.not, label %if.then2.cond.end_crit_edge, label %cond.true

if.then2.cond.end_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then2.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %if.then2.cond.end_crit_edge ]
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %ready_phys, i32 0, i32 12
  %6 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_idx, align 4
  tail call fastcc void @trace_dpu_enc_frame_done_cb_not_busy(i32 noundef %cond, i32 noundef %event, i32 noundef %7)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.064
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %9, %ready_phys
  br i1 %cmp5, label %if.then6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6:                                         ; preds = %for.body
  br i1 %tobool7.not, label %if.then6.cond.end12_crit_edge, label %cond.true8

if.then6.cond.end12_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end12

cond.true8:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base9, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %cond.true8, %if.then6.cond.end12_crit_edge
  %cond13 = phi i32 [ %11, %cond.true8 ], [ -1, %if.then6.cond.end12_crit_edge ]
  %12 = ptrtoint ptr %frame_busy_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frame_busy_mask, align 4
  tail call fastcc void @trace_dpu_enc_frame_done_cb(i32 noundef %cond13, i32 noundef %i.064, i32 noundef %13)
  tail call void @_clear_bit(i32 noundef %i.064, ptr noundef %frame_busy_mask) #9
  br label %for.inc

for.inc:                                          ; preds = %cond.end12, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.064, 1
  %14 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %frame_busy_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_busy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.then21, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %for.end
  %frame_done_timeout_ms = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_done_timeout_ms, i32 noundef 4) #9
  %18 = ptrtoint ptr %frame_done_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %frame_done_timeout_ms, align 4
  %frame_done_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 17
  %call = tail call i32 @del_timer(ptr noundef %frame_done_timer) #9
  %call22 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 2)
  %crtc_frame_event_cb = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 14
  %19 = ptrtoint ptr %crtc_frame_event_cb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc_frame_event_cb, align 4
  %tobool23.not = icmp eq ptr %20, null
  br i1 %tobool23.not, label %if.then21.cleanup_crit_edge, label %if.then24

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %crtc_frame_event_cb_data = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 15
  %21 = ptrtoint ptr %crtc_frame_event_cb_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc_frame_event_cb_data, align 4
  tail call void %20(ptr noundef %22, i32 noundef %event) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %crtc_frame_event_cb28 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 14
  %23 = ptrtoint ptr %crtc_frame_event_cb28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc_frame_event_cb28, align 4
  %tobool29.not = icmp eq ptr %24, null
  br i1 %tobool29.not, label %if.else.cleanup_crit_edge, label %if.then30

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %crtc_frame_event_cb_data32 = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 15
  %25 = ptrtoint ptr %crtc_frame_event_cb_data32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtc_frame_event_cb_data32, align 4
  tail call void %24(ptr noundef %26, i32 noundef %event) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.else.cleanup_crit_edge, %if.then24, %if.then21.cleanup_crit_edge, %for.end.cleanup_crit_edge, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_crtc_vblank_callback(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_underrun_cb(i32 noundef %drm_id, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_underrun_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_underrun_cb, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !517
  %call42 = tail call i32 @__traceiter_dpu_enc_underrun_cb(ptr noundef null, i32 noundef %drm_id, i32 noundef %count) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !518
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_underrun_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_underrun_cb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_underrun_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_underrun_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 315, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @__traceiter_dpu_enc_underrun_cb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_frame_done_cb_not_busy(i32 noundef %drm_id, i32 noundef %event, i32 noundef %intf_idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_frame_done_cb_not_busy, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !519
  %call42 = tail call i32 @__traceiter_dpu_enc_frame_done_cb_not_busy(ptr noundef null, i32 noundef %drm_id, i32 noundef %event, i32 noundef %intf_idx) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !520
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb_not_busy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_frame_done_cb_not_busy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_frame_done_cb_not_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 406, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
define internal fastcc void @trace_dpu_enc_frame_done_cb(i32 noundef %drm_id, i32 noundef %idx, i32 noundef %frame_busy_mask) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_frame_done_cb, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !521
  %call42 = tail call i32 @__traceiter_dpu_enc_frame_done_cb(ptr noundef null, i32 noundef %drm_id, i32 noundef %idx, i32 noundef %frame_busy_mask) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !522
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_cb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_frame_done_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_frame_done_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 424, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_cb_not_busy(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_cb(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_encoder_phys_vid_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_encoder_phys_cmd_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_frame_done_timeout(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_timeout, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_frame_done_timeout, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !523
  %call42 = tail call i32 @__traceiter_dpu_enc_frame_done_timeout(ptr noundef null, i32 noundef %drm_id, i32 noundef 2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !524
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !474

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_timeout, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_frame_done_timeout, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dpu_enc_frame_done_timeout.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_frame_done_timeout.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 494, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_frame_done_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_vsync_event_work(i32 noundef %drm_id, i64 noundef %time) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vsync_event_work, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_vsync_event_work, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !525
  %call42 = tail call i32 @__traceiter_dpu_enc_vsync_event_work(ptr noundef null, i32 noundef %drm_id, i64 noundef %time) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !526
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vsync_event_work, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_vsync_event_work, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_vsync_event_work.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_vsync_event_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 472, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @__traceiter_dpu_enc_vsync_event_work(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_late_register(ptr noundef %encoder) #0 align 64 {
entry:
  %name.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %name.i) #9
  %0 = call ptr @memset(ptr %name.i, i32 255, i32 12)
  %1 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %encoder, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef 1877) #12
  br label %_dpu_encoder_init_debugfs.exit

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 2
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i, align 4
  %call2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 12, ptr noundef nonnull @.str.161, i32 noundef %4) #9
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 4
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %primary.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %debugfs_root.i, align 4
  %call5.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef %10) #9
  %debugfs_root6.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 11
  %11 = ptrtoint ptr %debugfs_root6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i, ptr %debugfs_root6.i, align 4
  %call8.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.162, i16 noundef zeroext 384, ptr noundef %call5.i, ptr noundef %encoder, ptr noundef nonnull @_dpu_encoder_status_fops) #9
  %num_phys_encs.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_phys_encs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp36.not.i = icmp eq i32 %13, 0
  br i1 %cmp36.not.i, label %if.end.i._dpu_encoder_init_debugfs.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i._dpu_encoder_init_debugfs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_init_debugfs.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.037.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 5, i32 %i.037.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %ops.i = getelementptr inbounds %struct.dpu_encoder_phys, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %tobool9.not.i = icmp eq ptr %17, null
  br i1 %tobool9.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then10.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %debugfs_root6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_root6.i, align 4
  %call18.i = call i32 %17(ptr noundef %15, ptr noundef %19) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then10.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.037.i, 1
  %20 = ptrtoint ptr %num_phys_encs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_phys_encs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i._dpu_encoder_init_debugfs.exit_crit_edge

for.inc.i._dpu_encoder_init_debugfs.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_dpu_encoder_init_debugfs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

_dpu_encoder_init_debugfs.exit:                   ; preds = %for.inc.i._dpu_encoder_init_debugfs.exit_crit_edge, %if.end.i._dpu_encoder_init_debugfs.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.end.i._dpu_encoder_init_debugfs.exit_crit_edge ], [ 0, %for.inc.i._dpu_encoder_init_debugfs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %name.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_early_unregister(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.dpu_encoder_virt, ptr %encoder, i32 0, i32 11
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_encoder_status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @_dpu_encoder_status_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_encoder_status_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %1, i32 0, i32 5, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intf_idx, align 4
  %sub = add i32 %7, -1
  %vsync_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %vsync_cnt, i32 noundef 4) #9
  %8 = ptrtoint ptr %vsync_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %vsync_cnt, align 4
  %underrun_cnt = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 17
  %call.i.i16 = tail call zeroext i1 @__kasan_check_read(ptr noundef %underrun_cnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %underrun_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %underrun_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.163, i32 noundef %sub, i32 noundef %9, i32 noundef %11) #9
  %intf_mode = getelementptr inbounds %struct.dpu_encoder_phys, ptr %5, i32 0, i32 11
  %12 = ptrtoint ptr %intf_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intf_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %switch.selectcmp = icmp eq i32 %13, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.165, ptr @.str.166
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch.selectcmp19 = icmp eq i32 %13, 2
  %switch.select20 = select i1 %switch.selectcmp19, ptr @.str.164, ptr %switch.select
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %switch.select20) #9
  %inc = add nuw i32 %i.018, 1
  %14 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %enc_lock) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_mode_set(ptr noundef %drm_enc, ptr noundef %mode, ptr noundef %adj_mode) #0 align 64 {
entry:
  %hw_pp = alloca [2 x ptr], align 4
  %hw_ctl = alloca [2 x ptr], align 4
  %hw_lm = alloca [2 x ptr], align 4
  %hw_dspp = alloca [2 x ptr], align 8
  %hw_blk = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_pp) #9
  %0 = ptrtoint ptr %hw_pp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_pp, align 4, !annotation !497
  %1 = getelementptr inbounds [2 x ptr], ptr %hw_pp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !497
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_ctl) #9
  %3 = ptrtoint ptr %hw_ctl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_ctl, align 4, !annotation !497
  %4 = getelementptr inbounds [2 x ptr], ptr %hw_ctl, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !497
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_lm) #9
  %6 = ptrtoint ptr %hw_lm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_lm, align 4, !annotation !497
  %7 = getelementptr inbounds [2 x ptr], ptr %hw_lm, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !497
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_dspp) #9
  %9 = ptrtoint ptr %hw_dspp to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %hw_dspp, align 8
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.167, i32 noundef 979) #12
  br label %cleanup244

cond.end:                                         ; preds = %entry
  %base3 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %10 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %11) #9
  %12 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm_enc, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %kms, align 4
  %dev7 = getelementptr inbounds %struct.dpu_kms, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev7, align 8
  %connector_list8 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 12
  %call9 = tail call ptr @dpu_kms_get_existing_global_state(ptr noundef %17) #9
  %tobool.not.i = icmp eq ptr %call9, null
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end14, label %cond.end23

do.end14:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.167, i32 noundef 992) #12
  br label %cleanup244

cond.end23:                                       ; preds = %cond.end
  %20 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base3, align 4
  tail call fastcc void @trace_dpu_enc_mode_set(i32 noundef %21)
  %22 = ptrtoint ptr %connector_list8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn360 = load ptr, ptr %connector_list8, align 4
  %cmp.not361 = icmp eq ptr %.pn360, %connector_list8
  br i1 %cmp.not361, label %cond.end23.cond.end48_crit_edge, label %cond.end23.for.body_crit_edge

cond.end23.for.body_crit_edge:                    ; preds = %cond.end23
  br label %for.body

cond.end23.cond.end48_crit_edge:                  ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end48

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cond.end23.for.body_crit_edge
  %.pn363 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn360, %cond.end23.for.body_crit_edge ]
  %conn.0362 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %cond.end23.for.body_crit_edge ]
  %conn_iter.0 = getelementptr i8, ptr %.pn363, i32 -16
  %encoder = getelementptr i8, ptr %.pn363, i32 804
  %23 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder, align 4
  %cmp28 = icmp eq ptr %24, %drm_enc
  %spec.select = select i1 %cmp28, ptr %conn_iter.0, ptr %conn.0362
  %25 = ptrtoint ptr %.pn363 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn363, align 4
  %cmp.not = icmp eq ptr %.pn, %connector_list8
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool36.not = icmp eq ptr %spec.select, null
  br i1 %tobool36.not, label %for.end.cond.end48_crit_edge, label %if.else

for.end.cond.end48_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end48

cond.end48:                                       ; preds = %for.end.cond.end48_crit_edge, %cond.end23.cond.end48_crit_edge
  %26 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base3, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.167, i32 noundef 1003, i32 noundef %27) #12
  br label %cleanup244

if.else:                                          ; preds = %for.end
  %state = getelementptr inbounds %struct.drm_connector, ptr %spec.select, i32 0, i32 52
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 8
  %tobool51.not = icmp eq ptr %29, null
  br i1 %tobool51.not, label %cond.end63, label %if.end67

cond.end63:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base3, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.167, i32 noundef 1006, i32 noundef %31) #12
  br label %cleanup244

if.end67:                                         ; preds = %if.else
  %32 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drm_enc, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 20
  %index.i.i = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 5
  br label %for.cond74

for.cond74:                                       ; preds = %for.body81.for.cond74_crit_edge, %if.end67
  %.pn354.in = phi ptr [ %crtc_list, %if.end67 ], [ %.pn354, %for.body81.for.cond74_crit_edge ]
  %34 = ptrtoint ptr %.pn354.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn354 = load ptr, ptr %.pn354.in, align 4
  %cmp79.not = icmp eq ptr %.pn354, %crtc_list
  br i1 %cmp79.not, label %for.cond74.for.end93_crit_edge, label %for.body81

for.cond74.for.end93_crit_edge:                   ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.body81:                                       ; preds = %for.cond74
  %state82 = getelementptr i8, ptr %.pn354, i32 716
  %35 = ptrtoint ptr %state82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %state82, align 4
  %encoder_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %encoder_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %encoder_mask, align 4
  %39 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %40
  %and = and i32 %shl.i, %38
  %tobool84.not = icmp eq i32 %and, 0
  br i1 %tobool84.not, label %for.body81.for.cond74_crit_edge, label %for.body81.for.end93_crit_edge

for.body81.for.end93_crit_edge:                   ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end93

for.body81.for.cond74_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond74

for.end93:                                        ; preds = %for.body81.for.end93_crit_edge, %for.cond74.for.end93_crit_edge
  %.pn354.lcssa = phi ptr [ %.pn354, %for.body81.for.end93_crit_edge ], [ %crtc_list, %for.cond74.for.end93_crit_edge ]
  %rm = getelementptr inbounds %struct.dpu_kms, ptr %17, i32 0, i32 14
  %41 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base3, align 4
  %call96 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %rm, ptr noundef %call9, i32 noundef %42, i32 noundef 4, ptr noundef nonnull %hw_pp, i32 noundef 2) #9
  %43 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base3, align 4
  %call101 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %rm, ptr noundef %call9, i32 noundef %44, i32 noundef 3, ptr noundef nonnull %hw_ctl, i32 noundef 2) #9
  %45 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base3, align 4
  %call106 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %rm, ptr noundef %call9, i32 noundef %46, i32 noundef 2, ptr noundef nonnull %hw_lm, i32 noundef 2) #9
  %47 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base3, align 4
  %call111 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %rm, ptr noundef %call9, i32 noundef %48, i32 noundef 7, ptr noundef nonnull %hw_dspp, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp115 = icmp sgt i32 %call96, 0
  br i1 %cmp115, label %cond.end119, label %cond.end119.thread

cond.end119.thread:                               ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx122378 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 0
  %49 = ptrtoint ptr %arrayidx122378 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %arrayidx122378, align 4
  br label %cond.end119.1

cond.end119:                                      ; preds = %for.end93
  %50 = ptrtoint ptr %hw_pp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw_pp, align 4
  %arrayidx122 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 0
  %52 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %arrayidx122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call96)
  %cmp115.1.not = icmp eq i32 %call96, 1
  br i1 %cmp115.1.not, label %cond.end119.cond.end119.1_crit_edge, label %cond.true116.1

cond.end119.cond.end119.1_crit_edge:              ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end119.1

cond.true116.1:                                   ; preds = %cond.end119
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  br label %cond.end119.1

cond.end119.1:                                    ; preds = %cond.true116.1, %cond.end119.cond.end119.1_crit_edge, %cond.end119.thread
  %cond120.1 = phi ptr [ %54, %cond.true116.1 ], [ null, %cond.end119.cond.end119.1_crit_edge ], [ null, %cond.end119.thread ]
  %arrayidx122.1 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %arrayidx122.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond120.1, ptr %arrayidx122.1, align 4
  %state126 = getelementptr i8, ptr %.pn354.lcssa, i32 716
  %56 = ptrtoint ptr %state126 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp130365 = icmp sgt i32 %call106, 0
  br i1 %cmp130365, label %for.body131.lr.ph, label %cond.end119.1.for.end152_crit_edge

cond.end119.1.for.end152_crit_edge:               ; preds = %cond.end119.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end152

for.body131.lr.ph:                                ; preds = %cond.end119.1
  %sub = add i32 %call101, -1
  br label %for.body131

for.body131:                                      ; preds = %for.body131.for.body131_crit_edge, %for.body131.lr.ph
  %i.1366 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc151, %for.body131.for.body131_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1366, i32 %call101)
  %cmp132 = icmp slt i32 %i.1366, %call101
  %cond136 = select i1 %cmp132, i32 %i.1366, i32 %sub
  %arrayidx137 = getelementptr [2 x ptr], ptr %hw_lm, i32 0, i32 %i.1366
  %58 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx137, align 4
  %arrayidx139 = getelementptr %struct.dpu_crtc_state, ptr %57, i32 0, i32 7, i32 %i.1366
  %60 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %arrayidx139, align 4
  %arrayidx141 = getelementptr [2 x ptr], ptr %hw_ctl, i32 0, i32 %cond136
  %61 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx141, align 4
  %lm_ctl = getelementptr %struct.dpu_crtc_state, ptr %57, i32 0, i32 7, i32 %i.1366, i32 1
  %63 = ptrtoint ptr %lm_ctl to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %lm_ctl, align 4
  %arrayidx145 = getelementptr [2 x ptr], ptr %hw_dspp, i32 0, i32 %i.1366
  %64 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx145, align 4
  %hw_dspp149 = getelementptr %struct.dpu_crtc_state, ptr %57, i32 0, i32 7, i32 %i.1366, i32 2
  %66 = ptrtoint ptr %hw_dspp149 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %hw_dspp149, align 4
  %inc151 = add nuw nsw i32 %i.1366, 1
  %exitcond.not = icmp eq i32 %inc151, %call106
  br i1 %exitcond.not, label %for.body131.for.end152_crit_edge, label %for.body131.for.body131_crit_edge

for.body131.for.body131_crit_edge:                ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body131

for.body131.for.end152_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end152

for.end152:                                       ; preds = %for.body131.for.end152_crit_edge, %cond.end119.1.for.end152_crit_edge
  %num_mixers = getelementptr inbounds %struct.dpu_crtc_state, ptr %57, i32 0, i32 6
  %67 = ptrtoint ptr %num_mixers to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call106, ptr %num_mixers, align 8
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %68 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp154369.not = icmp eq i32 %69, 0
  br i1 %cmp154369.not, label %for.end152.cleanup244_crit_edge, label %for.body155.lr.ph

for.end152.cleanup244_crit_edge:                  ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup244

for.body155.lr.ph:                                ; preds = %for.end152
  %70 = getelementptr inbounds [2 x ptr], ptr %hw_blk, i32 0, i32 1
  br label %for.body155

for.body155:                                      ; preds = %cleanup.for.body155_crit_edge, %for.body155.lr.ph
  %i.2370 = phi i32 [ 0, %for.body155.lr.ph ], [ %inc242, %cleanup.for.body155_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_blk) #9
  %71 = ptrtoint ptr %hw_blk to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw_blk, align 4, !annotation !497
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 -1 to ptr), ptr %70, align 4, !annotation !497
  %arrayidx156 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.2370
  %73 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx156, align 4
  %arrayidx158 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 8, i32 %i.2370
  %75 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx158, align 4
  %tobool159.not = icmp eq ptr %76, null
  br i1 %tobool159.not, label %cond.end171, label %if.end174

cond.end171:                                      ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %base3, align 4
  %call173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.167, i32 noundef 1049, i32 noundef %78, i32 noundef %i.2370) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_blk) #9
  br label %cleanup244

if.end174:                                        ; preds = %for.body155
  %arrayidx175 = getelementptr [2 x ptr], ptr %hw_ctl, i32 0, i32 %i.2370
  %79 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx175, align 4
  %tobool176.not = icmp eq ptr %80, null
  br i1 %tobool176.not, label %cond.end188, label %if.end191

cond.end188:                                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base3, align 4
  %call190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.167, i32 noundef 1055, i32 noundef %82, i32 noundef %i.2370) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_blk) #9
  br label %cleanup244

if.end191:                                        ; preds = %if.end174
  %hw_pp194 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 6
  %83 = ptrtoint ptr %hw_pp194 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %76, ptr %hw_pp194, align 4
  %84 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx175, align 4
  %hw_ctl197 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 5
  %86 = ptrtoint ptr %hw_ctl197 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %hw_ctl197, align 4
  %87 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %base3, align 4
  %call202 = call i32 @dpu_rm_get_assigned_resources(ptr noundef %rm, ptr noundef %call9, i32 noundef %88, i32 noundef 5, ptr noundef nonnull %hw_blk, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %cmp204367 = icmp sgt i32 %call202, 0
  br i1 %cmp204367, label %for.body205.lr.ph, label %if.end191.for.end214_crit_edge

if.end191.for.end214_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end214

for.body205.lr.ph:                                ; preds = %if.end191
  %arrayidx206 = getelementptr [2 x ptr], ptr %hw_blk, i32 0, i32 %i.2370
  %intf_idx = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 12
  %hw_intf210 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 7
  br label %for.body205

for.body205:                                      ; preds = %if.end211.for.body205_crit_edge, %for.body205.lr.ph
  %j.0368 = phi i32 [ 0, %for.body205.lr.ph ], [ %inc213, %if.end211.for.body205_crit_edge ]
  %89 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx206, align 4
  %idx = getelementptr inbounds %struct.dpu_hw_intf, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %idx, align 4
  %93 = ptrtoint ptr %intf_idx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %intf_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp208 = icmp eq i32 %92, %94
  br i1 %cmp208, label %if.then209, label %for.body205.if.end211_crit_edge

for.body205.if.end211_crit_edge:                  ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end211

if.then209:                                       ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %hw_intf210 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %90, ptr %hw_intf210, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %for.body205.if.end211_crit_edge
  %inc213 = add nuw nsw i32 %j.0368, 1
  %exitcond374.not = icmp eq i32 %inc213, %call202
  br i1 %exitcond374.not, label %if.end211.for.end214_crit_edge, label %if.end211.for.body205_crit_edge

if.end211.for.body205_crit_edge:                  ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body205

if.end211.for.end214_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end214

for.end214:                                       ; preds = %if.end211.for.end214_crit_edge, %if.end191.for.end214_crit_edge
  %hw_intf215 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 7
  %96 = ptrtoint ptr %hw_intf215 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw_intf215, align 4
  %tobool216.not = icmp eq ptr %97, null
  br i1 %tobool216.not, label %cond.end228, label %if.end231

cond.end228:                                      ; preds = %for.end214
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %base3 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %base3, align 4
  %call230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.167, i32 noundef 1075, i32 noundef %99, i32 noundef %i.2370) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_blk) #9
  br label %cleanup244

if.end231:                                        ; preds = %for.end214
  %100 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %state, align 8
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %connector233 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 1
  %104 = ptrtoint ptr %connector233 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %connector233, align 4
  %mode_set = getelementptr inbounds %struct.dpu_encoder_phys, ptr %74, i32 0, i32 2, i32 4
  %105 = ptrtoint ptr %mode_set to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mode_set, align 4
  %tobool234.not = icmp eq ptr %106, null
  br i1 %tobool234.not, label %if.end231.cleanup_crit_edge, label %if.then235

if.end231.cleanup_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then235:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  call void %106(ptr noundef %74, ptr noundef %mode, ptr noundef %adj_mode) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then235, %if.end231.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_blk) #9
  %inc242 = add nuw i32 %i.2370, 1
  %107 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_phys_encs, align 4
  %cmp154 = icmp ult i32 %inc242, %108
  br i1 %cmp154, label %cleanup.for.body155_crit_edge, label %cleanup.cleanup244_crit_edge

cleanup.cleanup244_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup244

cleanup.for.body155_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body155

cleanup244:                                       ; preds = %cleanup.cleanup244_crit_edge, %cond.end228, %cond.end188, %cond.end171, %for.end152.cleanup244_crit_edge, %cond.end63, %cond.end48, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_dspp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_lm) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_ctl) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_pp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_disable(ptr noundef %drm_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base1 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %cond) #9
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %enabled = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  br i1 %tobool.not, label %cond.end.cond.end7_crit_edge, label %cond.true3

cond.end.cond.end7_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end7

cond.true3:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %base4 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %3 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base4, align 4
  br label %cond.end7

cond.end7:                                        ; preds = %cond.true3, %cond.end.cond.end7_crit_edge
  %cond8 = phi i32 [ %4, %cond.true3 ], [ -1, %cond.end.cond.end7_crit_edge ]
  tail call fastcc void @trace_dpu_enc_disable(i32 noundef %cond8)
  %call = tail call i32 @dpu_encoder_wait_for_event(ptr noundef %drm_enc, i32 noundef 1)
  %call9 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 3)
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %5 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp67.not = icmp eq i32 %6, 0
  br i1 %cmp67.not, label %cond.end7.for.end_crit_edge, label %cond.end7.for.body_crit_edge

cond.end7.for.body_crit_edge:                     ; preds = %cond.end7
  br label %for.body

cond.end7.for.end_crit_edge:                      ; preds = %cond.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %cond.end7.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %cond.end7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.068
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %disable = getelementptr inbounds %struct.dpu_encoder_phys, ptr %8, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disable, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.068, 1
  %11 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_phys_encs, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %cond.end7.for.end_crit_edge
  %frame_done_timeout_ms = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %frame_done_timeout_ms, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !502
  tail call void @llvm.prefetch.p0(ptr %frame_done_timeout_ms, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %frame_done_timeout_ms) #9, !srcloc !503
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool14.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool14.not, label %for.end.if.end21_crit_edge, label %do.end

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %base17 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %14 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base17, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 1210, i32 noundef %15) #12
  %frame_done_timer = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 17
  %call20 = tail call i32 @del_timer_sync(ptr noundef %frame_done_timer) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %for.end.if.end21_crit_edge
  %call22 = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 4)
  %16 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2569.not = icmp eq i32 %17, 0
  br i1 %cmp2569.not, label %if.end21.for.end31_crit_edge, label %if.end21.for.body26_crit_edge

if.end21.for.body26_crit_edge:                    ; preds = %if.end21
  br label %for.body26

if.end21.for.end31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.end21.for.body26_crit_edge
  %i.170 = phi i32 [ %inc30, %for.body26.for.body26_crit_edge ], [ 0, %if.end21.for.body26_crit_edge ]
  %arrayidx28 = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.170
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx28, align 4
  %connector = getelementptr inbounds %struct.dpu_encoder_phys, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %connector, align 4
  %inc30 = add nuw i32 %i.170, 1
  %21 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_phys_encs, align 4
  %cmp25 = icmp ult i32 %inc30, %22
  br i1 %cmp25, label %for.body26.for.body26_crit_edge, label %for.body26.for.end31_crit_edge

for.body26.for.end31_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26

for.end31:                                        ; preds = %for.body26.for.end31_crit_edge, %if.end21.for.end31_crit_edge
  br i1 %tobool.not, label %for.end31.cond.end38_crit_edge, label %cond.true33

for.end31.cond.end38_crit_edge:                   ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end38

cond.true33:                                      ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #11
  %base35 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %23 = ptrtoint ptr %base35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base35, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %for.end31.cond.end38_crit_edge
  %cond39 = phi i32 [ %24, %cond.true33 ], [ -1, %for.end31.cond.end38_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.188, i32 noundef %cond39) #9
  tail call void @mutex_unlock(ptr noundef %enc_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_encoder_virt_enable(ptr noundef %drm_enc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enc_lock = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %enc_lock, i32 noundef 0) #9
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 8
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %drm_enc, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base1 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %5, %cond.true ], [ -1, %entry.cond.end_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  %conv2 = zext i16 %9 to i32
  tail call fastcc void @trace_dpu_enc_enable(i32 noundef %cond, i32 noundef %conv, i32 noundef %conv2)
  %cur_slave = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 7
  %10 = ptrtoint ptr %cur_slave to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_slave, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %cond.end.if.end_crit_edge, label %land.lhs.true

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %enable = getelementptr inbounds %struct.dpu_encoder_phys, ptr %11, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef nonnull %11) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end.if.end_crit_edge
  %cur_master = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 6
  %14 = ptrtoint ptr %cur_master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_master, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %if.end.if.end21_crit_edge, label %land.lhs.true11

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.lhs.true11:                                  ; preds = %if.end
  %enable14 = getelementptr inbounds %struct.dpu_encoder_phys, ptr %15, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %enable14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable14, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %land.lhs.true11.if.end21_crit_edge, label %if.then16

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %17(ptr noundef nonnull %15) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true11.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %call = tail call fastcc i32 @dpu_encoder_resource_control(ptr noundef %drm_enc, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end34, label %do.end

do.end:                                           ; preds = %if.end21
  br i1 %tobool.not, label %do.end.cond.end31_crit_edge, label %cond.true26

do.end.cond.end31_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end31

cond.true26:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %base28 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %18 = ptrtoint ptr %base28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base28, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true26, %do.end.cond.end31_crit_edge
  %cond32 = phi i32 [ %19, %cond.true26 ], [ -1, %do.end.cond.end31_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, i32 noundef 1167, i32 noundef %cond32, i32 noundef %call) #12
  br label %out

if.end34:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_dpu_encoder_virt_enable_helper(ptr noundef %drm_enc)
  %enabled = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 3
  %20 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %enabled, align 4
  br label %out

out:                                              ; preds = %if.end34, %cond.end31
  tail call void @mutex_unlock(ptr noundef %enc_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpu_encoder_virt_atomic_check(ptr noundef %drm_enc, ptr noundef %crtc_state, ptr noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool = icmp ne ptr %drm_enc, null
  %tobool.not = xor i1 %tobool, true
  %tobool1.not = icmp eq ptr %crtc_state, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %conn_state, null
  %or.cond132 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond132, label %do.end, label %cond.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i1 %tobool to i32
  %cmp4 = icmp ne ptr %crtc_state, null
  %conv5 = zext i1 %cmp4 to i32
  %cmp6 = icmp ne ptr %conn_state, null
  %conv7 = zext i1 %cmp6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.192, i32 noundef 586, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv7) #12
  br label %cleanup80

cond.end:                                         ; preds = %entry
  %base10 = getelementptr inbounds %struct.drm_encoder, ptr %drm_enc, i32 0, i32 2
  %0 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base10, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.18, i32 noundef %1) #9
  %2 = ptrtoint ptr %drm_enc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_enc, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kms, align 4
  %mode14 = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 20
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %call15 = tail call ptr @dpu_kms_get_global_state(ptr noundef %9) #9
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %cond.end25

if.then17:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call15 to i32
  br label %cleanup80

cond.end25:                                       ; preds = %cond.end
  %11 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base10, align 4
  tail call fastcc void @trace_dpu_enc_atomic_check(i32 noundef %12)
  %num_phys_encs = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 4
  %13 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_phys_encs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp27143.not = icmp eq i32 %14, 0
  br i1 %cmp27143.not, label %cond.end25.for.end_crit_edge, label %cond.end25.for.body_crit_edge

cond.end25.for.body_crit_edge:                    ; preds = %cond.end25
  br label %for.body

cond.end25.for.end_crit_edge:                     ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %cond.end25.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %cond.end25.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 %i.0144
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %atomic_check = getelementptr inbounds %struct.dpu_encoder_phys, ptr %16, i32 0, i32 2, i32 7
  %17 = ptrtoint ptr %atomic_check to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %atomic_check, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.else, label %if.end43

if.else:                                          ; preds = %for.body
  %mode_fixup = getelementptr inbounds %struct.dpu_encoder_phys, ptr %16, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %mode_fixup to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mode_fixup, align 4
  %tobool35.not = icmp eq ptr %20, null
  br i1 %tobool35.not, label %if.else.for.inc_crit_edge, label %if.then36

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then36:                                        ; preds = %if.else
  %call39 = tail call zeroext i1 %20(ptr noundef %16, ptr noundef %mode14, ptr noundef %adjusted_mode) #9
  br i1 %call39, label %if.then36.for.inc_crit_edge, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end43:                                         ; preds = %for.body
  %call33 = tail call i32 %18(ptr noundef %16, ptr noundef nonnull %crtc_state, ptr noundef nonnull %conn_state) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool44.not = icmp eq i32 %call33, 0
  br i1 %tobool44.not, label %if.end43.for.inc_crit_edge, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

cleanup:                                          ; preds = %if.end43.cleanup_crit_edge, %if.then36.cleanup_crit_edge
  %ret.1136 = phi i32 [ %call33, %if.end43.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ]
  %21 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base10, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.192, i32 noundef 616, i32 noundef %22, i32 noundef %i.0144) #12
  br label %for.end

for.inc:                                          ; preds = %if.end43.for.inc_crit_edge, %if.then36.for.inc_crit_edge, %if.else.for.inc_crit_edge
  %inc = add nuw i32 %i.0144, 1
  %23 = ptrtoint ptr %num_phys_encs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_phys_encs, align 4
  %cmp27 = icmp ult i32 %inc, %24
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup, %cond.end25.for.end_crit_edge
  %ret.2 = phi i32 [ %ret.1136, %cleanup ], [ 0, %cond.end25.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %arrayidx.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 0
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4, !noalias !527
  %tobool.not.i = icmp ne ptr %26, null
  %inc.i = zext i1 %tobool.not.i to i32
  %arrayidx.1.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1.i, align 4, !noalias !527
  %tobool.not.1.i = icmp ne ptr %28, null
  %inc.1.i = zext i1 %tobool.not.1.i to i32
  %spec.select.1.i = add nuw nsw i32 %inc.1.i, %inc.i
  %arrayidx.2.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2.i, align 4, !noalias !527
  %tobool.not.2.i = icmp ne ptr %30, null
  %inc.2.i = zext i1 %tobool.not.2.i to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %inc.2.i
  %arrayidx.3.i = getelementptr %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 5, i32 3
  %31 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3.i, align 4, !noalias !527
  %tobool.not.3.i = icmp ne ptr %32, null
  %inc.3.i = zext i1 %tobool.not.3.i to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.3.i)
  %cmp2.i = icmp eq i32 %spec.select.3.i, 2
  br i1 %cmp2.i, label %for.end.if.end12.i_crit_edge, label %if.else.i

for.end.if.end12.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.else.i:                                        ; preds = %for.end
  %catalog.i = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 3
  %33 = ptrtoint ptr %catalog.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %catalog.i, align 8, !noalias !527
  %caps.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %caps.i, align 4, !noalias !527
  %has_3d_merge.i = getelementptr inbounds %struct.dpu_caps, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %has_3d_merge.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_3d_merge.i, align 1, !range !483, !noalias !527
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool4.not.i = icmp eq i8 %38, 0
  br i1 %tobool4.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.else7.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %hdisplay.i, align 4, !noalias !527
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %40)
  %cmp8.i = icmp ugt i16 %40, 1080
  %cond.i = select i1 %cmp8.i, i32 2, i32 1
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else7.i, %if.else.i.if.end12.i_crit_edge, %for.end.if.end12.i_crit_edge
  %.sink.i = phi i32 [ %cond.i, %if.else7.i ], [ 2, %for.end.if.end12.i_crit_edge ], [ 1, %if.else.i.if.end12.i_crit_edge ]
  %disp_info.i = getelementptr inbounds %struct.dpu_encoder_virt, ptr %drm_enc, i32 0, i32 19
  %41 = ptrtoint ptr %disp_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %disp_info.i, align 4, !noalias !527
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %42)
  %cmp13.i = icmp eq i32 %42, 6
  br i1 %cmp13.i, label %if.then15.i, label %if.end12.i.dpu_encoder_get_topology.exit_crit_edge

if.end12.i.dpu_encoder_get_topology.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_get_topology.exit

if.then15.i:                                      ; preds = %if.end12.i
  %catalog16.i = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 3
  %43 = ptrtoint ptr %catalog16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %catalog16.i, align 8, !noalias !527
  %dspp.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %dspp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dspp.i, align 4, !noalias !527
  %tobool17.not.i = icmp eq ptr %46, null
  br i1 %tobool17.not.i, label %if.then15.i.dpu_encoder_get_topology.exit_crit_edge, label %land.lhs.true.i

if.then15.i.dpu_encoder_get_topology.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dpu_encoder_get_topology.exit

land.lhs.true.i:                                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %dspp_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %44, i32 0, i32 21
  %47 = ptrtoint ptr %dspp_count.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dspp_count.i, align 4, !noalias !527
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %.sink.i)
  %cmp20.not.i = icmp ult i32 %48, %.sink.i
  %spec.select = select i1 %cmp20.not.i, i32 0, i32 %.sink.i
  br label %dpu_encoder_get_topology.exit

dpu_encoder_get_topology.exit:                    ; preds = %land.lhs.true.i, %if.then15.i.dpu_encoder_get_topology.exit_crit_edge, %if.end12.i.dpu_encoder_get_topology.exit_crit_edge
  %tmp60.sroa.10.0 = phi i32 [ 0, %if.then15.i.dpu_encoder_get_topology.exit_crit_edge ], [ 0, %if.end12.i.dpu_encoder_get_topology.exit_crit_edge ], [ %spec.select, %land.lhs.true.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool61.not = icmp eq i32 %ret.2, 0
  br i1 %tobool61.not, label %if.then62, label %dpu_encoder_get_topology.exit.cond.end78_crit_edge

dpu_encoder_get_topology.exit.cond.end78_crit_edge: ; preds = %dpu_encoder_get_topology.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end78

if.then62:                                        ; preds = %dpu_encoder_get_topology.exit
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %49 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %50 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %.not = icmp eq i8 %50, 0
  br i1 %.not, label %if.then62.cond.end78_crit_edge, label %if.then64

if.then62.cond.end78_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end78

if.then64:                                        ; preds = %if.then62
  tail call void @dpu_rm_release(ptr noundef %call15, ptr noundef nonnull %drm_enc) #9
  %51 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %mode_changed.i, align 2
  %52 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %bf.cast.not = icmp eq i8 %52, 0
  br i1 %bf.cast.not, label %if.then64.if.then68_crit_edge, label %lor.lhs.false65

if.then64.if.then68_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false65:                                  ; preds = %if.then64
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 2
  %53 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %active, align 1, !range !483
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool66.not = icmp eq i8 %54, 0
  br i1 %tobool66.not, label %lor.lhs.false65.cond.end78_crit_edge, label %lor.lhs.false65.if.then68_crit_edge

lor.lhs.false65.if.then68_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false65.cond.end78_crit_edge:             ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end78

if.then68:                                        ; preds = %lor.lhs.false65.if.then68_crit_edge, %if.then64.if.then68_crit_edge
  %rm = getelementptr inbounds %struct.dpu_kms, ptr %7, i32 0, i32 14
  %.fca.0.insert = insertvalue [4 x i32] poison, i32 %.sink.i, 0
  %.fca.1.insert = insertvalue [4 x i32] %.fca.0.insert, i32 0, 1
  %.fca.2.insert = insertvalue [4 x i32] %.fca.1.insert, i32 %spec.select.3.i, 2
  %.fca.3.insert = insertvalue [4 x i32] %.fca.2.insert, i32 %tmp60.sroa.10.0, 3
  %call69 = tail call i32 @dpu_rm_reserve(ptr noundef %rm, ptr noundef %call15, ptr noundef nonnull %drm_enc, ptr noundef nonnull %crtc_state, [4 x i32] %.fca.3.insert) #9
  br label %cond.end78

cond.end78:                                       ; preds = %if.then68, %lor.lhs.false65.cond.end78_crit_edge, %if.then62.cond.end78_crit_edge, %dpu_encoder_get_topology.exit.cond.end78_crit_edge
  %ret.3 = phi i32 [ %ret.2, %dpu_encoder_get_topology.exit.cond.end78_crit_edge ], [ %call69, %if.then68 ], [ 0, %lor.lhs.false65.cond.end78_crit_edge ], [ 0, %if.then62.cond.end78_crit_edge ]
  %55 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base10, align 4
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 7, i32 11
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  tail call fastcc void @trace_dpu_enc_atomic_check_flags(i32 noundef %56, i32 noundef %58)
  br label %cleanup80

cleanup80:                                        ; preds = %cond.end78, %if.then17, %do.end
  %retval.0 = phi i32 [ %10, %if.then17 ], [ %ret.3, %cond.end78 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_get_existing_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_mode_set(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_mode_set, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_mode_set, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !530
  %call42 = tail call i32 @__traceiter_dpu_enc_mode_set(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !531
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_mode_set, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_mode_set, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_mode_set.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_mode_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 240, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @dpu_rm_get_assigned_resources(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_disable(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_disable, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_disable, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !532
  %call42 = tail call i32 @__traceiter_dpu_enc_disable(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !533
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_disable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_disable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_disable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_disable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 244, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_enable(i32 noundef %drm_id, i32 noundef %hdisplay, i32 noundef %vdisplay) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_enable, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_enable, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !534
  %call42 = tail call i32 @__traceiter_dpu_enc_enable(ptr noundef null, i32 noundef %drm_id, i32 noundef %hdisplay, i32 noundef %vdisplay) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !535
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_enable, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_enable, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_enable.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_enable.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 297, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @__traceiter_dpu_enc_enable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_get_global_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_atomic_check(i32 noundef %drm_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_atomic_check, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !536
  %call42 = tail call i32 @__traceiter_dpu_enc_atomic_check(ptr noundef null, i32 noundef %drm_id) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !537
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_atomic_check.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_atomic_check.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 236, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local void @dpu_rm_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_rm_reserve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, [4 x i32]) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpu_enc_atomic_check_flags(i32 noundef %drm_id, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check_flags, i32 0, i32 1), ptr blockaddress(@trace_dpu_enc_atomic_check_flags, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !473

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !474

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !538
  %call42 = tail call i32 @__traceiter_dpu_enc_atomic_check_flags(ptr noundef null, i32 noundef %drm_id, i32 noundef %flags) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !539
  %13 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !474

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !457) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !477
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check_flags, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_enc_atomic_check_flags, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpu_enc_atomic_check_flags.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_dpu_enc_atomic_check_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.55, i32 noundef 334, ptr noundef nonnull @.str.56) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !478
  %31 = tail call i32 @llvm.read_register.i32(metadata !457) #9
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
declare dso_local i32 @__traceiter_dpu_enc_atomic_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_enc_atomic_check_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !183, !184, !186, !187, !189, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !232, !234, !235, !236, !238, !240, !241, !242, !243, !245, !246, !248, !249, !251, !253, !254, !255, !256, !258, !259, !261, !262, !263, !264, !266, !267, !268, !270, !271, !273, !274, !275, !276, !278, !279, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !308, !310, !312, !313, !315, !316, !318, !319, !321, !322, !323, !324, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !340, !342, !343, !344, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !364, !365, !366, !368, !369, !370, !372, !374, !375, !376, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !423, !424, !426, !427, !428, !429, !431, !433, !434, !436, !437, !438, !439, !441, !442, !444, !445, !446, !447, !449, !450, !451, !453, !454, !456}
!llvm.named.register.sp = !{!457}
!llvm.module.flags = !{!458, !459, !460, !461, !462, !463, !464, !465}
!llvm.ident = !{!466}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 249, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 271, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dpu_encoder_helper_wait_for_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dpu_encoder_helper_wait_for_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 280, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 287, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 293, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 309, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 320, i32 4}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 344, i32 3}
!20 = !{ptr @dpu_encoder_helper_register_irq._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dpu_encoder_helper_register_irq._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 350, i32 3}
!24 = !{ptr @dpu_encoder_helper_register_irq._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dpu_encoder_helper_register_irq._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 358, i32 3}
!28 = !{ptr @dpu_encoder_helper_register_irq._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dpu_encoder_helper_register_irq._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 381, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 390, i32 3}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 430, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 488, i32 3}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dpu_encoder_helper_split_config._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @dpu_encoder_helper_split_config._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 520, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1326, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dpu_encoder_register_frame_event_callback._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dpu_encoder_register_frame_event_callback._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1585, i32 3}
!50 = !{ptr @dpu_encoder_trigger_kickoff_pending._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dpu_encoder_trigger_kickoff_pending._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1665, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dpu_encoder_vsync_time._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @dpu_encoder_vsync_time._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1683, i32 3}
!59 = !{ptr @dpu_encoder_vsync_time._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @dpu_encoder_vsync_time._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1691, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1754, i32 2}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1783, i32 2}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1823, i32 3}
!69 = !{ptr @dpu_encoder_prepare_commit._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dpu_encoder_prepare_commit._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @dpu_encoder_setup.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2124, i32 2}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dpu_encoder_setup.__key.35, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2128, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @dpu_encoder_setup.__key.37, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2134, i32 2}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dpu_encoder_setup.__key.39, !78, !"__key", i1 false, i1 false}
!81 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2143, i32 2}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2148, i32 2}
!86 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dpu_encoder_setup._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @dpu_encoder_setup._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @dpu_encoder_init.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2176, i32 2}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @dpu_encoder_init.__key.45, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2178, i32 2}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @dpu_encoder_init.__key.47, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2179, i32 2}
!97 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2192, i32 3}
!100 = !{ptr @dpu_encoder_wait_for_event._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dpu_encoder_wait_for_event._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2212, i32 4}
!104 = !{ptr @dpu_encoder_wait_for_event._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dpu_encoder_wait_for_event._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2218, i32 4}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2234, i32 3}
!110 = !{ptr @dpu_encoder_get_intf_mode._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @dpu_encoder_get_intf_mode._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 199, i32 1}
!114 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!116 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 188, i32 1}
!122 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 193, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1091, i32 3}
!128 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @_dpu_encoder_virt_enable_helper._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @_dpu_encoder_virt_enable_helper._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1097, i32 3}
!133 = !{ptr @_dpu_encoder_virt_enable_helper._entry.60, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @_dpu_encoder_virt_enable_helper._entry_ptr.62, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 654, i32 3}
!137 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @_dpu_encoder_update_vsync_source._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @_dpu_encoder_update_vsync_source._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 658, i32 3}
!142 = !{ptr @_dpu_encoder_update_vsync_source._entry.65, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @_dpu_encoder_update_vsync_source._entry_ptr.67, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 671, i32 3}
!146 = !{ptr @_dpu_encoder_update_vsync_source._entry.68, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @_dpu_encoder_update_vsync_source._entry_ptr.70, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @dither_matrix, !149, !"dither_matrix", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 216, i32 12}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 354, i32 1}
!152 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!153 = distinct !{null, !154, !"__already_done", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 358, i32 1}
!155 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 316, i32 1}
!158 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!159 = distinct !{null, !160, !"__already_done", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 508, i32 1}
!161 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1620, i32 3}
!164 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @_dpu_encoder_calculate_linetime._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @_dpu_encoder_calculate_linetime._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1626, i32 3}
!169 = !{ptr @_dpu_encoder_calculate_linetime._entry.73, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @_dpu_encoder_calculate_linetime._entry_ptr.75, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1632, i32 3}
!173 = !{ptr @_dpu_encoder_calculate_linetime._entry.76, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @_dpu_encoder_calculate_linetime._entry_ptr.78, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1642, i32 3}
!177 = !{ptr @_dpu_encoder_calculate_linetime._entry.79, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @_dpu_encoder_calculate_linetime._entry_ptr.81, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1646, i32 2}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 249, i32 1}
!183 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!184 = distinct !{null, !185, !"__already_done", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 106, i32 1}
!186 = distinct !{null, !185, !"__warned", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 755, i32 3}
!189 = !{ptr @dpu_encoder_resource_control._entry, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @dpu_encoder_resource_control._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 774, i32 24}
!193 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 780, i32 4}
!195 = !{ptr @.str.86, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 787, i32 4}
!197 = !{ptr @.str.87, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 793, i32 4}
!199 = !{ptr @.str.88, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 809, i32 6}
!201 = !{ptr @.str.89, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 822, i32 4}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 833, i32 4}
!205 = !{ptr @.str.91, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 843, i32 6}
!207 = !{ptr @.str.92, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 861, i32 4}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 872, i32 6}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 882, i32 4}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 887, i32 4}
!215 = !{ptr @.str.96, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 904, i32 6}
!217 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 913, i32 4}
!219 = !{ptr @.str.98, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 924, i32 4}
!221 = !{ptr @.str.99, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 939, i32 6}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 945, i32 3}
!225 = !{ptr @.str.101, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 949, i32 6}
!227 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 955, i32 5}
!229 = distinct !{null, !230, !"__already_done", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 367, i32 1}
!231 = distinct !{null, !230, !"__warned", i1 false, i1 false}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 696, i32 3}
!234 = !{ptr @_dpu_encoder_irq_control._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @_dpu_encoder_irq_control._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.104, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 702, i32 2}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 726, i32 3}
!240 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @_dpu_encoder_resource_control_helper._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @_dpu_encoder_resource_control_helper._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = distinct !{null, !244, !"__already_done", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 350, i32 1}
!245 = distinct !{null, !244, !"__warned", i1 false, i1 false}
!246 = distinct !{null, !247, !"__already_done", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 253, i32 1}
!248 = distinct !{null, !247, !"__warned", i1 false, i1 false}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1507, i32 2}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1512, i32 3}
!253 = !{ptr @.str.109, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @dpu_encoder_helper_hw_reset._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @dpu_encoder_helper_hw_reset._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = distinct !{null, !257, !"__already_done", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 245, i32 1}
!258 = distinct !{null, !257, !"__warned", i1 false, i1 false}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1412, i32 3}
!261 = !{ptr @.str.111, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @_dpu_encoder_trigger_flush._entry, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @_dpu_encoder_trigger_flush._entry_ptr, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.113, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1418, i32 3}
!266 = !{ptr @_dpu_encoder_trigger_flush._entry.112, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @_dpu_encoder_trigger_flush._entry_ptr.114, !265, !"_entry_ptr", i1 false, i1 false}
!268 = distinct !{null, !269, !"__already_done", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 426, i32 1}
!270 = distinct !{null, !269, !"__warned", i1 false, i1 false}
!271 = !{ptr @.str.115, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1444, i32 3}
!273 = !{ptr @.str.116, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @_dpu_encoder_trigger_start._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @_dpu_encoder_trigger_start._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @_dpu_encoder_trigger_start._entry.117, !277, !"_entry", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1449, i32 3}
!278 = !{ptr @_dpu_encoder_trigger_start._entry_ptr.118, !277, !"_entry_ptr", i1 false, i1 false}
!279 = distinct !{null, !280, !"__already_done", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 473, i32 1}
!281 = distinct !{null, !280, !"__warned", i1 false, i1 false}
!282 = !{ptr @.str.119, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1988, i32 3}
!284 = !{ptr @.str.120, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @dpu_encoder_setup_display._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @dpu_encoder_setup_display._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.121, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2011, i32 2}
!289 = !{ptr @.str.122, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @dpu_encoder_setup_display.__UNIQUE_ID_ddebug477, !288, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!291 = !{ptr @.str.123, !288, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.124, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2036, i32 3}
!294 = !{ptr @dpu_encoder_setup_display.__UNIQUE_ID_ddebug478, !293, !"__UNIQUE_ID_ddebug478", i1 false, i1 false}
!295 = !{ptr @.str.125, !293, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @.str.127, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2043, i32 4}
!298 = !{ptr @dpu_encoder_setup_display._entry.126, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @dpu_encoder_setup_display._entry_ptr.128, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.130, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2053, i32 5}
!302 = !{ptr @dpu_encoder_setup_display._entry.129, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @dpu_encoder_setup_display._entry_ptr.131, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @dpu_encoder_parent_ops, !305, !"dpu_encoder_parent_ops", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1972, i32 42}
!306 = !{ptr @.str.132, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1249, i32 2}
!308 = !{ptr @.str.133, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1267, i32 2}
!310 = distinct !{null, !311, !"__already_done", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 312, i32 1}
!312 = distinct !{null, !311, !"__warned", i1 false, i1 false}
!313 = distinct !{null, !314, !"__already_done", i1 false, i1 false}
!314 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 391, i32 1}
!315 = distinct !{null, !314, !"__warned", i1 false, i1 false}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 408, i32 1}
!318 = distinct !{null, !317, !"__warned", i1 false, i1 false}
!319 = !{ptr @.str.134, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1933, i32 3}
!321 = !{ptr @.str.135, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @dpu_encoder_virt_add_phys_encs._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @dpu_encoder_virt_add_phys_encs._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.137, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1942, i32 4}
!326 = !{ptr @dpu_encoder_virt_add_phys_encs._entry.136, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @dpu_encoder_virt_add_phys_encs._entry_ptr.138, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @.str.140, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1955, i32 4}
!330 = !{ptr @dpu_encoder_virt_add_phys_encs._entry.139, !329, !"_entry", i1 false, i1 false}
!331 = !{ptr @dpu_encoder_virt_add_phys_encs._entry_ptr.141, !329, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.142, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2075, i32 3}
!334 = !{ptr @dpu_encoder_frame_done_timeout._entry, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @dpu_encoder_frame_done_timeout._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.143, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2080, i32 3}
!338 = !{ptr @.str.144, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2084, i32 3}
!340 = !{ptr @.str.146, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2088, i32 2}
!342 = !{ptr @dpu_encoder_frame_done_timeout._entry.145, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @dpu_encoder_frame_done_timeout._entry_ptr.147, !341, !"_entry_ptr", i1 false, i1 false}
!344 = distinct !{null, !345, !"__already_done", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 491, i32 1}
!346 = distinct !{null, !345, !"__warned", i1 false, i1 false}
!347 = !{ptr @.str.148, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1708, i32 3}
!349 = !{ptr @dpu_encoder_vsync_event_handler._entry, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @dpu_encoder_vsync_event_handler._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.150, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1715, i32 3}
!353 = !{ptr @dpu_encoder_vsync_event_handler._entry.149, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @dpu_encoder_vsync_event_handler._entry_ptr.151, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.153, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1720, i32 3}
!357 = !{ptr @dpu_encoder_vsync_event_handler._entry.152, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @dpu_encoder_vsync_event_handler._entry_ptr.154, !356, !"_entry_ptr", i1 false, i1 false}
!359 = distinct !{null, !360, !"__already_done", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 469, i32 1}
!361 = distinct !{null, !360, !"__warned", i1 false, i1 false}
!362 = !{ptr @.str.155, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 449, i32 3}
!364 = !{ptr @dpu_encoder_destroy._entry, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @dpu_encoder_destroy._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.157, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 469, i32 3}
!368 = !{ptr @dpu_encoder_destroy._entry.156, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @dpu_encoder_destroy._entry_ptr.158, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @dpu_encoder_funcs, !371, !"dpu_encoder_funcs", i1 false, i1 false}
!371 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2102, i32 39}
!372 = !{ptr @.str.159, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1877, i32 3}
!374 = !{ptr @.str.160, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @_dpu_encoder_init_debugfs._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @_dpu_encoder_init_debugfs._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.161, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1881, i32 32}
!379 = !{ptr @.str.162, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1888, i32 22}
!381 = !{ptr @_dpu_encoder_status_fops, !382, !"_dpu_encoder_status_fops", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1867, i32 1}
!383 = !{ptr @.str.163, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1845, i32 17}
!385 = !{ptr @.str.164, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1852, i32 16}
!387 = !{ptr @.str.165, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1855, i32 16}
!389 = !{ptr @.str.166, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1858, i32 16}
!391 = !{ptr @dpu_encoder_helper_funcs, !392, !"dpu_encoder_helper_funcs", i1 false, i1 false}
!392 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 2095, i32 46}
!393 = !{ptr @.str.167, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 979, i32 3}
!395 = !{ptr @dpu_encoder_virt_mode_set._entry, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.169, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 992, i32 3}
!399 = !{ptr @dpu_encoder_virt_mode_set._entry.168, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.170, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.172, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1003, i32 3}
!403 = !{ptr @dpu_encoder_virt_mode_set._entry.171, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.173, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.175, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1006, i32 3}
!407 = !{ptr @dpu_encoder_virt_mode_set._entry.174, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.176, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.178, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1048, i32 4}
!411 = !{ptr @dpu_encoder_virt_mode_set._entry.177, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.179, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.181, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1054, i32 4}
!415 = !{ptr @dpu_encoder_virt_mode_set._entry.180, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.182, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.184, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1074, i32 4}
!419 = !{ptr @dpu_encoder_virt_mode_set._entry.183, !418, !"_entry", i1 false, i1 false}
!420 = !{ptr @dpu_encoder_virt_mode_set._entry_ptr.185, !418, !"_entry_ptr", i1 false, i1 false}
!421 = distinct !{null, !422, !"__already_done", i1 false, i1 false}
!422 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 237, i32 1}
!423 = distinct !{null, !422, !"__warned", i1 false, i1 false}
!424 = !{ptr @.str.186, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1210, i32 3}
!426 = !{ptr @.str.187, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @dpu_encoder_virt_disable._entry, !425, !"_entry", i1 false, i1 false}
!428 = !{ptr @dpu_encoder_virt_disable._entry_ptr, !425, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.188, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1220, i32 2}
!431 = distinct !{null, !432, !"__already_done", i1 false, i1 false}
!432 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 241, i32 1}
!433 = distinct !{null, !432, !"__warned", i1 false, i1 false}
!434 = !{ptr @.str.189, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 1166, i32 3}
!436 = !{ptr @.str.190, !435, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @dpu_encoder_virt_enable._entry, !435, !"_entry", i1 false, i1 false}
!438 = !{ptr @dpu_encoder_virt_enable._entry_ptr, !435, !"_entry_ptr", i1 false, i1 false}
!439 = distinct !{null, !440, !"__already_done", i1 false, i1 false}
!440 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 282, i32 1}
!441 = distinct !{null, !440, !"__warned", i1 false, i1 false}
!442 = !{ptr @.str.191, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 585, i32 3}
!444 = !{ptr @.str.192, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @dpu_encoder_virt_atomic_check._entry, !443, !"_entry", i1 false, i1 false}
!446 = !{ptr @dpu_encoder_virt_atomic_check._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.194, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c", i32 615, i32 4}
!449 = !{ptr @dpu_encoder_virt_atomic_check._entry.193, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @dpu_encoder_virt_atomic_check._entry_ptr.195, !448, !"_entry_ptr", i1 false, i1 false}
!451 = distinct !{null, !452, !"__already_done", i1 false, i1 false}
!452 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 233, i32 1}
!453 = distinct !{null, !452, !"__warned", i1 false, i1 false}
!454 = distinct !{null, !455, !"__already_done", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h", i32 321, i32 1}
!456 = distinct !{null, !455, !"__warned", i1 false, i1 false}
!457 = !{!"sp"}
!458 = !{i32 1, !"wchar_size", i32 2}
!459 = !{i32 1, !"min_enum_size", i32 4}
!460 = !{i32 8, !"branch-target-enforcement", i32 0}
!461 = !{i32 8, !"sign-return-address", i32 0}
!462 = !{i32 8, !"sign-return-address-all", i32 0}
!463 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!464 = !{i32 7, !"uwtable", i32 1}
!465 = !{i32 7, !"frame-pointer", i32 2}
!466 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!467 = !{i64 1088014, i64 1088041}
!468 = !{i64 1088709, i64 1088736, i64 1088769, i64 1088790, i64 1088817, i64 1088843}
!469 = !{i64 1128740, i64 1128801}
!470 = !{i64 1131472}
!471 = !{!"branch_weights", i32 1, i32 2000}
!472 = !{i64 1131757}
!473 = !{i64 2148548658, i64 2148548663, i64 2148548676, i64 2148548720, i64 2148548754, i64 2148548775}
!474 = !{!"branch_weights", i32 2000, i32 1}
!475 = !{i64 2157624671}
!476 = !{i64 2157624972}
!477 = !{i64 2149545065}
!478 = !{i64 2149546101}
!479 = !{i64 2157583338}
!480 = !{i64 2157583607}
!481 = !{i64 2157605711}
!482 = !{i64 2157605984}
!483 = !{i8 0, i8 2}
!484 = !{i64 2157944925}
!485 = !{i64 2157945150}
!486 = !{i64 2157965717}
!487 = !{i64 2157965952}
!488 = !{i64 2157890094}
!489 = !{i64 2157890329}
!490 = !{i64 2148573845, i64 2148574125, i64 2148574459, i64 2148574793}
!491 = !{i64 2157710623}
!492 = !{i64 2157710844}
!493 = !{i64 2157526406}
!494 = !{i64 2157526649}
!495 = !{i64 2157731661}
!496 = !{i64 2157731894}
!497 = !{!"auto-init"}
!498 = !{i64 2157694306}
!499 = !{i64 2157694511}
!500 = !{i64 2158098674}
!501 = !{i64 2158098903}
!502 = !{i64 2148983960}
!503 = !{i64 1230828, i64 1230845, i64 1230869, i64 1230895, i64 1230913}
!504 = !{i64 2148984330}
!505 = !{i64 2158190502}
!506 = !{i64 2158190821}
!507 = !{i64 2158000919}
!508 = !{i64 2158001206}
!509 = !{i64 2157928384}
!510 = !{i64 2157928609}
!511 = !{i64 2148809495}
!512 = !{i64 2148724780, i64 2148724812, i64 2148724841, i64 2148724875, i64 2148724906, i64 2148724929}
!513 = !{i64 2148809724}
!514 = !{i64 2158059773}
!515 = !{i64 2158060148}
!516 = !{i64 2148724060, i64 2148724086, i64 2148724115, i64 2148724149, i64 2148724180, i64 2148724203}
!517 = !{i64 2157873296}
!518 = !{i64 2157873523}
!519 = !{i64 2158018391}
!520 = !{i64 2158018660}
!521 = !{i64 2158040635}
!522 = !{i64 2158040896}
!523 = !{i64 2158115722}
!524 = !{i64 2158115963}
!525 = !{i64 2158077560}
!526 = !{i64 2158077795}
!527 = !{!528}
!528 = distinct !{!528, !529, !"dpu_encoder_get_topology: %agg.result"}
!529 = distinct !{!529, !"dpu_encoder_get_topology"}
!530 = !{i64 2157662226}
!531 = !{i64 2157662433}
!532 = !{i64 2157678293}
!533 = !{i64 2157678498}
!534 = !{i64 2157856752}
!535 = !{i64 2157856995}
!536 = !{i64 2157641844}
!537 = !{i64 2157642059}
!538 = !{i64 2157911351}
!539 = !{i64 2157911592}
