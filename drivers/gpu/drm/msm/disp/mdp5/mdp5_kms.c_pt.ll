; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdp_kms_funcs = type { %struct.msm_kms_funcs, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.mdp5_kms = type { %struct.mdp_kms, ptr, ptr, i32, [13 x ptr], i32, [8 x ptr], i32, [5 x ptr], ptr, i32, %struct.drm_modeset_lock, %struct.drm_private_obj, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i8, %struct.mdp_irq, i32 }
%struct.mdp_kms = type { %struct.msm_kms, ptr, i8, %struct.list_head, i32, i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mdp_irq = type { %struct.list_head, i32, i8, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.93, ptr, i32, ptr, i8, i32 }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.93 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mdp5_cfg_hw = type { ptr, %struct.mdp5_mdp_block, %struct.mdp5_smp_block, %struct.mdp5_ctl_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_pipe_block, %struct.mdp5_lm_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_sub_block, %struct.mdp5_intf_block, %struct.mdp5_perf_block, i32 }
%struct.mdp5_mdp_block = type { i32, [8 x i32], i32 }
%struct.mdp5_smp_block = type { i32, i32, [32 x i32], [2 x i32], [32 x i8] }
%struct.mdp5_ctl_block = type { i32, [8 x i32], i32 }
%struct.mdp5_pipe_block = type { i32, [8 x i32], i32 }
%struct.mdp5_lm_block = type { i32, [8 x i32], [8 x %struct.mdp5_lm_instance], i32, i32, i32 }
%struct.mdp5_lm_instance = type { i32, i32, i32, i32 }
%struct.mdp5_sub_block = type { i32, [8 x i32] }
%struct.mdp5_intf_block = type { [8 x i32], [5 x i32] }
%struct.mdp5_perf_block = type { i32, i32, i32 }
%struct.mdp5_cfg = type { ptr, %struct.mdp5_cfg_platform }
%struct.mdp5_cfg_platform = type { ptr }
%struct.dev_iommu = type { %struct.mutex, ptr, ptr, ptr, ptr, ptr }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.mdp5_interface = type { i32, i32, i32, i32 }
%struct.mdp5_hw_pipe = type { i32, ptr, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.mdp5_global_state = type { %struct.drm_private_state, ptr, ptr, %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_mixer_state, %struct.mdp5_smp_state }
%struct.drm_private_state = type { ptr }
%struct.mdp5_hw_pipe_state = type { [13 x ptr] }
%struct.mdp5_hw_mixer_state = type { [8 x ptr] }
%struct.mdp5_smp_state = type { [2 x i32], [32 x [2 x i32]], i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@kms_funcs = internal constant { %struct.mdp_kms_funcs, [40 x i8] } { %struct.mdp_kms_funcs { %struct.msm_kms_funcs { ptr @mdp5_hw_init, ptr @mdp5_irq_preinstall, ptr @mdp5_irq_postinstall, ptr @mdp5_irq_uninstall, ptr @mdp5_irq, ptr @mdp5_enable_vblank, ptr @mdp5_disable_vblank, ptr @mdp5_enable_commit, ptr @mdp5_disable_commit, ptr null, ptr @mdp5_prepare_commit, ptr @mdp5_flush_commit, ptr @mdp5_wait_flush, ptr @mdp5_complete_commit, ptr @mdp_get_format, ptr null, ptr @mdp5_round_pixclk, ptr @mdp5_set_split_display, ptr @mdp5_kms_destroy, ptr null, ptr @mdp5_kms_debugfs_init }, ptr @mdp5_set_irqmask }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"*ERROR* failed to init kms\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* failed to get irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdp5\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"no iommu, fallback to phys contig buffers for scanout\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* modeset_init failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mdp5_dt_match = dso_local constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdp5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss_mdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mdp5_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mdp5_dev_probe, ptr @mdp5_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdp5_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@msm_kms_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&kms->commit_lock[i]\00", [43 x i8] zeroinitializer }, align 32
@mdp5_debugfs_list = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.9, ptr @smp_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smp\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no SMP pool\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", [55 x i8] zeroinitializer }, align 32
@mdp5_cfg = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* failed to construct plane %d (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to construct crtc %d (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Skipping eDP interface %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* failed to find dsi from intf %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"*ERROR* unknown intf: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* failed to construct encoder\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msm_mdp\00", [24 x i8] zeroinitializer }, align 32
@mdp5_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdp5_runtime_suspend, ptr @mdp5_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdp5_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @mdp5_bind, ptr @mdp5_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdp0-mem\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdp1-mem\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rotator-mem\00", [20 x i8] zeroinitializer }, align 32
@mdp5_setup_interconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 962, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"No interconnect support may cause display underflows!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mdp5_setup_interconnect\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c\00", [55 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdp5_setup_interconnect._entry_ptr = internal global ptr @mdp5_setup_interconnect._entry, section ".printk_index", align 4
@mdp5_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&mdp5_kms->resource_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdp_phys\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MDP5\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bus\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsync\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lut\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tbu\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tbu_rt\00", [25 x i8] zeroinitializer }, align 32
@mdp5_global_state_funcs = internal constant { %struct.drm_private_state_funcs, [24 x i8] } { %struct.drm_private_state_funcs { ptr @mdp5_global_duplicate_state, ptr @mdp5_global_destroy_state }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to get %s (%ld)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"skipping %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MDP5 version v%d.%d\00", [44 x i8] zeroinitializer }, align 32
@hwpipe_init.rgb_planes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 6, i32 10], [16 x i8] zeroinitializer }, align 32
@hwpipe_init.vig_planes = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 9], [16 x i8] zeroinitializer }, align 32
@hwpipe_init.dma_planes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 8], [24 x i8] zeroinitializer }, align 32
@hwpipe_init.cursor_planes = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 11, i32 12], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* failed to construct pipe for %s (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@pipe2name.names = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr null, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG2\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB0\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB1\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB2\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA0\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMA1\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VIG3\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RGB3\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR0\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CURSOR1\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to construct LM%d (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to construct INTF%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/drm_modeset_lock.h\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 9]
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"kms_funcs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 265, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 575, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 582, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 614, i32 46 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 626, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 635, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"mdp5_dt_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1020, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1040, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"mdp5_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1028, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/msm/msm_kms.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 175, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"mdp5_debugfs_list\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 251, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 252, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 242, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 169, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 482, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 499, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 373, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 400, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 428, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 334, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1032, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"mdp5_pm_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 1016, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"mdp5_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 941, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 948, i32 50 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 949, i32 50 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 950, i32 53 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 962, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 821, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 830, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 830, i32 49 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 837, i32 42 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 840, i32 42 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 843, i32 43 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 846, i32 44 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 851, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 852, i32 36 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 853, i32 39 }
@___asan_gen_.196 = private unnamed_addr constant [24 x i8] c"mdp5_global_state_funcs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 122, i32 45 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 543, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 547, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 534, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [11 x i8] c"rgb_planes\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 702, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant [11 x i8] c"vig_planes\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 705, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"dma_planes\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 708, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"cursor_planes\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 711, i32 30 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 689, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 193, i32 21 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 195, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 195, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 195, i32 27 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 196, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 196, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 196, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 197, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 197, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 198, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 198, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 199, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 199, i32 18 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 761, i32 4 }
@___asan_gen_.266 = private constant [44 x i8] c"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 791, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [34 x i8] c"../include/drm/drm_modeset_lock.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 113, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @mdp5_setup_interconnect._entry, ptr @mdp5_setup_interconnect._entry_ptr, ptr @msm_mdp_unregister, ptr @kms_funcs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mdp5_dt_match, ptr @.str.7, ptr @mdp5_driver, ptr @msm_kms_init.__key, ptr @.str.8, ptr @mdp5_debugfs_list, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mdp5_pm_ops, ptr @mdp5_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @mdp5_init.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mdp5_global_state_funcs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @hwpipe_init.rgb_planes, ptr @hwpipe_init.vig_planes, ptr @hwpipe_init.dma_planes, ptr @hwpipe_init.cursor_planes, ptr @.str.40, ptr @pipe2name.names, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kms_funcs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_kms_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_debugfs_list to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_setup_interconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp5_global_state_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwpipe_init.rgb_planes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwpipe_init.vig_planes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwpipe_init.dma_planes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwpipe_init.cursor_planes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pipe2name.names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mdp5_get_existing_global_state(ptr nocapture noundef readonly %mdp5_kms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mdp5_kms, ptr %mdp5_kms, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_get_global_state(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kms, align 4
  %glob_state_lock = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 11
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %s, i32 0, i32 9
  %6 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %acquire_ctx, align 4
  %call = tail call i32 @drm_modeset_lock(ptr noundef %glob_state_lock, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %glob_state = getelementptr inbounds %struct.mdp5_kms, ptr %5, i32 0, i32 12
  %call5 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %s, ptr noundef %glob_state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %8, %if.then ], [ %call5, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdp5_kms_init(ptr nocapture noundef %dev) local_unnamed_addr #2 align 64 {
entry:
  %primary.i = alloca [8 x ptr], align 4
  %cursor.i = alloca [8 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %kms1 = getelementptr inbounds %struct.msm_drm_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %kms1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kms1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end:                                           ; preds = %entry
  %pdev5 = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev5, align 4
  %funcs1.i = getelementptr inbounds %struct.mdp_kms, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %funcs1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kms_funcs, ptr %funcs1.i, align 8
  %irq_list.i = getelementptr inbounds %struct.mdp_kms, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %irq_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %irq_list.i, ptr %irq_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mdp_kms, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %irq_list.i, ptr %prev.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 0
  tail call void @__mutex_init(ptr noundef %arrayidx.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.1.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 1
  tail call void @__mutex_init(ptr noundef %arrayidx.1.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.2.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 2
  tail call void @__mutex_init(ptr noundef %arrayidx.2.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.3.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 3
  tail call void @__mutex_init(ptr noundef %arrayidx.3.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.4.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 4
  tail call void @__mutex_init(ptr noundef %arrayidx.4.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.5.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 5
  tail call void @__mutex_init(ptr noundef %arrayidx.5.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.6.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 6
  tail call void @__mutex_init(ptr noundef %arrayidx.6.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %arrayidx.7.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 7, i32 7
  tail call void @__mutex_init(ptr noundef %arrayidx.7.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @msm_kms_init.__key) #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @kms_funcs, ptr %3, align 8
  %arrayidx5.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 0
  %call.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.i.i, ptr noundef nonnull %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond2.i.i, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.i.i:                                    ; preds = %if.end
  %arrayidx5.1.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 1
  %call.1.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.1.i.i, ptr noundef nonnull %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond2.1.i.i, label %for.cond2.i.i.if.then7_crit_edge

for.cond2.i.i.if.then7_crit_edge:                 ; preds = %for.cond2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.1.i.i:                                  ; preds = %for.cond2.i.i
  %arrayidx5.2.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 2
  %call.2.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.2.i.i, ptr noundef nonnull %3, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond2.2.i.i, label %for.cond2.1.i.i.if.then7_crit_edge

for.cond2.1.i.i.if.then7_crit_edge:               ; preds = %for.cond2.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.2.i.i:                                  ; preds = %for.cond2.1.i.i
  %arrayidx5.3.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 3
  %call.3.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.3.i.i, ptr noundef nonnull %3, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond2.3.i.i, label %for.cond2.2.i.i.if.then7_crit_edge

for.cond2.2.i.i.if.then7_crit_edge:               ; preds = %for.cond2.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.3.i.i:                                  ; preds = %for.cond2.2.i.i
  %arrayidx5.4.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 4
  %call.4.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.4.i.i, ptr noundef nonnull %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond2.4.i.i, label %for.cond2.3.i.i.if.then7_crit_edge

for.cond2.3.i.i.if.then7_crit_edge:               ; preds = %for.cond2.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.4.i.i:                                  ; preds = %for.cond2.3.i.i
  %arrayidx5.5.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 5
  %call.5.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.5.i.i, ptr noundef nonnull %3, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond2.5.i.i, label %for.cond2.4.i.i.if.then7_crit_edge

for.cond2.4.i.i.if.then7_crit_edge:               ; preds = %for.cond2.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

for.cond2.5.i.i:                                  ; preds = %for.cond2.4.i.i
  %arrayidx5.6.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 6
  %call.6.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.6.i.i, ptr noundef nonnull %3, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %mdp_kms_init.exit, label %for.cond2.5.i.i.if.then7_crit_edge

for.cond2.5.i.i.if.then7_crit_edge:               ; preds = %for.cond2.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

mdp_kms_init.exit:                                ; preds = %for.cond2.5.i.i
  %arrayidx5.7.i.i = getelementptr %struct.msm_kms, ptr %3, i32 0, i32 9, i32 7
  %call.7.i.i = tail call i32 @msm_atomic_init_pending_timer(ptr noundef %arrayidx5.7.i.i, ptr noundef nonnull %3, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i.i)
  %tobool6.not = icmp eq i32 %call.7.i.i, 0
  br i1 %tobool6.not, label %if.end9, label %mdp_kms_init.exit.if.then7_crit_edge

mdp_kms_init.exit.if.then7_crit_edge:             ; preds = %mdp_kms_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.then7:                                         ; preds = %mdp_kms_init.exit.if.then7_crit_edge, %for.cond2.5.i.i.if.then7_crit_edge, %for.cond2.4.i.i.if.then7_crit_edge, %for.cond2.3.i.i.if.then7_crit_edge, %for.cond2.2.i.i.if.then7_crit_edge, %for.cond2.1.i.i.if.then7_crit_edge, %for.cond2.i.i.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %retval.0.i.i156 = phi i32 [ %call.7.i.i, %mdp_kms_init.exit.if.then7_crit_edge ], [ %call.6.i.i, %for.cond2.5.i.i.if.then7_crit_edge ], [ %call.5.i.i, %for.cond2.4.i.i.if.then7_crit_edge ], [ %call.4.i.i, %for.cond2.3.i.i.if.then7_crit_edge ], [ %call.3.i.i, %for.cond2.2.i.i.if.then7_crit_edge ], [ %call.2.i.i, %for.cond2.1.i.i.if.then7_crit_edge ], [ %call.1.i.i, %for.cond2.i.i.if.then7_crit_edge ], [ %call.i.i, %if.end.if.then7_crit_edge ]
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %if.then65

if.end9:                                          ; preds = %mdp_kms_init.exit
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call11 = tail call i32 @irq_of_parse_and_map(ptr noundef %11, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef %call11) #9
  br label %if.then65

if.end14:                                         ; preds = %if.end9
  %irq15 = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call11, ptr %irq15, align 8
  %cfg = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 4
  %call16 = tail call ptr @mdp5_cfg_get_config(ptr noundef %14) #9
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev10, i32 noundef 4) #9
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 26
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14
  %i.0181 = phi i32 [ 0, %if.end14 ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call16, align 4
  %arrayidx = getelementptr %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 14, i32 1, i32 %i.0181
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %18)
  %cmp21 = icmp ugt i32 %18, 99
  br i1 %cmp21, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %intf = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %16, i32 0, i32 14
  %arrayidx26 = getelementptr [8 x i32], ptr %intf, i32 0, i32 %i.0181
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool27.not = icmp eq i32 %20, 0
  br i1 %tobool27.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end29

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end29:                                         ; preds = %lor.lhs.false
  %21 = zext i32 %i.0181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0181, label %do.body.i.i [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb5.i.i
    i32 3, label %sw.bb9.i.i
    i32 4, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %22 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %22, i32 0, i32 14
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit

sw.bb1.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %23 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %23, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit

sw.bb5.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %24 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %24, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit

sw.bb9.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %25 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %25, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit

sw.bb13.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %26 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %26, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit

do.body.i.i:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #9, !srcloc !143
  unreachable

REG_MDP5_INTF_TIMING_ENGINE_EN.exit:              ; preds = %sw.bb13.i.i, %sw.bb9.i.i, %sw.bb5.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.in.i.i = phi ptr [ %arrayidx16.i.i, %sw.bb13.i.i ], [ %arrayidx12.i.i, %sw.bb9.i.i ], [ %arrayidx8.i.i, %sw.bb5.i.i ], [ %arrayidx4.i.i, %sw.bb1.i.i ], [ %intf.i.i, %sw.bb.i.i ]
  %27 = ptrtoint ptr %retval.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %retval.0.i.i124 = load i32, ptr %retval.0.in.i.i, align 4
  %28 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp slt i32 %29, 1
  br i1 %cmp.i, label %do.end.i, label %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.mdp5_write.exit_crit_edge, !prof !144

REG_MDP5_INTF_TIMING_ENGINE_EN.exit.mdp5_write.exit_crit_edge: ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %REG_MDP5_INTF_TIMING_ENGINE_EN.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %REG_MDP5_INTF_TIMING_ENGINE_EN.exit.mdp5_write.exit_crit_edge
  %30 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %retval.0.i.i124
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #9
  %32 = zext i32 %i.0181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %i.0181, label %do.body.i.i135 [
    i32 0, label %sw.bb.i.i126
    i32 1, label %sw.bb1.i.i128
    i32 2, label %sw.bb5.i.i130
    i32 3, label %sw.bb9.i.i132
    i32 4, label %sw.bb13.i.i134
  ]

sw.bb.i.i126:                                     ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %33 = load ptr, ptr @mdp5_cfg, align 4
  %intf.i.i125 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %33, i32 0, i32 14
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit

sw.bb1.i.i128:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %34 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx4.i.i127 = getelementptr %struct.mdp5_cfg_hw, ptr %34, i32 0, i32 14, i32 0, i32 1
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit

sw.bb5.i.i130:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %35 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx8.i.i129 = getelementptr %struct.mdp5_cfg_hw, ptr %35, i32 0, i32 14, i32 0, i32 2
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit

sw.bb9.i.i132:                                    ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %36 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx12.i.i131 = getelementptr %struct.mdp5_cfg_hw, ptr %36, i32 0, i32 14, i32 0, i32 3
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit

sw.bb13.i.i134:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mdp5_cfg to i32))
  %37 = load ptr, ptr @mdp5_cfg, align 4
  %arrayidx16.i.i133 = getelementptr %struct.mdp5_cfg_hw, ptr %37, i32 0, i32 14, i32 0, i32 4
  br label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit

do.body.i.i135:                                   ; preds = %mdp5_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/mdp5/mdp5.xml.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1763, 0\0A.popsection", ""() #9, !srcloc !143
  unreachable

REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit:           ; preds = %sw.bb13.i.i134, %sw.bb9.i.i132, %sw.bb5.i.i130, %sw.bb1.i.i128, %sw.bb.i.i126
  %retval.0.in.i.i136 = phi ptr [ %arrayidx16.i.i133, %sw.bb13.i.i134 ], [ %arrayidx12.i.i131, %sw.bb9.i.i132 ], [ %arrayidx8.i.i129, %sw.bb5.i.i130 ], [ %arrayidx4.i.i127, %sw.bb1.i.i128 ], [ %intf.i.i125, %sw.bb.i.i126 ]
  %38 = ptrtoint ptr %retval.0.in.i.i136 to i32
  call void @__asan_load4_noabort(i32 %38)
  %retval.0.i.i137 = load i32, ptr %retval.0.in.i.i136, align 4
  %add.i = add i32 %retval.0.i.i137, 168
  %39 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i139 = icmp slt i32 %40, 1
  br i1 %cmp.i139, label %do.end.i140, label %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.mdp5_write.exit143_crit_edge, !prof !144

REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.mdp5_write.exit143_crit_edge: ; preds = %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit143

do.end.i140:                                      ; preds = %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit143

mdp5_write.exit143:                               ; preds = %do.end.i140, %REG_MDP5_INTF_FRAME_LINE_COUNT_EN.exit.mdp5_write.exit143_crit_edge
  %41 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %42, i32 %add.i
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i142) #9
  br label %for.inc

for.inc:                                          ; preds = %mdp5_write.exit143, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0181, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %while.body.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

while.body.preheader:                             ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #9
  %platform = getelementptr inbounds %struct.mdp5_cfg, ptr %call16, i32 0, i32 1
  %59 = ptrtoint ptr %platform to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %platform, align 4
  %tobool33.not = icmp eq ptr %60, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %while.body.preheader
  %iommu.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 37
  %61 = ptrtoint ptr %iommu.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iommu.i, align 4
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.then34.if.then38_crit_edge, label %dev_iommu_fwspec_get.exit

if.then34.if.then38_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

dev_iommu_fwspec_get.exit:                        ; preds = %if.then34
  %fwspec.i = getelementptr inbounds %struct.dev_iommu, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fwspec.i, align 4
  %tobool37.not = icmp eq ptr %64, null
  br i1 %tobool37.not, label %dev_iommu_fwspec_get.exit.if.then38_crit_edge, label %dev_iommu_fwspec_get.exit.if.end39_crit_edge

dev_iommu_fwspec_get.exit.if.end39_crit_edge:     ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

dev_iommu_fwspec_get.exit.if.then38_crit_edge:    ; preds = %dev_iommu_fwspec_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %dev_iommu_fwspec_get.exit.if.then38_crit_edge, %if.then34.if.then38_crit_edge
  %parent = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %dev_iommu_fwspec_get.exit.if.end39_crit_edge
  %iommu_dev.0 = phi ptr [ %dev10, %dev_iommu_fwspec_get.exit.if.end39_crit_edge ], [ %66, %if.then38 ]
  %call42 = tail call ptr @msm_iommu_new(ptr noundef %iommu_dev.0, ptr noundef nonnull %60) #9
  %call43 = tail call ptr @msm_gem_address_space_create(ptr noundef %call42, ptr noundef nonnull @.str.3, i64 noundef 4096, i64 noundef 4294963200) #9
  %cmp.i144 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then45, label %cleanup.thread

if.then45:                                        ; preds = %if.end39
  %cmp.i145 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then45.cleanup_crit_edge, label %if.then47

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %call42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call42, align 4
  %destroy = getelementptr inbounds %struct.msm_mmu_funcs, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %destroy, align 4
  tail call void %70(ptr noundef %call42) #9
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %aspace51 = getelementptr inbounds %struct.msm_kms, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %aspace51 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call43, ptr %aspace51, align 4
  br label %if.end53

cleanup:                                          ; preds = %if.then47, %if.then45.cleanup_crit_edge
  %72 = ptrtoint ptr %call43 to i32
  br label %if.then65

if.else:                                          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev10, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  br label %if.end53

if.end53:                                         ; preds = %if.else, %cleanup.thread
  %call.i146 = tail call i32 @__pm_runtime_idle(ptr noundef %dev10, i32 noundef 4) #9
  %dev1.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev1.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %primary.i) #9
  %77 = call ptr @memset(ptr %primary.i, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cursor.i) #9
  %78 = call ptr @memset(ptr %cursor.i, i32 0, i32 32)
  %num_intfs.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 7
  %79 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_intfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp156.not.i = icmp eq i32 %80, 0
  br i1 %cmp156.not.i, label %if.end53.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end53.for.end.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end53
  %ctlm2.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 14
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0157.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mdp5_kms, ptr %3, i32 0, i32 8, i32 %i.0157.i
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i, align 4
  %83 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1.i, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_private.i.i, align 4
  %87 = ptrtoint ptr %ctlm2.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ctlm2.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %82, i32 0, i32 2
  %89 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %type.i.i, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %90, label %sw.default.i.i [
    i32 9, label %sw.bb.i.i147
    i32 3, label %sw.bb4.i.i
    i32 1, label %sw.bb16.i.i
  ]

sw.bb.i.i147:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev3.i.i = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 2
  %92 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev3.i.i, align 4
  %num.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %82, i32 0, i32 1
  %94 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %93, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %95) #9
  br label %for.inc.i

sw.bb4.i.i:                                       ; preds = %for.body.i
  %hdmi.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %86, i32 0, i32 4
  %96 = ptrtoint ptr %hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hdmi.i.i, align 8
  %tobool.not.i.i148 = icmp eq ptr %97, null
  br i1 %tobool.not.i.i148, label %sw.bb4.i.i.for.inc.i_crit_edge, label %if.end.i.i

sw.bb4.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i:                                       ; preds = %sw.bb4.i.i
  %num5.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %82, i32 0, i32 1
  %98 = ptrtoint ptr %num5.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num5.i.i, align 4
  %call.i.i149 = tail call ptr @mdp5_ctlm_request(ptr noundef %88, i32 noundef %99) #9
  %tobool6.not.i.i = icmp eq ptr %call.i.i149, null
  br i1 %tobool6.not.i.i, label %if.end.i.i.modeset_init.exit.thread_crit_edge, label %if.end8.i.i

if.end.i.i.modeset_init.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread

if.end8.i.i:                                      ; preds = %if.end.i.i
  %100 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev1.i, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_private.i.i.i, align 4
  %call.i.i.i = tail call ptr @mdp5_encoder_init(ptr noundef %101, ptr noundef %82, ptr noundef nonnull %call.i.i149) #9
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then11.i.i, label %if.end13.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev3.i.i.i = getelementptr inbounds %struct.drm_device, ptr %101, i32 0, i32 2
  %104 = ptrtoint ptr %dev3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev3.i.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %105, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #9
  %106 = ptrtoint ptr %call.i.i.i to i32
  br label %modeset_init_intf.exit.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_encoders.i.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %103, i32 0, i32 28
  %107 = ptrtoint ptr %num_encoders.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %num_encoders.i.i.i, align 4
  %inc.i.i.i = add i32 %108, 1
  store i32 %inc.i.i.i, ptr %num_encoders.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.msm_drm_private, ptr %103, i32 0, i32 29, i32 %108
  %109 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call.i.i.i, ptr %arrayidx.i.i.i, align 4
  %110 = ptrtoint ptr %hdmi.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hdmi.i.i, align 8
  %call15.i.i = tail call i32 @msm_hdmi_modeset_init(ptr noundef %111, ptr noundef %84, ptr noundef %call.i.i.i) #9
  br label %modeset_init_intf.exit.i

sw.bb16.i.i:                                      ; preds = %for.body.i
  %112 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %cfg, align 4
  %call17.i.i = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %113) #9
  %num18.i.i = getelementptr inbounds %struct.mdp5_interface, ptr %82, i32 0, i32 1
  %114 = ptrtoint ptr %num18.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num18.i.i, align 4
  %connect.i.i.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call17.i.i, i32 0, i32 14, i32 1
  %116 = ptrtoint ptr %connect.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %connect.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %117)
  %cmp1.i.i.i = icmp eq i32 %117, 1
  br i1 %cmp1.i.i.i, label %if.then.i92.i.i, label %sw.bb16.i.i.for.inc.i.i.i_crit_edge

sw.bb16.i.i.for.inc.i.i.i_crit_edge:              ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i92.i.i:                                  ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp2.i.i.i = icmp eq i32 %115, 0
  br i1 %cmp2.i.i.i, label %if.then.i92.i.i.if.end24.i.i_crit_edge, label %if.then.i92.i.i.for.inc.i.i.i_crit_edge

if.then.i92.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.then.i92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i92.i.i.if.end24.i.i_crit_edge:           ; preds = %if.then.i92.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i92.i.i.for.inc.i.i.i_crit_edge, %sw.bb16.i.i.for.inc.i.i.i_crit_edge
  %id.1.i.i.i = phi i32 [ 0, %sw.bb16.i.i.for.inc.i.i.i_crit_edge ], [ 1, %if.then.i92.i.i.for.inc.i.i.i_crit_edge ]
  %arrayidx.1.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %call17.i.i, i32 0, i32 14, i32 1, i32 1
  %118 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %119)
  %cmp1.1.i.i.i = icmp eq i32 %119, 1
  br i1 %cmp1.1.i.i.i, label %if.then.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %115)
  %cmp2.1.i.i.i = icmp eq i32 %115, 1
  br i1 %cmp2.1.i.i.i, label %if.then.1.i.i.i.if.end24.i.i_crit_edge, label %if.end.1.i.i.i

if.then.1.i.i.i.if.end24.i.i_crit_edge:           ; preds = %if.then.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end.1.i.i.i:                                   ; preds = %if.then.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.1.i.i.i = add nuw nsw i32 %id.1.i.i.i, 1
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %id.1.1.i.i.i = phi i32 [ %inc.1.i.i.i, %if.end.1.i.i.i ], [ %id.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge ]
  %arrayidx.2.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %call17.i.i, i32 0, i32 14, i32 1, i32 2
  %120 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.2.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp1.2.i.i.i = icmp eq i32 %121, 1
  br i1 %cmp1.2.i.i.i, label %if.then.2.i.i.i, label %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge

for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp2.2.i.i.i = icmp eq i32 %115, 2
  br i1 %cmp2.2.i.i.i, label %if.then.2.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge, label %if.end.2.i.i.i

if.then.2.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge: ; preds = %if.then.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_dsi_id_from_intf.exit.i.i

if.end.2.i.i.i:                                   ; preds = %if.then.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.2.i.i.i = add nuw nsw i32 %id.1.1.i.i.i, 1
  br label %for.inc.2.i.i.i

for.inc.2.i.i.i:                                  ; preds = %if.end.2.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge
  %id.1.2.i.i.i = phi i32 [ %inc.2.i.i.i, %if.end.2.i.i.i ], [ %id.1.1.i.i.i, %for.inc.1.i.i.i.for.inc.2.i.i.i_crit_edge ]
  %arrayidx.3.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %call17.i.i, i32 0, i32 14, i32 1, i32 3
  %122 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %123)
  %cmp1.3.i.i.i = icmp eq i32 %123, 1
  br i1 %cmp1.3.i.i.i, label %if.then.3.i.i.i, label %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge

for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge:        ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i.i

if.then.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp2.3.i.i.i = icmp eq i32 %115, 3
  br i1 %cmp2.3.i.i.i, label %if.then.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge, label %if.end.3.i.i.i

if.then.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge: ; preds = %if.then.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_dsi_id_from_intf.exit.i.i

if.end.3.i.i.i:                                   ; preds = %if.then.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.3.i.i.i = add nuw nsw i32 %id.1.2.i.i.i, 1
  br label %for.inc.3.i.i.i

for.inc.3.i.i.i:                                  ; preds = %if.end.3.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge
  %id.1.3.i.i.i = phi i32 [ %inc.3.i.i.i, %if.end.3.i.i.i ], [ %id.1.2.i.i.i, %for.inc.2.i.i.i.for.inc.3.i.i.i_crit_edge ]
  %arrayidx.4.i.i.i = getelementptr %struct.mdp5_cfg_hw, ptr %call17.i.i, i32 0, i32 14, i32 1, i32 4
  %124 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.4.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %125)
  %cmp1.4.i.i.i = icmp eq i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %115)
  %cmp2.4.i.i.i = icmp eq i32 %115, 4
  %or.cond.i.i.i = and i1 %cmp2.4.i.i.i, %cmp1.4.i.i.i
  br i1 %or.cond.i.i.i, label %for.inc.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge, label %for.inc.3.i.i.i.if.then21.i.i_crit_edge

for.inc.3.i.i.i.if.then21.i.i_crit_edge:          ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

for.inc.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge: ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_dsi_id_from_intf.exit.i.i

get_dsi_id_from_intf.exit.i.i:                    ; preds = %for.inc.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge, %if.then.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge, %if.then.2.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %id.1.1.i.i.i, %if.then.2.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge ], [ %id.1.2.i.i.i, %if.then.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge ], [ %id.1.3.i.i.i, %for.inc.3.i.i.i.get_dsi_id_from_intf.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp ugt i32 %retval.0.i.i.i, 1
  br i1 %cmp.i.i, label %get_dsi_id_from_intf.exit.i.i.if.then21.i.i_crit_edge, label %get_dsi_id_from_intf.exit.i.i.if.end24.i.i_crit_edge

get_dsi_id_from_intf.exit.i.i.if.end24.i.i_crit_edge: ; preds = %get_dsi_id_from_intf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

get_dsi_id_from_intf.exit.i.i.if.then21.i.i_crit_edge: ; preds = %get_dsi_id_from_intf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then21.i.i

if.then21.i.i:                                    ; preds = %get_dsi_id_from_intf.exit.i.i.if.then21.i.i_crit_edge, %for.inc.3.i.i.i.if.then21.i.i_crit_edge
  %dev22.i.i = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 2
  %126 = ptrtoint ptr %dev22.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev22.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %127, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %115) #9
  br label %modeset_init.exit.thread

if.end24.i.i:                                     ; preds = %get_dsi_id_from_intf.exit.i.i.if.end24.i.i_crit_edge, %if.then.1.i.i.i.if.end24.i.i_crit_edge, %if.then.i92.i.i.if.end24.i.i_crit_edge
  %retval.0.i107.i.i = phi i32 [ %retval.0.i.i.i, %get_dsi_id_from_intf.exit.i.i.if.end24.i.i_crit_edge ], [ %id.1.i.i.i, %if.then.1.i.i.i.if.end24.i.i_crit_edge ], [ 0, %if.then.i92.i.i.if.end24.i.i_crit_edge ]
  %arrayidx.i.i150 = getelementptr %struct.msm_drm_private, ptr %86, i32 0, i32 5, i32 %retval.0.i107.i.i
  %128 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i150, align 4
  %tobool25.not.i.i = icmp eq ptr %129, null
  br i1 %tobool25.not.i.i, label %if.end24.i.i.for.inc.i_crit_edge, label %if.end27.i.i

if.end24.i.i.for.inc.i_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %call29.i.i = tail call ptr @mdp5_ctlm_request(ptr noundef %88, i32 noundef %115) #9
  %tobool30.not.i.i = icmp eq ptr %call29.i.i, null
  br i1 %tobool30.not.i.i, label %if.end27.i.i.modeset_init.exit.thread_crit_edge, label %if.end32.i.i

if.end27.i.i.modeset_init.exit.thread_crit_edge:  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread

if.end32.i.i:                                     ; preds = %if.end27.i.i
  %130 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev1.i, align 8
  %dev_private.i94.i.i = getelementptr inbounds %struct.drm_device, ptr %131, i32 0, i32 5
  %132 = ptrtoint ptr %dev_private.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_private.i94.i.i, align 4
  %call.i95.i.i = tail call ptr @mdp5_encoder_init(ptr noundef %131, ptr noundef %82, ptr noundef nonnull %call29.i.i) #9
  %cmp.i.i96.i.i = icmp ugt ptr %call.i95.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i96.i.i, label %if.then35.i.i, label %if.end37.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev3.i97.i.i = getelementptr inbounds %struct.drm_device, ptr %131, i32 0, i32 2
  %134 = ptrtoint ptr %dev3.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev3.i97.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %135, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #9
  %136 = ptrtoint ptr %call.i95.i.i to i32
  br label %modeset_init_intf.exit.i

if.end37.i.i:                                     ; preds = %if.end32.i.i
  %num_encoders.i99.i.i = getelementptr inbounds %struct.msm_drm_private, ptr %133, i32 0, i32 28
  %137 = ptrtoint ptr %num_encoders.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_encoders.i99.i.i, align 4
  %inc.i100.i.i = add i32 %138, 1
  store i32 %inc.i100.i.i, ptr %num_encoders.i99.i.i, align 4
  %arrayidx.i101.i.i = getelementptr %struct.msm_drm_private, ptr %133, i32 0, i32 29, i32 %138
  %139 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.i95.i.i, ptr %arrayidx.i101.i.i, align 4
  %140 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i150, align 4
  %call40.i.i = tail call i32 @msm_dsi_modeset_init(ptr noundef %141, ptr noundef %84, ptr noundef %call.i95.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i.i)
  %tobool41.not.i.i = icmp eq i32 %call40.i.i, 0
  br i1 %tobool41.not.i.i, label %if.then42.i.i, label %if.end37.i.i.modeset_init.exit.thread_crit_edge

if.end37.i.i.modeset_init.exit.thread_crit_edge:  ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread

if.then42.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i150, align 4
  %call45.i.i = tail call zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef %143) #9
  tail call void @mdp5_encoder_set_intf_mode(ptr noundef %call.i95.i.i, i1 noundef zeroext %call45.i.i) #9
  br label %for.inc.i

sw.default.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev48.i.i = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 2
  %144 = ptrtoint ptr %dev48.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev48.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %145, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %90) #9
  br label %modeset_init.exit.thread

modeset_init_intf.exit.i:                         ; preds = %if.then35.i.i, %if.end13.i.i, %if.then11.i.i
  %ret.1.i.i = phi i32 [ %106, %if.then11.i.i ], [ %call15.i.i, %if.end13.i.i ], [ %136, %if.then35.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool.not.i151 = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool.not.i151, label %modeset_init_intf.exit.i.for.inc.i_crit_edge, label %modeset_init_intf.exit.i.modeset_init.exit.thread_crit_edge

modeset_init_intf.exit.i.modeset_init.exit.thread_crit_edge: ; preds = %modeset_init_intf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread

modeset_init_intf.exit.i.for.inc.i_crit_edge:     ; preds = %modeset_init_intf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %modeset_init_intf.exit.i.for.inc.i_crit_edge, %if.then42.i.i, %if.end24.i.i.for.inc.i_crit_edge, %sw.bb4.i.i.for.inc.i_crit_edge, %sw.bb.i.i147
  %inc.i = add nuw i32 %i.0157.i, 1
  %146 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_intfs.i, align 4
  %cmp.i152 = icmp ult i32 %inc.i, %147
  br i1 %cmp.i152, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end53.for.end.i_crit_edge
  %num_encoders.i = getelementptr inbounds %struct.msm_drm_private, ptr %76, i32 0, i32 28
  %148 = ptrtoint ptr %num_encoders.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_encoders.i, align 4
  %num_hwmixers.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 5
  %150 = ptrtoint ptr %num_hwmixers.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %num_hwmixers.i, align 8
  %152 = tail call i32 @llvm.umin.i32(i32 %149, i32 %151) #9
  %num_hwpipes.i = getelementptr inbounds %struct.mdp5_kms, ptr %3, i32 0, i32 3
  %153 = ptrtoint ptr %num_hwpipes.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_hwpipes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp4158.not.i = icmp eq i32 %154, 0
  br i1 %cmp4158.not.i, label %for.end.i.for.cond37.preheader.i_crit_edge, label %for.body5.lr.ph.i

for.end.i.for.cond37.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader.i

for.body5.lr.ph.i:                                ; preds = %for.end.i
  %num_planes.i = getelementptr inbounds %struct.msm_drm_private, ptr %76, i32 0, i32 23
  br label %for.body5.i

for.cond37.preheader.i:                           ; preds = %for.inc34.i.for.cond37.preheader.i_crit_edge, %for.end.i.for.cond37.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp38162.not.i = icmp eq i32 %152, 0
  br i1 %cmp38162.not.i, label %for.cond37.preheader.i.for.cond57.preheader.i_crit_edge, label %for.body39.lr.ph.i

for.cond37.preheader.i.for.cond57.preheader.i_crit_edge: ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i

for.body39.lr.ph.i:                               ; preds = %for.cond37.preheader.i
  %num_crtcs48.i = getelementptr inbounds %struct.msm_drm_private, ptr %76, i32 0, i32 25
  br label %for.body39.i

for.body5.i:                                      ; preds = %for.inc34.i.for.body5.i_crit_edge, %for.body5.lr.ph.i
  %ci.0161.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %ci.2.ph.i, %for.inc34.i.for.body5.i_crit_edge ]
  %pi.0160.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %pi.1.i, %for.inc34.i.for.body5.i_crit_edge ]
  %i.1159.i = phi i32 [ 0, %for.body5.lr.ph.i ], [ %inc35.i, %for.inc34.i.for.body5.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1159.i, i32 %152)
  %cmp7.i = icmp ult i32 %i.1159.i, %152
  br i1 %cmp7.i, label %for.body5.i.if.end13.i_crit_edge, label %if.else.i

for.body5.i.if.end13.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.else.i:                                        ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6.i = getelementptr %struct.mdp5_kms, ptr %3, i32 0, i32 4, i32 %i.1159.i
  %155 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx6.i, align 4
  %caps.i = getelementptr inbounds %struct.mdp5_hw_pipe, ptr %156, i32 0, i32 4
  %157 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %caps.i, align 4
  %and.i = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp ne i32 %and.i, 0
  %159 = lshr exact i32 %and.i, 5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %for.body5.i.if.end13.i_crit_edge
  %cmp27.i = phi i1 [ false, %for.body5.i.if.end13.i_crit_edge ], [ %tobool9.not.i, %if.else.i ]
  %type.0.i = phi i32 [ 1, %for.body5.i.if.end13.i_crit_edge ], [ %159, %if.else.i ]
  %call14.i = tail call ptr @mdp5_plane_init(ptr noundef %74, i32 noundef %type.0.i) #9
  %cmp.i127.i = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127.i, label %cleanup.i, label %if.end19.i

if.end19.i:                                       ; preds = %if.end13.i
  %160 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_planes.i, align 4
  %inc20.i = add i32 %161, 1
  store i32 %inc20.i, ptr %num_planes.i, align 4
  %arrayidx21.i = getelementptr %struct.msm_drm_private, ptr %76, i32 0, i32 24, i32 %161
  %162 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call14.i, ptr %arrayidx21.i, align 4
  br i1 %cmp7.i, label %if.then23.i, label %if.end19.i.if.end26.i_crit_edge

if.end19.i.if.end26.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc24.i = add i32 %pi.0160.i, 1
  %arrayidx25.i = getelementptr [8 x ptr], ptr %primary.i, i32 0, i32 %pi.0160.i
  %163 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call14.i, ptr %arrayidx25.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end19.i.if.end26.i_crit_edge
  %pi.1.i = phi i32 [ %inc24.i, %if.then23.i ], [ %pi.0160.i, %if.end19.i.if.end26.i_crit_edge ]
  br i1 %cmp27.i, label %if.then28.i, label %if.end26.i.for.inc34.i_crit_edge

if.end26.i.for.inc34.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc34.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc29.i = add i32 %ci.0161.i, 1
  %arrayidx30.i = getelementptr [8 x ptr], ptr %cursor.i, i32 0, i32 %ci.0161.i
  %164 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call14.i, ptr %arrayidx30.i, align 4
  br label %for.inc34.i

cleanup.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %call14.i to i32
  %dev18.i = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %166 = ptrtoint ptr %dev18.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev18.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %167, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %i.1159.i, i32 noundef %165) #9
  br label %modeset_init.exit

for.inc34.i:                                      ; preds = %if.then28.i, %if.end26.i.for.inc34.i_crit_edge
  %ci.2.ph.i = phi i32 [ %ci.0161.i, %if.end26.i.for.inc34.i_crit_edge ], [ %inc29.i, %if.then28.i ]
  %inc35.i = add nuw i32 %i.1159.i, 1
  %168 = ptrtoint ptr %num_hwpipes.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_hwpipes.i, align 8
  %cmp4.i = icmp ult i32 %inc35.i, %169
  br i1 %cmp4.i, label %for.inc34.i.for.body5.i_crit_edge, label %for.inc34.i.for.cond37.preheader.i_crit_edge

for.inc34.i.for.cond37.preheader.i_crit_edge:     ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond37.preheader.i

for.inc34.i.for.body5.i_crit_edge:                ; preds = %for.inc34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5.i

for.cond57.preheader.i:                           ; preds = %for.inc54.i.for.cond57.preheader.i_crit_edge, %for.cond37.preheader.i.for.cond57.preheader.i_crit_edge
  %170 = ptrtoint ptr %num_encoders.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_encoders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %cmp59164.not.i = icmp eq i32 %171, 0
  br i1 %cmp59164.not.i, label %for.cond57.preheader.i.modeset_init.exit.thread166_crit_edge, label %for.body60.lr.ph.i

for.cond57.preheader.i.modeset_init.exit.thread166_crit_edge: ; preds = %for.cond57.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread166

for.body60.lr.ph.i:                               ; preds = %for.cond57.preheader.i
  %num_crtcs62.i = getelementptr inbounds %struct.msm_drm_private, ptr %76, i32 0, i32 25
  br label %for.body60.i

for.body39.i:                                     ; preds = %for.inc54.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %i.2163.i = phi i32 [ 0, %for.body39.lr.ph.i ], [ %inc55.i, %for.inc54.i.for.body39.i_crit_edge ]
  %arrayidx40.i = getelementptr [8 x ptr], ptr %primary.i, i32 0, i32 %i.2163.i
  %172 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx40.i, align 4
  %arrayidx41.i = getelementptr [8 x ptr], ptr %cursor.i, i32 0, i32 %i.2163.i
  %174 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx41.i, align 4
  %call42.i = tail call ptr @mdp5_crtc_init(ptr noundef %74, ptr noundef %173, ptr noundef %175, i32 noundef %i.2163.i) #9
  %cmp.i128.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %cleanup51.i, label %for.inc54.i

cleanup51.i:                                      ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #11
  %176 = ptrtoint ptr %call42.i to i32
  %dev46.i = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %177 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev46.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %178, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %i.2163.i, i32 noundef %176) #9
  br label %modeset_init.exit

for.inc54.i:                                      ; preds = %for.body39.i
  %179 = ptrtoint ptr %num_crtcs48.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %num_crtcs48.i, align 8
  %inc49.i = add i32 %180, 1
  store i32 %inc49.i, ptr %num_crtcs48.i, align 8
  %arrayidx50.i = getelementptr %struct.msm_drm_private, ptr %76, i32 0, i32 26, i32 %180
  %181 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call42.i, ptr %arrayidx50.i, align 4
  %inc55.i = add nuw i32 %i.2163.i, 1
  %exitcond.not.i = icmp eq i32 %inc55.i, %152
  br i1 %exitcond.not.i, label %for.inc54.i.for.cond57.preheader.i_crit_edge, label %for.inc54.i.for.body39.i_crit_edge

for.inc54.i.for.body39.i_crit_edge:               ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39.i

for.inc54.i.for.cond57.preheader.i_crit_edge:     ; preds = %for.inc54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond57.preheader.i

for.body60.i:                                     ; preds = %for.body60.i.for.body60.i_crit_edge, %for.body60.lr.ph.i
  %i.3165.i = phi i32 [ 0, %for.body60.lr.ph.i ], [ %inc64.i, %for.body60.i.for.body60.i_crit_edge ]
  %arrayidx61.i = getelementptr %struct.msm_drm_private, ptr %76, i32 0, i32 29, i32 %i.3165.i
  %182 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx61.i, align 4
  %184 = ptrtoint ptr %num_crtcs62.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_crtcs62.i, align 8
  %notmask.i = shl nsw i32 -1, %185
  %sub.i = xor i32 %notmask.i, -1
  %possible_crtcs.i = getelementptr inbounds %struct.drm_encoder, ptr %183, i32 0, i32 6
  %186 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %sub.i, ptr %possible_crtcs.i, align 4
  %inc64.i = add nuw i32 %i.3165.i, 1
  %187 = ptrtoint ptr %num_encoders.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %num_encoders.i, align 4
  %cmp59.i = icmp ult i32 %inc64.i, %188
  br i1 %cmp59.i, label %for.body60.i.for.body60.i_crit_edge, label %for.body60.i.modeset_init.exit.thread166_crit_edge

for.body60.i.modeset_init.exit.thread166_crit_edge: ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %modeset_init.exit.thread166

for.body60.i.for.body60.i_crit_edge:              ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60.i

modeset_init.exit.thread:                         ; preds = %modeset_init_intf.exit.i.modeset_init.exit.thread_crit_edge, %sw.default.i.i, %if.end37.i.i.modeset_init.exit.thread_crit_edge, %if.end27.i.i.modeset_init.exit.thread_crit_edge, %if.then21.i.i, %if.end.i.i.modeset_init.exit.thread_crit_edge
  %retval.0.i153.ph = phi i32 [ -22, %sw.default.i.i ], [ -22, %if.then21.i.i ], [ -22, %if.end.i.i.modeset_init.exit.thread_crit_edge ], [ -22, %if.end27.i.i.modeset_init.exit.thread_crit_edge ], [ %call40.i.i, %if.end37.i.i.modeset_init.exit.thread_crit_edge ], [ %ret.1.i.i, %modeset_init_intf.exit.i.modeset_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %primary.i) #9
  br label %if.then58

modeset_init.exit.thread166:                      ; preds = %for.body60.i.modeset_init.exit.thread166_crit_edge, %for.cond57.preheader.i.modeset_init.exit.thread166_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %primary.i) #9
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %189 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %190 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %191 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 65535, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %192 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 65535, ptr %max_height, align 4
  %max_vblank_count = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 26
  %193 = ptrtoint ptr %max_vblank_count to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 0, ptr %max_vblank_count, align 4
  %vblank_disable_immediate = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 22
  %194 = ptrtoint ptr %vblank_disable_immediate to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %vblank_disable_immediate, align 4
  br label %cleanup68

modeset_init.exit:                                ; preds = %cleanup51.i, %cleanup.i
  %retval.0.i153 = phi i32 [ %165, %cleanup.i ], [ %176, %cleanup51.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cursor.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %primary.i) #9
  br label %if.then58

if.then58:                                        ; preds = %modeset_init.exit, %modeset_init.exit.thread
  %retval.0.i153164 = phi i32 [ %retval.0.i153.ph, %modeset_init.exit.thread ], [ %retval.0.i153, %modeset_init.exit ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i153164) #9
  br label %if.then65

if.then65:                                        ; preds = %if.then58, %cleanup, %if.then12, %if.then7
  %ret.1 = phi i32 [ %retval.0.i.i156, %if.then7 ], [ %call11, %if.then12 ], [ %72, %cleanup ], [ %retval.0.i153164, %if.then58 ]
  tail call void @mdp5_kms_destroy(ptr noundef nonnull %3)
  %195 = inttoptr i32 %ret.1 to ptr
  br label %cleanup68

cleanup68:                                        ; preds = %if.then65, %modeset_init.exit.thread166, %entry.cleanup68_crit_edge
  %retval.0 = phi ptr [ %195, %if.then65 ], [ %3, %modeset_init.exit.thread166 ], [ null, %entry.cleanup68_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_kms_destroy(ptr noundef %kms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aspace4 = getelementptr inbounds %struct.msm_kms, ptr %kms, i32 0, i32 3
  %0 = ptrtoint ptr %aspace4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aspace4, align 4
  %num_hwmixers = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 5
  %2 = ptrtoint ptr %num_hwmixers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_hwmixers, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.for.cond5.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %num_hwpipes = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 3
  %4 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_hwpipes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp628.not = icmp eq i32 %5, 0
  br i1 %cmp628.not, label %for.cond5.preheader.for.end11_crit_edge, label %for.cond5.preheader.for.body7_crit_edge

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond5.preheader.for.end11_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %kms, i32 0, i32 6, i32 %i.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @mdp5_mixer_destroy(ptr noundef %7) #9
  %inc = add nuw i32 %i.027, 1
  %8 = ptrtoint ptr %num_hwmixers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hwmixers, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond5.preheader_crit_edge

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %i.129 = phi i32 [ %inc10, %for.body7.for.body7_crit_edge ], [ 0, %for.cond5.preheader.for.body7_crit_edge ]
  %arrayidx8 = getelementptr %struct.mdp5_kms, ptr %kms, i32 0, i32 4, i32 %i.129
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  tail call void @mdp5_pipe_destroy(ptr noundef %11) #9
  %inc10 = add nuw i32 %i.129, 1
  %12 = ptrtoint ptr %num_hwpipes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_hwpipes, align 8
  %cmp6 = icmp ult i32 %inc10, %13
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end11_crit_edge

for.body7.for.end11_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.end11:                                        ; preds = %for.body7.for.end11_crit_edge, %for.cond5.preheader.for.end11_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.end11.if.end_crit_edge, label %if.then

for.end11.if.end_crit_edge:                       ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #11
  %mmu = getelementptr inbounds %struct.msm_gem_address_space, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmu, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef %15) #9
  tail call void @msm_gem_address_space_put(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end11.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 0
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.i.i) #9
  %arrayidx.1.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 1
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.1.i.i) #9
  %arrayidx.2.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 2
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.2.i.i) #9
  %arrayidx.3.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 3
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.3.i.i) #9
  %arrayidx.4.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 4
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.4.i.i) #9
  %arrayidx.5.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 5
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.5.i.i) #9
  %arrayidx.6.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 6
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.6.i.i) #9
  %arrayidx.7.i.i = getelementptr %struct.msm_kms, ptr %kms, i32 0, i32 9, i32 7
  tail call void @msm_atomic_destroy_pending_timer(ptr noundef %arrayidx.7.i.i) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_mdp_register() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdp5_driver, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @msm_mdp_unregister() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdp5_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_atomic_init_pending_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_hw_init(ptr noundef %kms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev4, i32 noundef 4) #9
  %resource_lock = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 23
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %resource_lock) #9
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 26
  %2 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp slt i32 %3, 1
  br i1 %cmp.i, label %do.end.i, label %entry.mdp5_write.exit_crit_edge, !prof !144

entry.mdp5_write.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 169, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_write.exit

mdp5_write.exit:                                  ; preds = %do.end.i, %entry.mdp5_write.exit_crit_edge
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 15
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %resource_lock, i32 noundef %call8) #9
  %ctlm = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 14
  %6 = ptrtoint ptr %ctlm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlm, align 8
  tail call void @mdp5_ctlm_hw_reset(ptr noundef %7) #9
  %call.i18 = tail call i32 @__pm_runtime_idle(ptr noundef %dev4, i32 noundef 4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_irq_preinstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_irq_postinstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_irq_uninstall(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_enable_vblank(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_disable_vblank(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_enable_commit(ptr nocapture noundef readonly %kms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_disable_commit(ptr nocapture noundef readonly %kms) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_prepare_commit(ptr nocapture noundef readonly %kms, ptr nocapture noundef readnone %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 13
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %smp5 = getelementptr inbounds %struct.mdp5_global_state, ptr %3, i32 0, i32 5
  tail call void @mdp5_smp_prepare_commit(ptr noundef nonnull %1, ptr noundef %smp5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mdp5_flush_commit(ptr nocapture noundef %kms, i32 noundef %crtc_mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_wait_flush(ptr nocapture noundef readonly %kms, i32 noundef %crtc_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn19 = load ptr, ptr %crtc_list, align 4
  %cmp.not22 = icmp eq ptr %.pn19, %crtc_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn23, i32 148
  %3 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %4
  %and = and i32 %shl.i, %crtc_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %crtc.024 = getelementptr i8, ptr %.pn23, i32 -8
  tail call void @mdp5_crtc_wait_for_commit_done(ptr noundef %crtc.024) #9
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn23, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %crtc_list9 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 20
  %cmp.not = icmp eq ptr %.pn, %crtc_list9
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_complete_commit(ptr nocapture noundef readonly %kms, i32 noundef %crtc_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 13
  %0 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %state.i = getelementptr inbounds %struct.mdp5_kms, ptr %kms, i32 0, i32 12, i32 2
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %smp5 = getelementptr inbounds %struct.mdp5_global_state, ptr %3, i32 0, i32 5
  tail call void @mdp5_smp_complete_commit(ptr noundef nonnull %1, ptr noundef %smp5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp_get_format(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mdp5_round_pixclk(ptr nocapture noundef readnone %kms, i32 noundef returned %rate, ptr nocapture noundef readnone %encoder) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_set_split_display(ptr nocapture noundef readnone %kms, ptr noundef %encoder, ptr noundef %slave_encoder, i1 noundef zeroext %is_cmd_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_cmd_mode, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @mdp5_cmd_encoder_set_split_display(ptr noundef %encoder, ptr noundef %slave_encoder) #9
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @mdp5_vid_encoder_set_split_display(ptr noundef %encoder, ptr noundef %slave_encoder) #9
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_kms_debugfs_init(ptr nocapture noundef readnone %kms, ptr noundef %minor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @mdp5_debugfs_list, i32 noundef 1, ptr noundef %1, ptr noundef %minor) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_set_irqmask(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_ctlm_hw_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_prepare_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_crtc_wait_for_commit_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_complete_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_cmd_encoder_set_split_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_vid_encoder_set_split_display(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smp_show(ptr noundef %m, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %kms = getelementptr inbounds %struct.msm_drm_private, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %kms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kms, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #9
  %10 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %11 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %12 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !145
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @__drm_puts_seq_file, ptr %10, align 4, !alias.scope !145
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %11, align 4, !alias.scope !145
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %12, align 4, !alias.scope !145
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %9, i32 0, i32 13
  %17 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %smp, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @mdp5_smp_dump(ptr noundef nonnull %18, ptr noundef nonnull %p) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_plane_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_crtc_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_ctlm_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_get_hw_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_modeset_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_encoder_set_intf_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @msm_dsi_is_cmd_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_mixer_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_pipe_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_destroy_pending_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @of_icc_get(ptr noundef %dev.i, ptr noundef nonnull @.str.19) #9
  %call2.i = tail call ptr @of_icc_get(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #9
  %call4.i = tail call ptr @of_icc_get(ptr noundef %dev.i, ptr noundef nonnull @.str.21) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mdp5_setup_interconnect.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end9.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.22) #12
  br label %if.end

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @icc_set_bw(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 6400000) #9
  %tobool.not.i.i = icmp eq ptr %call2.i, null
  %cmp.i29.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i29.i
  br i1 %spec.select.i.i, label %if.end9.i.if.end14.i_crit_edge, label %if.then12.i

if.end9.i.if.end14.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 @icc_set_bw(ptr noundef nonnull %call2.i, i32 noundef 0, i32 noundef 6400000) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end14.i_crit_edge
  %tobool.not.i30.i = icmp eq ptr %call4.i, null
  %cmp.i31.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i32.i = or i1 %tobool.not.i30.i, %cmp.i31.i
  br i1 %spec.select.i32.i, label %if.end14.i.if.end_crit_edge, label %if.then16.i

if.end14.i.if.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 @icc_set_bw(ptr noundef nonnull %call4.i, i32 noundef 0, i32 noundef 6400000) #9
  br label %if.end

mdp5_setup_interconnect.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %if.then16.i, %if.end14.i.if.end_crit_edge, %do.end.i
  %call1 = tail call i32 @component_add(ptr noundef %dev.i, ptr noundef nonnull @mdp5_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mdp5_setup_interconnect.exit
  %retval.0 = phi i32 [ %call1, %if.end ], [ %0, %mdp5_setup_interconnect.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @mdp5_ops) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_bind(ptr noundef %dev, ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2080, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.mdp5_init.exit_crit_edge, label %if.end.i

entry.mdp5_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_init.exit

if.end.i:                                         ; preds = %entry
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %resource_lock.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %resource_lock.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @mdp5_init.__key, i16 noundef signext 3) #9
  %dev3.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %dev3.i, align 8
  %pdev4.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %pdev4.i, align 4
  %glob_state_lock.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 11
  tail call void @drm_modeset_lock_init(ptr noundef %glob_state_lock.i.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 368) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.then90.i_crit_edge, label %if.end8.i

if.end.i.if.then90.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then90.i

if.end8.i:                                        ; preds = %if.end.i
  %mdp5_kms1.i.i = getelementptr inbounds %struct.mdp5_global_state, ptr %call7.i.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mdp5_kms1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %mdp5_kms1.i.i, align 8
  %11 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev3.i, align 8
  %glob_state.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 12
  tail call void @drm_atomic_private_obj_init(ptr noundef %12, ptr noundef %glob_state.i.i, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mdp5_global_state_funcs) #9
  %call9.i = tail call ptr @msm_ioremap(ptr noundef %add.ptr, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  %mmio.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i, ptr %mmio.i, align 4
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call9.i to i32
  br label %if.then90.i

if.end15.i:                                       ; preds = %if.end8.i
  %call.i164.i = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.30) #9
  %cmp.i.i.i = icmp ugt ptr %call.i164.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %get_clk.exit.i, label %get_clk.exit.thread.i

get_clk.exit.thread.i:                            ; preds = %if.end15.i
  %axi_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i164.i, ptr %axi_clk.i, align 4
  %call.i167.i = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.31) #9
  %cmp.i.i168.i = icmp ugt ptr %call.i167.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i168.i, label %get_clk.exit175.i, label %get_clk.exit175.thread.i

get_clk.exit.i:                                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %call.i164.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, i32 noundef %16) #9
  br label %if.then90.i

get_clk.exit175.thread.i:                         ; preds = %get_clk.exit.thread.i
  %ahb_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i167.i, ptr %ahb_clk.i, align 4
  %core_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 18
  %call.i56 = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.32) #9
  %cmp.i.i57 = icmp ugt ptr %call.i56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i57, label %get_clk.exit65, label %get_clk.exit65.thread

get_clk.exit65.thread:                            ; preds = %get_clk.exit175.thread.i
  %18 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i56, ptr %core_clk.i, align 4
  %call.i47 = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.33) #9
  %cmp.i.i48 = icmp ugt ptr %call.i47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i48, label %get_clk.exit55, label %get_clk.exit55.thread

get_clk.exit65:                                   ; preds = %get_clk.exit175.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call.i56 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, i32 noundef %19) #9
  br label %if.then90.i

get_clk.exit175.i:                                ; preds = %get_clk.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call.i167.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.31, i32 noundef %20) #9
  br label %if.then90.i

get_clk.exit55.thread:                            ; preds = %get_clk.exit65.thread
  %vsync_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 22
  %21 = ptrtoint ptr %vsync_clk.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i47, ptr %vsync_clk.i, align 4
  %call.i39 = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.34) #9
  %cmp.i.i40 = icmp ugt ptr %call.i39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i40, label %if.then6.i42, label %if.else.i43

get_clk.exit55:                                   ; preds = %get_clk.exit65.thread
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call.i47 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, i32 noundef %22) #9
  br label %if.then90.i

if.then6.i42:                                     ; preds = %get_clk.exit55.thread
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34) #9
  br label %get_clk.exit46

if.else.i43:                                      ; preds = %get_clk.exit55.thread
  call void @__sanitizer_cov_trace_pc() #11
  %lut_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %lut_clk.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i39, ptr %lut_clk.i, align 4
  br label %get_clk.exit46

get_clk.exit46:                                   ; preds = %if.else.i43, %if.then6.i42
  %call.i31 = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.35) #9
  %cmp.i.i32 = icmp ugt ptr %call.i31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i32, label %if.then6.i34, label %if.else.i35

if.then6.i34:                                     ; preds = %get_clk.exit46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35) #9
  br label %get_clk.exit38

if.else.i35:                                      ; preds = %get_clk.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %tbu_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 20
  %24 = ptrtoint ptr %tbu_clk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i31, ptr %tbu_clk.i, align 4
  br label %get_clk.exit38

get_clk.exit38:                                   ; preds = %if.else.i35, %if.then6.i34
  %call.i26 = tail call ptr @msm_clk_get(ptr noundef %add.ptr, ptr noundef nonnull @.str.36) #9
  %cmp.i.i27 = icmp ugt ptr %call.i26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %get_clk.exit38
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36) #9
  br label %get_clk.exit

if.else.i:                                        ; preds = %get_clk.exit38
  call void @__sanitizer_cov_trace_pc() #11
  %tbu_rt_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 21
  %25 = ptrtoint ptr %tbu_rt_clk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i26, ptr %tbu_rt_clk.i, align 4
  br label %get_clk.exit

get_clk.exit:                                     ; preds = %if.else.i, %if.then6.i
  %26 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core_clk.i, align 8
  %call36.i = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef 200000000) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %rpm_enabled.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 24
  %28 = ptrtoint ptr %rpm_enabled.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %rpm_enabled.i, align 8
  %29 = ptrtoint ptr %pdev4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev4.i, align 4
  %dev1.i23 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %call.i.i24 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i23, i32 noundef 4) #9
  %enable_count.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 26
  %31 = ptrtoint ptr %enable_count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %enable_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i.i25 = icmp slt i32 %32, 1
  br i1 %cmp.i.i25, label %do.end.i.i, label %get_clk.exit.read_mdp_hw_revision.exit_crit_edge, !prof !144

get_clk.exit.read_mdp_hw_revision.exit_crit_edge: ; preds = %get_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_mdp_hw_revision.exit

do.end.i.i:                                       ; preds = %get_clk.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 175, i32 noundef 9, ptr noundef null) #9
  br label %read_mdp_hw_revision.exit

read_mdp_hw_revision.exit:                        ; preds = %do.end.i.i, %get_clk.exit.read_mdp_hw_revision.exit_crit_edge
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %call.i12.i = tail call i32 @msm_readl(ptr noundef %34) #9
  %call.i13.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1.i23, i32 noundef 4) #9
  %shr.i = lshr i32 %call.i12.i, 28
  %and4.i = lshr i32 %call.i12.i, 16
  %shr5.i = and i32 %and4.i, 4095
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i23, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.39, i32 noundef %shr.i, i32 noundef %shr5.i) #9
  %call38.i = tail call ptr @mdp5_cfg_init(ptr noundef nonnull %call.i.i, i32 noundef %shr.i, i32 noundef %shr5.i) #9
  %cfg.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call38.i, ptr %cfg.i, align 4
  %cmp.i176.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176.i, label %if.then41.i, label %if.end45.i

if.then41.i:                                      ; preds = %read_mdp_hw_revision.exit
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %call38.i to i32
  %37 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %cfg.i, align 4
  br label %if.then90.i

if.end45.i:                                       ; preds = %read_mdp_hw_revision.exit
  %call47.i = tail call ptr @mdp5_cfg_get_config(ptr noundef %call38.i) #9
  %38 = ptrtoint ptr %call47.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call47.i, align 4
  %caps.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %39, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %caps.i, align 4
  %caps48.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %caps48.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %caps48.i, align 8
  %43 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %core_clk.i, align 8
  %45 = load ptr, ptr %call47.i, align 4
  %max_clk.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %max_clk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_clk.i, align 4
  %call51.i = tail call i32 @clk_set_rate(ptr noundef %44, i32 noundef %47) #9
  %48 = ptrtoint ptr %caps48.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %caps48.i, align 8
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool53.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool53.not.i, label %if.end45.i.if.end65.i_crit_edge, label %if.then54.i

if.end45.i.if.end65.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then54.i:                                      ; preds = %if.end45.i
  %50 = ptrtoint ptr %call47.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call47.i, align 4
  %smp.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %51, i32 0, i32 2
  %call56.i = tail call ptr @mdp5_smp_init(ptr noundef nonnull %call.i.i, ptr noundef %smp.i) #9
  %smp57.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 13
  %52 = ptrtoint ptr %smp57.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call56.i, ptr %smp57.i, align 4
  %cmp.i177.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.then60.i, label %if.then54.i.if.end65.i_crit_edge

if.then54.i.if.end65.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i

if.then60.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %call56.i to i32
  %54 = ptrtoint ptr %smp57.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %smp57.i, align 4
  br label %if.then90.i

if.end65.i:                                       ; preds = %if.then54.i.if.end65.i_crit_edge, %if.end45.i.if.end65.i_crit_edge
  %55 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i, align 4
  %57 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cfg.i, align 4
  %call68.i = tail call ptr @mdp5_ctlm_init(ptr noundef %3, ptr noundef %56, ptr noundef %58) #9
  %ctlm.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 14
  %59 = ptrtoint ptr %ctlm.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call68.i, ptr %ctlm.i, align 8
  %cmp.i178.i = icmp ugt ptr %call68.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178.i, label %if.then71.i, label %if.end75.i

if.then71.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %call68.i to i32
  %61 = ptrtoint ptr %ctlm.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %ctlm.i, align 8
  br label %if.then90.i

if.end75.i:                                       ; preds = %if.end65.i
  %62 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cfg.i, align 4
  %call.i16 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %63) #9
  %pipe_rgb.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 5
  %64 = ptrtoint ptr %pipe_rgb.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pipe_rgb.i, align 4
  %base.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 5, i32 1
  %caps.i17 = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 5, i32 2
  %66 = ptrtoint ptr %caps.i17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caps.i17, align 4
  %68 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp27.i.i = icmp sgt i32 %65, 0
  br i1 %cmp27.i.i, label %for.body.lr.ph.i.i, label %if.end75.i.if.end.i20_crit_edge

if.end75.i.if.end.i20_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i20

for.body.lr.ph.i.i:                               ; preds = %if.end75.i
  %num_hwpipes.i.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc10.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @hwpipe_init.rgb_planes, i32 %i.028.i.i
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr i32, ptr %base.i, i32 %i.028.i.i
  %72 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx2.i.i, align 4
  %call.i.i18 = tail call ptr @mdp5_pipe_init(i32 noundef %71, i32 noundef %73, i32 noundef %67) #9
  %cmp.i.i.i19 = icmp ugt ptr %call.i.i18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i19, label %for.body.i.i.hwpipe_init.exit_crit_edge, label %for.inc.i.i

for.body.i.i.hwpipe_init.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwpipe_init.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %74 = ptrtoint ptr %num_hwpipes.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_hwpipes.i.i, align 8
  %76 = ptrtoint ptr %call.i.i18 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %call.i.i18, align 4
  %77 = load i32, ptr %num_hwpipes.i.i, align 8
  %inc.i.i = add i32 %77, 1
  store i32 %inc.i.i, ptr %num_hwpipes.i.i, align 8
  %arrayidx9.i.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 4, i32 %77
  %78 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i18, ptr %arrayidx9.i.i, align 4
  %inc10.i.i = add nuw nsw i32 %i.028.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc10.i.i, %65
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i20_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end.i20_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i20

if.end.i20:                                       ; preds = %for.inc.i.i.if.end.i20_crit_edge, %if.end75.i.if.end.i20_crit_edge
  %pipe_vig.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 4
  %79 = ptrtoint ptr %pipe_vig.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %pipe_vig.i, align 4
  %base6.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 4, i32 1
  %caps9.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %caps9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %caps9.i, align 4
  %83 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp27.i58.i = icmp sgt i32 %80, 0
  br i1 %cmp27.i58.i, label %for.body.lr.ph.i60.i, label %if.end.i20.if.end13.i_crit_edge

if.end.i20.if.end13.i_crit_edge:                  ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

for.body.lr.ph.i60.i:                             ; preds = %if.end.i20
  %num_hwpipes.i59.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i66.i

for.body.i66.i:                                   ; preds = %for.inc.i75.i.for.body.i66.i_crit_edge, %for.body.lr.ph.i60.i
  %i.028.i61.i = phi i32 [ 0, %for.body.lr.ph.i60.i ], [ %inc10.i73.i, %for.inc.i75.i.for.body.i66.i_crit_edge ]
  %arrayidx.i62.i = getelementptr i32, ptr @hwpipe_init.vig_planes, i32 %i.028.i61.i
  %85 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i62.i, align 4
  %arrayidx2.i63.i = getelementptr i32, ptr %base6.i, i32 %i.028.i61.i
  %87 = ptrtoint ptr %arrayidx2.i63.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx2.i63.i, align 4
  %call.i64.i = tail call ptr @mdp5_pipe_init(i32 noundef %86, i32 noundef %88, i32 noundef %82) #9
  %cmp.i.i65.i = icmp ugt ptr %call.i64.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i65.i, label %for.body.i66.i.hwpipe_init.exit_crit_edge, label %for.inc.i75.i

for.body.i66.i.hwpipe_init.exit_crit_edge:        ; preds = %for.body.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwpipe_init.exit

for.inc.i75.i:                                    ; preds = %for.body.i66.i
  %89 = ptrtoint ptr %num_hwpipes.i59.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_hwpipes.i59.i, align 8
  %91 = ptrtoint ptr %call.i64.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %call.i64.i, align 4
  %92 = load i32, ptr %num_hwpipes.i59.i, align 8
  %inc.i71.i = add i32 %92, 1
  store i32 %inc.i71.i, ptr %num_hwpipes.i59.i, align 8
  %arrayidx9.i72.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 4, i32 %92
  %93 = ptrtoint ptr %arrayidx9.i72.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i64.i, ptr %arrayidx9.i72.i, align 4
  %inc10.i73.i = add nuw nsw i32 %i.028.i61.i, 1
  %exitcond.not.i74.i = icmp eq i32 %inc10.i73.i, %80
  br i1 %exitcond.not.i74.i, label %for.inc.i75.i.if.end13.i_crit_edge, label %for.inc.i75.i.for.body.i66.i_crit_edge

for.inc.i75.i.for.body.i66.i_crit_edge:           ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i66.i

for.inc.i75.i.if.end13.i_crit_edge:               ; preds = %for.inc.i75.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %for.inc.i75.i.if.end13.i_crit_edge, %if.end.i20.if.end13.i_crit_edge
  %pipe_dma.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 6
  %94 = ptrtoint ptr %pipe_dma.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pipe_dma.i, align 4
  %base16.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 6, i32 1
  %caps19.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 6, i32 2
  %96 = ptrtoint ptr %caps19.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %caps19.i, align 4
  %98 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp27.i79.i = icmp sgt i32 %95, 0
  br i1 %cmp27.i79.i, label %for.body.lr.ph.i81.i, label %if.end13.i.if.end23.i_crit_edge

if.end13.i.if.end23.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

for.body.lr.ph.i81.i:                             ; preds = %if.end13.i
  %num_hwpipes.i80.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i87.i

for.body.i87.i:                                   ; preds = %for.inc.i96.i.for.body.i87.i_crit_edge, %for.body.lr.ph.i81.i
  %i.028.i82.i = phi i32 [ 0, %for.body.lr.ph.i81.i ], [ %inc10.i94.i, %for.inc.i96.i.for.body.i87.i_crit_edge ]
  %arrayidx.i83.i = getelementptr i32, ptr @hwpipe_init.dma_planes, i32 %i.028.i82.i
  %100 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i83.i, align 4
  %arrayidx2.i84.i = getelementptr i32, ptr %base16.i, i32 %i.028.i82.i
  %102 = ptrtoint ptr %arrayidx2.i84.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx2.i84.i, align 4
  %call.i85.i = tail call ptr @mdp5_pipe_init(i32 noundef %101, i32 noundef %103, i32 noundef %97) #9
  %cmp.i.i86.i = icmp ugt ptr %call.i85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i86.i, label %for.body.i87.i.hwpipe_init.exit_crit_edge, label %for.inc.i96.i

for.body.i87.i.hwpipe_init.exit_crit_edge:        ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwpipe_init.exit

for.inc.i96.i:                                    ; preds = %for.body.i87.i
  %104 = ptrtoint ptr %num_hwpipes.i80.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_hwpipes.i80.i, align 8
  %106 = ptrtoint ptr %call.i85.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %call.i85.i, align 4
  %107 = load i32, ptr %num_hwpipes.i80.i, align 8
  %inc.i92.i = add i32 %107, 1
  store i32 %inc.i92.i, ptr %num_hwpipes.i80.i, align 8
  %arrayidx9.i93.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 4, i32 %107
  %108 = ptrtoint ptr %arrayidx9.i93.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call.i85.i, ptr %arrayidx9.i93.i, align 4
  %inc10.i94.i = add nuw nsw i32 %i.028.i82.i, 1
  %exitcond.not.i95.i = icmp eq i32 %inc10.i94.i, %95
  br i1 %exitcond.not.i95.i, label %for.inc.i96.i.if.end23.i_crit_edge, label %for.inc.i96.i.for.body.i87.i_crit_edge

for.inc.i96.i.for.body.i87.i_crit_edge:           ; preds = %for.inc.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i87.i

for.inc.i96.i.if.end23.i_crit_edge:               ; preds = %for.inc.i96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %for.inc.i96.i.if.end23.i_crit_edge, %if.end13.i.if.end23.i_crit_edge
  %pipe_cursor.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 7
  %109 = ptrtoint ptr %pipe_cursor.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %pipe_cursor.i, align 4
  %base26.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 7, i32 1
  %caps29.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i16, i32 0, i32 7, i32 2
  %111 = ptrtoint ptr %caps29.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %caps29.i, align 4
  %113 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp27.i100.i = icmp sgt i32 %110, 0
  br i1 %cmp27.i100.i, label %for.body.lr.ph.i102.i, label %if.end23.i.if.end79.i_crit_edge

if.end23.i.if.end79.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

for.body.lr.ph.i102.i:                            ; preds = %if.end23.i
  %num_hwpipes.i101.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 3
  br label %for.body.i108.i

for.body.i108.i:                                  ; preds = %for.inc.i117.i.for.body.i108.i_crit_edge, %for.body.lr.ph.i102.i
  %i.028.i103.i = phi i32 [ 0, %for.body.lr.ph.i102.i ], [ %inc10.i115.i, %for.inc.i117.i.for.body.i108.i_crit_edge ]
  %arrayidx.i104.i = getelementptr i32, ptr @hwpipe_init.cursor_planes, i32 %i.028.i103.i
  %115 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i104.i, align 4
  %arrayidx2.i105.i = getelementptr i32, ptr %base26.i, i32 %i.028.i103.i
  %117 = ptrtoint ptr %arrayidx2.i105.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx2.i105.i, align 4
  %call.i106.i = tail call ptr @mdp5_pipe_init(i32 noundef %116, i32 noundef %118, i32 noundef %112) #9
  %cmp.i.i107.i = icmp ugt ptr %call.i106.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i107.i, label %for.body.i108.i.hwpipe_init.exit_crit_edge, label %for.inc.i117.i

for.body.i108.i.hwpipe_init.exit_crit_edge:       ; preds = %for.body.i108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hwpipe_init.exit

for.inc.i117.i:                                   ; preds = %for.body.i108.i
  %119 = ptrtoint ptr %num_hwpipes.i101.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_hwpipes.i101.i, align 8
  %121 = ptrtoint ptr %call.i106.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %call.i106.i, align 4
  %122 = load i32, ptr %num_hwpipes.i101.i, align 8
  %inc.i113.i = add i32 %122, 1
  store i32 %inc.i113.i, ptr %num_hwpipes.i101.i, align 8
  %arrayidx9.i114.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 4, i32 %122
  %123 = ptrtoint ptr %arrayidx9.i114.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i106.i, ptr %arrayidx9.i114.i, align 4
  %inc10.i115.i = add nuw nsw i32 %i.028.i103.i, 1
  %exitcond.not.i116.i = icmp eq i32 %inc10.i115.i, %110
  br i1 %exitcond.not.i116.i, label %for.inc.i117.i.if.end79.i_crit_edge, label %for.inc.i117.i.for.body.i108.i_crit_edge

for.inc.i117.i.for.body.i108.i_crit_edge:         ; preds = %for.inc.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i108.i

for.inc.i117.i.if.end79.i_crit_edge:              ; preds = %for.inc.i117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

hwpipe_init.exit:                                 ; preds = %for.body.i108.i.hwpipe_init.exit_crit_edge, %for.body.i87.i.hwpipe_init.exit_crit_edge, %for.body.i66.i.hwpipe_init.exit_crit_edge, %for.body.i.i.hwpipe_init.exit_crit_edge
  %.sink.i = phi ptr [ %114, %for.body.i108.i.hwpipe_init.exit_crit_edge ], [ %99, %for.body.i87.i.hwpipe_init.exit_crit_edge ], [ %84, %for.body.i66.i.hwpipe_init.exit_crit_edge ], [ %69, %for.body.i.i.hwpipe_init.exit_crit_edge ]
  %.lcssa.sink.i = phi i32 [ %116, %for.body.i108.i.hwpipe_init.exit_crit_edge ], [ %101, %for.body.i87.i.hwpipe_init.exit_crit_edge ], [ %86, %for.body.i66.i.hwpipe_init.exit_crit_edge ], [ %71, %for.body.i.i.hwpipe_init.exit_crit_edge ]
  %.sink160.in.i = phi ptr [ %call.i106.i, %for.body.i108.i.hwpipe_init.exit_crit_edge ], [ %call.i85.i, %for.body.i87.i.hwpipe_init.exit_crit_edge ], [ %call.i64.i, %for.body.i66.i.hwpipe_init.exit_crit_edge ], [ %call.i.i18, %for.body.i.i.hwpipe_init.exit_crit_edge ]
  %.sink160.i = ptrtoint ptr %.sink160.in.i to i32
  %dev5.i110.i = getelementptr inbounds %struct.drm_device, ptr %.sink.i, i32 0, i32 2
  %124 = ptrtoint ptr %dev5.i110.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev5.i110.i, align 4
  %arrayidx.i.i111.i = getelementptr [13 x ptr], ptr @pipe2name.names, i32 0, i32 %.lcssa.sink.i
  %126 = ptrtoint ptr %arrayidx.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i111.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %125, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, ptr noundef %127, i32 noundef %.sink160.i) #9
  br label %if.then90.i

if.end79.i:                                       ; preds = %for.inc.i117.i.if.end79.i_crit_edge, %if.end23.i.if.end79.i_crit_edge
  %128 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev3.i, align 8
  %130 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cfg.i, align 4
  %call.i9 = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %131) #9
  %lm.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i9, i32 0, i32 8
  %132 = ptrtoint ptr %lm.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %lm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp28.not.i = icmp eq i32 %133, 0
  br i1 %cmp28.not.i, label %if.end79.i.if.end83.i_crit_edge, label %for.body.lr.ph.i

if.end79.i.if.end83.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

for.body.lr.ph.i:                                 ; preds = %if.end79.i
  %num_hwmixers.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i13.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.inc.i13.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mdp5_cfg_hw, ptr %call.i9, i32 0, i32 8, i32 2, i32 %i.029.i
  %call3.i = tail call ptr @mdp5_mixer_init(ptr noundef %arrayidx.i) #9
  %cmp.i.i10 = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i10, label %hwmixer_init.exit, label %for.inc.i13

for.inc.i13:                                      ; preds = %for.body.i
  %134 = ptrtoint ptr %num_hwmixers.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_hwmixers.i, align 8
  %136 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %call3.i, align 4
  %137 = load i32, ptr %num_hwmixers.i, align 8
  %inc.i12 = add i32 %137, 1
  store i32 %inc.i12, ptr %num_hwmixers.i, align 8
  %arrayidx8.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 6, i32 %137
  %138 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call3.i, ptr %arrayidx8.i, align 4
  %inc9.i = add nuw i32 %i.029.i, 1
  %139 = ptrtoint ptr %lm.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %lm.i, align 4
  %cmp.i = icmp ult i32 %inc9.i, %140
  br i1 %cmp.i, label %for.inc.i13.for.body.i_crit_edge, label %for.inc.i13.if.end83.i_crit_edge

for.inc.i13.if.end83.i_crit_edge:                 ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

for.inc.i13.for.body.i_crit_edge:                 ; preds = %for.inc.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

hwmixer_init.exit:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = ptrtoint ptr %call3.i to i32
  %dev6.i11 = getelementptr inbounds %struct.drm_device, ptr %129, i32 0, i32 2
  %142 = ptrtoint ptr %dev6.i11 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev6.i11, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %143, ptr noundef nonnull @.str, ptr noundef nonnull @.str.53, i32 noundef %i.029.i, i32 noundef %141) #9
  br label %if.then90.i

if.end83.i:                                       ; preds = %for.inc.i13.if.end83.i_crit_edge, %if.end79.i.if.end83.i_crit_edge
  %144 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev3.i, align 8
  %146 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cfg.i, align 4
  %call.i = tail call ptr @mdp5_cfg_get_hw_config(ptr noundef %147) #9
  %connect.i = getelementptr inbounds %struct.mdp5_cfg_hw, ptr %call.i, i32 0, i32 14, i32 1
  %num_intfs.i = getelementptr inbounds %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 7
  %148 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %connect.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp3.i = icmp eq i32 %149, 0
  br i1 %cmp3.i, label %if.end83.i.for.inc.i_crit_edge, label %if.end.i6

if.end83.i.for.inc.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i6:                                        ; preds = %if.end83.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %150 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %150, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i5 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i5, label %if.end.i6.interface_init.exit_crit_edge, label %if.end7.i

if.end.i6.interface_init.exit_crit_edge:          ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  br label %interface_init.exit

if.end7.i:                                        ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #11
  %num.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %num.i, align 4
  %152 = ptrtoint ptr %connect.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %connect.i, align 4
  %type.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.i, i32 0, i32 2
  %154 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %type.i, align 8
  %mode.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %mode.i, align 4
  %156 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %num_intfs.i, align 4
  %158 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %call7.i.i.i, align 8
  %inc.i = add i32 %157, 1
  store i32 %inc.i, ptr %num_intfs.i, align 4
  %arrayidx10.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 8, i32 %157
  %159 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call7.i.i.i, ptr %arrayidx10.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %if.end83.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mdp5_cfg_hw, ptr %call.i, i32 0, i32 14, i32 1, i32 1
  %160 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %cmp3.1.i = icmp eq i32 %161, 0
  br i1 %cmp3.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %162 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %162, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %if.end.1.i.interface_init.exit_crit_edge, label %if.end7.1.i

if.end.1.i.interface_init.exit_crit_edge:         ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %interface_init.exit

if.end7.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %num.1.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.1.i, i32 0, i32 1
  %163 = ptrtoint ptr %num.1.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %num.1.i, align 4
  %164 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.1.i, align 4
  %type.1.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.1.i, i32 0, i32 2
  %166 = ptrtoint ptr %type.1.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %165, ptr %type.1.i, align 8
  %mode.1.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.1.i, i32 0, i32 3
  %167 = ptrtoint ptr %mode.1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %mode.1.i, align 4
  %168 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_intfs.i, align 4
  %170 = ptrtoint ptr %call7.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %169, ptr %call7.i.i.1.i, align 8
  %inc.1.i = add i32 %169, 1
  store i32 %inc.1.i, ptr %num_intfs.i, align 4
  %arrayidx10.1.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 8, i32 %169
  %171 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call7.i.i.1.i, ptr %arrayidx10.1.i, align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end7.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.mdp5_cfg_hw, ptr %call.i, i32 0, i32 14, i32 1, i32 2
  %172 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp3.2.i = icmp eq i32 %173, 0
  br i1 %cmp3.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %174 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.2.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.2.i = icmp eq ptr %call7.i.i.2.i, null
  br i1 %tobool.not.2.i, label %if.end.2.i.interface_init.exit_crit_edge, label %if.end7.2.i

if.end.2.i.interface_init.exit_crit_edge:         ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %interface_init.exit

if.end7.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %num.2.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.2.i, i32 0, i32 1
  %175 = ptrtoint ptr %num.2.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 2, ptr %num.2.i, align 4
  %176 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.2.i, align 4
  %type.2.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.2.i, i32 0, i32 2
  %178 = ptrtoint ptr %type.2.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %type.2.i, align 8
  %mode.2.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.2.i, i32 0, i32 3
  %179 = ptrtoint ptr %mode.2.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %mode.2.i, align 4
  %180 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_intfs.i, align 4
  %182 = ptrtoint ptr %call7.i.i.2.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %call7.i.i.2.i, align 8
  %inc.2.i = add i32 %181, 1
  store i32 %inc.2.i, ptr %num_intfs.i, align 4
  %arrayidx10.2.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 8, i32 %181
  %183 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call7.i.i.2.i, ptr %arrayidx10.2.i, align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end7.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.mdp5_cfg_hw, ptr %call.i, i32 0, i32 14, i32 1, i32 3
  %184 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp3.3.i = icmp eq i32 %185, 0
  br i1 %cmp3.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %186 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.3.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %186, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.3.i = icmp eq ptr %call7.i.i.3.i, null
  br i1 %tobool.not.3.i, label %if.end.3.i.interface_init.exit_crit_edge, label %if.end7.3.i

if.end.3.i.interface_init.exit_crit_edge:         ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %interface_init.exit

if.end7.3.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %num.3.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.3.i, i32 0, i32 1
  %187 = ptrtoint ptr %num.3.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 3, ptr %num.3.i, align 4
  %188 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.3.i, align 4
  %type.3.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.3.i, i32 0, i32 2
  %190 = ptrtoint ptr %type.3.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %type.3.i, align 8
  %mode.3.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.3.i, i32 0, i32 3
  %191 = ptrtoint ptr %mode.3.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %mode.3.i, align 4
  %192 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %num_intfs.i, align 4
  %194 = ptrtoint ptr %call7.i.i.3.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %call7.i.i.3.i, align 8
  %inc.3.i = add i32 %193, 1
  store i32 %inc.3.i, ptr %num_intfs.i, align 4
  %arrayidx10.3.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 8, i32 %193
  %195 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call7.i.i.3.i, ptr %arrayidx10.3.i, align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end7.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.mdp5_cfg_hw, ptr %call.i, i32 0, i32 14, i32 1, i32 4
  %196 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp3.4.i = icmp eq i32 %197, 0
  br i1 %cmp3.4.i, label %for.inc.3.i.if.end87.i_crit_edge, label %if.end.4.i

for.inc.3.i.if.end87.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %198 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.4.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %198, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.4.i = icmp eq ptr %call7.i.i.4.i, null
  br i1 %tobool.not.4.i, label %if.end.4.i.interface_init.exit_crit_edge, label %if.end7.4.i

if.end.4.i.interface_init.exit_crit_edge:         ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %interface_init.exit

if.end7.4.i:                                      ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %num.4.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.4.i, i32 0, i32 1
  %199 = ptrtoint ptr %num.4.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 4, ptr %num.4.i, align 4
  %200 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.4.i, align 4
  %type.4.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.4.i, i32 0, i32 2
  %202 = ptrtoint ptr %type.4.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %type.4.i, align 8
  %mode.4.i = getelementptr inbounds %struct.mdp5_interface, ptr %call7.i.i.4.i, i32 0, i32 3
  %203 = ptrtoint ptr %mode.4.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 0, ptr %mode.4.i, align 4
  %204 = ptrtoint ptr %num_intfs.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %num_intfs.i, align 4
  %206 = ptrtoint ptr %call7.i.i.4.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %call7.i.i.4.i, align 8
  %inc.4.i = add i32 %205, 1
  store i32 %inc.4.i, ptr %num_intfs.i, align 4
  %arrayidx10.4.i = getelementptr %struct.mdp5_kms, ptr %call.i.i, i32 0, i32 8, i32 %205
  %207 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call7.i.i.4.i, ptr %arrayidx10.4.i, align 4
  br label %if.end87.i

interface_init.exit:                              ; preds = %if.end.4.i.interface_init.exit_crit_edge, %if.end.3.i.interface_init.exit_crit_edge, %if.end.2.i.interface_init.exit_crit_edge, %if.end.1.i.interface_init.exit_crit_edge, %if.end.i6.interface_init.exit_crit_edge
  %i.033.lcssa.i = phi i32 [ 0, %if.end.i6.interface_init.exit_crit_edge ], [ 1, %if.end.1.i.interface_init.exit_crit_edge ], [ 2, %if.end.2.i.interface_init.exit_crit_edge ], [ 3, %if.end.3.i.interface_init.exit_crit_edge ], [ 4, %if.end.4.i.interface_init.exit_crit_edge ]
  %dev6.i = getelementptr inbounds %struct.drm_device, ptr %145, i32 0, i32 2
  %208 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev6.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %209, ptr noundef nonnull @.str, ptr noundef nonnull @.str.54, i32 noundef %i.033.lcssa.i) #9
  br label %if.then90.i

if.end87.i:                                       ; preds = %if.end7.4.i, %for.inc.3.i.if.end87.i_crit_edge
  %kms.i = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  %210 = ptrtoint ptr %kms.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call.i.i, ptr %kms.i, align 4
  br label %mdp5_init.exit

if.then90.i:                                      ; preds = %interface_init.exit, %hwmixer_init.exit, %hwpipe_init.exit, %if.then71.i, %if.then60.i, %if.then41.i, %get_clk.exit55, %get_clk.exit175.i, %get_clk.exit65, %get_clk.exit.i, %if.then12.i, %if.end.i.if.then90.i_crit_edge
  %ret.0.ph.i = phi i32 [ -12, %if.end.i.if.then90.i_crit_edge ], [ -12, %interface_init.exit ], [ %141, %hwmixer_init.exit ], [ %.sink160.i, %hwpipe_init.exit ], [ %60, %if.then71.i ], [ %53, %if.then60.i ], [ %36, %if.then41.i ], [ %22, %get_clk.exit55 ], [ %19, %get_clk.exit65 ], [ %20, %get_clk.exit175.i ], [ %16, %get_clk.exit.i ], [ %14, %if.then12.i ]
  tail call fastcc void @mdp5_destroy(ptr noundef %add.ptr) #9
  br label %mdp5_init.exit

mdp5_init.exit:                                   ; preds = %if.then90.i, %if.end87.i, %entry.mdp5_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end87.i ], [ %ret.0.ph.i, %if.then90.i ], [ -12, %entry.mdp5_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call fastcc void @mdp5_destroy(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_cfg_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_smp_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_ctlm_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdp5_destroy(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctlm = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ctlm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mdp5_ctlm_destroy(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %smp = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %smp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mdp5_smp_destroy(ptr noundef nonnull %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %cfg = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mdp5_cfg_destroy(ptr noundef nonnull %7) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %num_intfs = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %num_intfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_intfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp28.not = icmp eq i32 %9, 0
  br i1 %cmp28.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mdp5_kms, ptr %1, i32 0, i32 8, i32 %i.029
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %11) #9
  %inc = add nuw i32 %i.029, 1
  %12 = ptrtoint ptr %num_intfs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_intfs, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %rpm_enabled = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 24
  %14 = ptrtoint ptr %rpm_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rpm_enabled, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %for.end.if.end12_crit_edge, label %if.then11

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %for.end.if.end12_crit_edge
  %glob_state = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 12
  tail call void @drm_atomic_private_obj_fini(ptr noundef %glob_state) #9
  %head.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 11, i32 1
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %head.i
  br i1 %cmp.i.not.i, label %if.end12.drm_modeset_lock_fini.exit_crit_edge, label %do.end.i, !prof !149

if.end12.drm_modeset_lock_fini.exit_crit_edge:    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %drm_modeset_lock_fini.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 113, i32 noundef 9, ptr noundef null) #9
  br label %drm_modeset_lock_fini.exit

drm_modeset_lock_fini.exit:                       ; preds = %do.end.i, %if.end12.drm_modeset_lock_fini.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mdp5_global_duplicate_state(ptr noundef %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_private_obj, ptr %obj, i32 0, i32 2
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %call = tail call ptr @kmemdup(ptr noundef %1, i32 noundef 368, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %obj, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdp5_global_destroy_state(ptr nocapture noundef readnone %obj, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %state) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_pipe_init(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_mixer_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_ctlm_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_smp_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdp5_cfg_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count.i, align 8
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %enable_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.mdp5_disable.exit_crit_edge, !prof !144

entry.mdp5_disable.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_disable.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 296, i32 noundef 9, ptr noundef null) #9
  br label %mdp5_disable.exit

mdp5_disable.exit:                                ; preds = %do.end.i, %entry.mdp5_disable.exit_crit_edge
  %tbu_rt_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %tbu_rt_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tbu_rt_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %tbu_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %tbu_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tbu_clk.i, align 8
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %ahb_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ahb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  %axi_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axi_clk.i, align 8
  tail call void @clk_disable(ptr noundef %11) #9
  tail call void @clk_unprepare(ptr noundef %11) #9
  %core_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core_clk.i, align 8
  tail call void @clk_disable(ptr noundef %13) #9
  tail call void @clk_unprepare(ptr noundef %13) #9
  %lut_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %lut_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lut_clk.i, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  tail call void @clk_unprepare(ptr noundef %15) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdp5_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #9
  %enable_count.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %enable_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_count.i, align 8
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %enable_count.i, align 8
  %ahb_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ahb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ahb_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.clk_prepare_enable.exit.i_crit_edge

entry.clk_prepare_enable.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %entry.clk_prepare_enable.exit.i_crit_edge
  %axi_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %axi_clk.i, align 8
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %clk_prepare_enable.exit.i.clk_prepare_enable.exit7.i_crit_edge

clk_prepare_enable.exit.i.clk_prepare_enable.exit7.i_crit_edge: ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit7.i

if.end.i5.i:                                      ; preds = %clk_prepare_enable.exit.i
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end.i5.i.clk_prepare_enable.exit7.i_crit_edge, label %if.then3.i6.i

if.end.i5.i.clk_prepare_enable.exit7.i_crit_edge: ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit7.i

if.then3.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %clk_prepare_enable.exit7.i

clk_prepare_enable.exit7.i:                       ; preds = %if.then3.i6.i, %if.end.i5.i.clk_prepare_enable.exit7.i_crit_edge, %clk_prepare_enable.exit.i.clk_prepare_enable.exit7.i_crit_edge
  %core_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core_clk.i, align 8
  %call.i8.i = tail call i32 @clk_prepare(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool.not.i9.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool.not.i9.i, label %if.end.i12.i, label %clk_prepare_enable.exit7.i.clk_prepare_enable.exit14.i_crit_edge

clk_prepare_enable.exit7.i.clk_prepare_enable.exit14.i_crit_edge: ; preds = %clk_prepare_enable.exit7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit14.i

if.end.i12.i:                                     ; preds = %clk_prepare_enable.exit7.i
  %call1.i10.i = tail call i32 @clk_enable(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %tobool2.not.i11.i = icmp eq i32 %call1.i10.i, 0
  br i1 %tobool2.not.i11.i, label %if.end.i12.i.clk_prepare_enable.exit14.i_crit_edge, label %if.then3.i13.i

if.end.i12.i.clk_prepare_enable.exit14.i_crit_edge: ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit14.i

if.then3.i13.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %9) #9
  br label %clk_prepare_enable.exit14.i

clk_prepare_enable.exit14.i:                      ; preds = %if.then3.i13.i, %if.end.i12.i.clk_prepare_enable.exit14.i_crit_edge, %clk_prepare_enable.exit7.i.clk_prepare_enable.exit14.i_crit_edge
  %lut_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %lut_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lut_clk.i, align 4
  %call.i15.i = tail call i32 @clk_prepare(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end.i19.i, label %clk_prepare_enable.exit14.i.clk_prepare_enable.exit21.i_crit_edge

clk_prepare_enable.exit14.i.clk_prepare_enable.exit21.i_crit_edge: ; preds = %clk_prepare_enable.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit21.i

if.end.i19.i:                                     ; preds = %clk_prepare_enable.exit14.i
  %call1.i17.i = tail call i32 @clk_enable(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool2.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool2.not.i18.i, label %if.end.i19.i.clk_prepare_enable.exit21.i_crit_edge, label %if.then3.i20.i

if.end.i19.i.clk_prepare_enable.exit21.i_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit21.i

if.then3.i20.i:                                   ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %11) #9
  br label %clk_prepare_enable.exit21.i

clk_prepare_enable.exit21.i:                      ; preds = %if.then3.i20.i, %if.end.i19.i.clk_prepare_enable.exit21.i_crit_edge, %clk_prepare_enable.exit14.i.clk_prepare_enable.exit21.i_crit_edge
  %tbu_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %tbu_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tbu_clk.i, align 8
  %call.i22.i = tail call i32 @clk_prepare(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool.not.i23.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i26.i, label %clk_prepare_enable.exit21.i.clk_prepare_enable.exit28.i_crit_edge

clk_prepare_enable.exit21.i.clk_prepare_enable.exit28.i_crit_edge: ; preds = %clk_prepare_enable.exit21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit28.i

if.end.i26.i:                                     ; preds = %clk_prepare_enable.exit21.i
  %call1.i24.i = tail call i32 @clk_enable(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24.i)
  %tobool2.not.i25.i = icmp eq i32 %call1.i24.i, 0
  br i1 %tobool2.not.i25.i, label %if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge, label %if.then3.i27.i

if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit28.i

if.then3.i27.i:                                   ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %13) #9
  br label %clk_prepare_enable.exit28.i

clk_prepare_enable.exit28.i:                      ; preds = %if.then3.i27.i, %if.end.i26.i.clk_prepare_enable.exit28.i_crit_edge, %clk_prepare_enable.exit21.i.clk_prepare_enable.exit28.i_crit_edge
  %tbu_rt_clk.i = getelementptr inbounds %struct.mdp5_kms, ptr %1, i32 0, i32 21
  %14 = ptrtoint ptr %tbu_rt_clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tbu_rt_clk.i, align 4
  %call.i29.i = tail call i32 @clk_prepare(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %if.end.i33.i, label %clk_prepare_enable.exit28.i.mdp5_enable.exit_crit_edge

clk_prepare_enable.exit28.i.mdp5_enable.exit_crit_edge: ; preds = %clk_prepare_enable.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_enable.exit

if.end.i33.i:                                     ; preds = %clk_prepare_enable.exit28.i
  %call1.i31.i = tail call i32 @clk_enable(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31.i)
  %tobool2.not.i32.i = icmp eq i32 %call1.i31.i, 0
  br i1 %tobool2.not.i32.i, label %if.end.i33.i.mdp5_enable.exit_crit_edge, label %if.then3.i34.i

if.end.i33.i.mdp5_enable.exit_crit_edge:          ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mdp5_enable.exit

if.then3.i34.i:                                   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %mdp5_enable.exit

mdp5_enable.exit:                                 ; preds = %if.then3.i34.i, %if.end.i33.i.mdp5_enable.exit_crit_edge, %clk_prepare_enable.exit28.i.mdp5_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 575, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 582, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 614, i32 46}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 626, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 635, i32 3}
!12 = !{ptr @mdp5_dt_match, !13, !"mdp5_dt_match", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 1020, i32 27}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 1040, i32 2}
!16 = !{ptr @msm_kms_init.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/msm_kms.h", i32 175, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @kms_funcs, !20, !"kms_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 265, i32 35}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 252, i32 4}
!23 = !{ptr @mdp5_debugfs_list, !24, !"mdp5_debugfs_list", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 251, i32 29}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 242, i32 18}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 169, i32 2}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 482, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 499, i32 4}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 373, i32 3}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 400, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 428, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 334, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 1032, i32 11}
!43 = !{ptr @mdp5_driver, !44, !"mdp5_driver", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 1028, i32 31}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 948, i32 50}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 949, i32 50}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 950, i32 53}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 962, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mdp5_setup_interconnect._entry, !52, !"_entry", i1 false, i1 false}
!58 = !{ptr @mdp5_setup_interconnect._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @mdp5_ops, !60, !"mdp5_ops", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 941, i32 35}
!61 = !{ptr @mdp5_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 821, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 830, i32 37}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 830, i32 49}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 837, i32 42}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 840, i32 42}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 843, i32 43}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 846, i32 44}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 851, i32 36}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 852, i32 36}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 853, i32 39}
!82 = !{ptr @mdp5_global_state_funcs, !83, !"mdp5_global_state_funcs", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 122, i32 45}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 543, i32 3}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 547, i32 3}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 534, i32 2}
!90 = !{ptr @hwpipe_init.rgb_planes, !91, !"rgb_planes", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 702, i32 30}
!92 = !{ptr @hwpipe_init.vig_planes, !93, !"vig_planes", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 705, i32 30}
!94 = !{ptr @hwpipe_init.dma_planes, !95, !"dma_planes", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 708, i32 30}
!96 = !{ptr @hwpipe_init.cursor_planes, !97, !"cursor_planes", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 711, i32 30}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 689, i32 4}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 3}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 15}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 195, i32 27}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 3}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 15}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 196, i32 27}
!112 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 3}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 197, i32 15}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 3}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 198, i32 15}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 3}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 199, i32 18}
!124 = !{ptr @pipe2name.names, !125, !"names", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.h", i32 193, i32 21}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 761, i32 4}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 791, i32 4}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../include/drm/drm_modeset_lock.h", i32 113, i32 2}
!132 = !{ptr @mdp5_pm_ops, !133, !"mdp5_pm_ops", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/disp/mdp5/mdp5_kms.c", i32 1016, i32 32}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2157443304, i64 2157443810, i64 2157443341, i64 2157443397, i64 2157443431, i64 2157443455, i64 2157443496, i64 2157443517, i64 2157443545, i64 2157443579}
!144 = !{!"branch_weights", i32 1, i32 2000}
!145 = !{!146}
!146 = distinct !{!146, !147, !"drm_seq_file_printer: %agg.result"}
!147 = distinct !{!147, !"drm_seq_file_printer"}
!148 = !{i8 0, i8 2}
!149 = !{!"branch_weights", i32 2000, i32 1}
