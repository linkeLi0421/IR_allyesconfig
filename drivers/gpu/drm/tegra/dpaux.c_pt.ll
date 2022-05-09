; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/dpaux.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/dpaux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dpaux_soc = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_dpaux = type { %struct.drm_dp_aux, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.work_struct, %struct.list_head, ptr, %struct.pinctrl_desc }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-dpaux\00", [20 x i8] zeroinitializer }, align 32
@tegra_dpaux_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_dpaux_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-dpaux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_dpaux_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_dpaux_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dpaux_suspend, ptr @tegra_dpaux_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_dpaux_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_dpaux_probe, ptr @tegra_dpaux_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dpaux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dpaux_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@dpaux_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dpaux_lock, i64 52), ptr getelementptr (i8, ptr @dpaux_lock, i64 52) }, ptr @dpaux_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dpaux_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dpaux_list, ptr @dpaux_list }, [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tegra_dpaux_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&dpaux->work)\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpaux\00", [26 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 479, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get reset control: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_dpaux_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/dpaux.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr = internal global ptr @tegra_dpaux_probe._entry, section ".printk_index", align 4
@tegra_dpaux_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get module clock: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.10 = internal global ptr @tegra_dpaux_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 494, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get parent clock: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.14 = internal global ptr @tegra_dpaux_probe._entry.12, section ".printk_index", align 4
@tegra_dpaux_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 501, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set clock to 270 MHz: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.17 = internal global ptr @tegra_dpaux_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get VDD supply: %ld\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.21 = internal global ptr @tegra_dpaux_probe._entry.19, section ".printk_index", align 4
@tegra_dpaux_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request IRQ#%u: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.24 = internal global ptr @tegra_dpaux_probe._entry.22, section ".printk_index", align 4
@tegra_dpaux_pins = internal constant { [2 x %struct.pinctrl_pin_desc], [40 x i8] } { [2 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.33, ptr null }], [40 x i8] zeroinitializer }, align 32
@tegra_dpaux_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @tegra_dpaux_get_groups_count, ptr @tegra_dpaux_get_group_name, ptr @tegra_dpaux_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@tegra_dpaux_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_dpaux_get_functions_count, ptr @tegra_dpaux_get_function_name, ptr @tegra_dpaux_get_function_groups, ptr @tegra_dpaux_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 560, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register pincontrol\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.27 = internal global ptr @tegra_dpaux_probe._entry.25, section ".printk_index", align 4
@tegra_dpaux_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.4, ptr @.str.5, i32 576, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to populate AUX bus: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dpaux_probe._entry_ptr.30 = internal global ptr @tegra_dpaux_probe._entry.28, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP_AUX_CHx_P\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DP_AUX_CHx_N\00", [19 x i8] zeroinitializer }, align 32
@tegra_dpaux_groups = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpaux-io\00", [23 x i8] zeroinitializer }, align 32
@tegra_dpaux_pin_numbers = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@tegra_dpaux_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.35, ptr @.str.36, ptr @.str.37], [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_dpaux_writel = external dso_local global %struct.tracepoint, align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_dpaux_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@tegra194_dpaux_soc = internal constant { %struct.tegra_dpaux_soc, [20 x i8] } { %struct.tegra_dpaux_soc { i32 2, i32 4, i32 44 }, [20 x i8] zeroinitializer }, align 32
@tegra210_dpaux_soc = internal constant { %struct.tegra_dpaux_soc, [20 x i8] } { %struct.tegra_dpaux_soc { i32 2, i32 4, i32 48 }, [20 x i8] zeroinitializer }, align 32
@tegra124_dpaux_soc = internal constant { %struct.tegra_dpaux_soc, [20 x i8] } { %struct.tegra_dpaux_soc { i32 2, i32 4, i32 24 }, [20 x i8] zeroinitializer }, align 32
@tegra_dpaux_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 611, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_dpaux_suspend\00", [44 x i8] zeroinitializer }, align 32
@tegra_dpaux_suspend._entry_ptr = internal global ptr @tegra_dpaux_suspend._entry, section ".printk_index", align 4
@tegra_dpaux_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.5, i32 631, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dpaux_resume\00", [45 x i8] zeroinitializer }, align 32
@tegra_dpaux_resume._entry_ptr = internal global ptr @tegra_dpaux_resume._entry, section ".printk_index", align 4
@tegra_dpaux_resume._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.5, i32 637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to enable parent clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_dpaux_resume._entry_ptr.47 = internal global ptr @tegra_dpaux_resume._entry.45, section ".printk_index", align 4
@tegra_dpaux_resume._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.5, i32 646, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to deassert reset: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dpaux_resume._entry_ptr.50 = internal global ptr @tegra_dpaux_resume._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dpaux_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dpaux_lock\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_dpaux_readl = external dso_local global %struct.tracepoint, align 4
@trace_dpaux_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.tegra_dpaux_transfer = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\00\04\00\00\00\08", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 8, i64 9]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 696, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"tegra_dpaux_of_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 685, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"tegra_dpaux_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 663, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"tegra_dpaux_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 694, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"dpaux_lock\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"dpaux_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 31, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 460, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 475, i32 51 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 477, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 486, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 491, i32 47 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 493, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 500, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 505, i32 55 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 509, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 526, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"tegra_dpaux_pins\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 364, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant [24 x i8] c"tegra_dpaux_pinctrl_ops\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 402, i32 33 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"tegra_dpaux_pinmux_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 440, i32 32 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 560, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 576, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 87, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 365, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 366, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"tegra_dpaux_groups\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 371, i32 27 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 372, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"tegra_dpaux_pin_numbers\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 369, i32 23 }
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"tegra_dpaux_functions\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 375, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 376, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 377, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 378, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 48, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 108, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"tegra194_dpaux_soc\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 679, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"tegra210_dpaux_soc\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 673, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"tegra124_dpaux_soc\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 667, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 611, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 631, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 637, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 646, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [33 x i8] c"../drivers/gpu/drm/tegra/dpaux.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 30, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant [34 x i8] c"switch.table.tegra_dpaux_transfer\00", align 1
@llvm.compiler.used = appending global [76 x ptr] [ptr @tegra_dpaux_probe._entry, ptr @tegra_dpaux_probe._entry.12, ptr @tegra_dpaux_probe._entry.15, ptr @tegra_dpaux_probe._entry.19, ptr @tegra_dpaux_probe._entry.22, ptr @tegra_dpaux_probe._entry.25, ptr @tegra_dpaux_probe._entry.28, ptr @tegra_dpaux_probe._entry.8, ptr @tegra_dpaux_probe._entry_ptr, ptr @tegra_dpaux_probe._entry_ptr.10, ptr @tegra_dpaux_probe._entry_ptr.14, ptr @tegra_dpaux_probe._entry_ptr.17, ptr @tegra_dpaux_probe._entry_ptr.21, ptr @tegra_dpaux_probe._entry_ptr.24, ptr @tegra_dpaux_probe._entry_ptr.27, ptr @tegra_dpaux_probe._entry_ptr.30, ptr @tegra_dpaux_resume._entry, ptr @tegra_dpaux_resume._entry.45, ptr @tegra_dpaux_resume._entry.48, ptr @tegra_dpaux_resume._entry_ptr, ptr @tegra_dpaux_resume._entry_ptr.47, ptr @tegra_dpaux_resume._entry_ptr.50, ptr @tegra_dpaux_suspend._entry, ptr @tegra_dpaux_suspend._entry_ptr, ptr @.str, ptr @tegra_dpaux_of_match, ptr @tegra_dpaux_pm_ops, ptr @tegra_dpaux_driver, ptr @dpaux_lock, ptr @dpaux_list, ptr @tegra_dpaux_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @tegra_dpaux_pins, ptr @tegra_dpaux_pinctrl_ops, ptr @tegra_dpaux_pinmux_ops, ptr @.str.26, ptr @.str.29, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @tegra_dpaux_groups, ptr @.str.34, ptr @tegra_dpaux_pin_numbers, ptr @tegra_dpaux_functions, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @tegra194_dpaux_soc, ptr @tegra210_dpaux_soc, ptr @tegra124_dpaux_soc, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @switch.table.tegra_dpaux_transfer], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaux_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaux_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_pins to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_groups to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_pin_numbers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra194_dpaux_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_dpaux_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_dpaux_soc to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_resume._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dpaux_resume._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_dpaux_transfer to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1928, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %soc = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %work = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %1 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @tegra_dpaux_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry6 = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tegra_dpaux_hotplug, ptr %func, align 4
  %complete = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %complete, align 4
  %wait.i = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #8
  %list = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i257 = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i257, align 4
  %dev9 = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev9, align 8
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #8
  %regs13 = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %regs13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %regs13, align 8
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %call20 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call20, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %pm_domain = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm_domain, align 8
  %tobool25.not = icmp eq ptr %13, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end41_crit_edge

if.end23.if.end41_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then26:                                        ; preds = %if.end23
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %rst = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i258 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %do.end34, label %if.then26.if.end41_crit_edge

if.then26.if.end41_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %15) #11
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rst, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.then26.if.end41_crit_edge, %if.end23.if.end41_crit_edge
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call43, ptr %clk, align 4
  %cmp.i259 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %do.end49, label %if.end55

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %20) #11
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  %call57 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  %clk_parent = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 7
  %24 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call57, ptr %clk_parent, align 8
  %cmp.i260 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i260, label %do.end63, label %if.end69

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %call57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %25) #11
  %26 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_parent, align 8
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.end69:                                         ; preds = %if.end55
  %call71 = tail call i32 @clk_set_rate(ptr noundef %call57, i32 noundef 270000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call71) #11
  br label %cleanup

if.end78:                                         ; preds = %if.end69
  %call80 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %vdd = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call80, ptr %vdd, align 8
  %cmp.i261 = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i261, label %if.then83, label %if.end78.if.end103_crit_edge

if.end78.if.end103_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then83:                                        ; preds = %if.end78
  %magicptr = ptrtoint ptr %call80 to i32
  %30 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %do.end94 [
    i32 -19, label %if.end101
    i32 -517, label %if.then83.if.end98_crit_edge
  ]

if.then83.if.end98_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

do.end94:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %magicptr) #11
  br label %if.end98

if.end98:                                         ; preds = %do.end94, %if.then83.if.end98_crit_edge
  %31 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vdd, align 8
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup

if.end101:                                        ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %vdd, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.end101, %if.end78.if.end103_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %35 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call.i262 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %36 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev9, align 8
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end103.dev_name.exit_crit_edge

if.end103.dev_name.exit_crit_edge:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end103.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %43, %if.end.i ], [ %41, %if.end103.dev_name.exit_crit_edge ]
  %call.i263 = tail call i32 @devm_request_threaded_irq(ptr noundef %37, i32 noundef %39, ptr noundef nonnull @tegra_dpaux_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp112 = icmp slt i32 %call.i263, 0
  br i1 %cmp112, label %do.end116, label %if.end119

do.end116:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev9, align 8
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.23, i32 noundef %47, i32 noundef %call.i263) #11
  br label %cleanup

if.end119:                                        ; preds = %dev_name.exit
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %49) #8
  %transfer = getelementptr inbounds %struct.drm_dp_aux, ptr %call.i, i32 0, i32 8
  %50 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @tegra_dpaux_transfer, ptr %transfer, align 8
  %dev123 = getelementptr inbounds %struct.drm_dp_aux, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %dev123 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dev, ptr %dev123, align 8
  tail call void @drm_dp_aux_init(ptr noundef nonnull %call.i) #8
  %call125 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef nonnull %call.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp126 = icmp slt i32 %call125, 0
  br i1 %cmp126, label %if.end119.cleanup_crit_edge, label %if.end128

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end128:                                        ; preds = %if.end119
  %init_name.i264 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i264 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i264, align 8
  %tobool.not.i265 = icmp eq ptr %53, null
  br i1 %tobool.not.i265, label %if.end.i266, label %if.end128.dev_name.exit268_crit_edge

if.end128.dev_name.exit268_crit_edge:             ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit268

if.end.i266:                                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit268

dev_name.exit268:                                 ; preds = %if.end.i266, %if.end128.dev_name.exit268_crit_edge
  %retval.0.i267 = phi ptr [ %55, %if.end.i266 ], [ %53, %if.end128.dev_name.exit268_crit_edge ]
  %desc = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14
  %56 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i267, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14, i32 1
  %57 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @tegra_dpaux_pins, ptr %pins, align 4
  %npins = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14, i32 2
  %58 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %npins, align 4
  %pctlops = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14, i32 3
  %59 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @tegra_dpaux_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14, i32 4
  %60 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tegra_dpaux_pinmux_ops, ptr %pmxops, align 4
  %owner = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 14, i32 6
  %61 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %owner, align 4
  %call138 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #8
  %pinctrl = getelementptr inbounds %struct.tegra_dpaux, ptr %call.i, i32 0, i32 13
  %62 = ptrtoint ptr %pinctrl to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call138, ptr %pinctrl, align 8
  %cmp.i269 = icmp ugt ptr %call138, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %do.end144, label %if.end148

do.end144:                                        ; preds = %dev_name.exit268
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  %63 = ptrtoint ptr %pinctrl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pinctrl, align 8
  %65 = ptrtoint ptr %64 to i32
  br label %cleanup

if.end148:                                        ; preds = %dev_name.exit268
  %66 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev9, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %67, i32 noundef 1, i32 noundef 15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs13, align 8
  %add.ptr.i = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251658240) #8, !srcloc !132
  %70 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev9, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %71, i32 noundef 5, i32 noundef 15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs13, align 8
  %add.ptr.i272 = getelementptr i8, ptr %73, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 251658240) #8, !srcloc !132
  tail call void @mutex_lock_nested(ptr noundef nonnull @dpaux_lock, i32 noundef 0) #8
  %74 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpaux_list, i32 0, i32 1), align 4
  %call.i.i273 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %74, ptr noundef nonnull @dpaux_list) #8
  br i1 %call.i.i273, label %if.end.i.i, label %if.end148.list_add_tail.exit_crit_edge

if.end148.list_add_tail.exit_crit_edge:           ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @dpaux_list, i32 0, i32 1), align 4
  %75 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dpaux_list, ptr %list, align 4
  %76 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %prev.i257, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %list, ptr %74, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end148.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  %call151 = tail call i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %do.end156, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end156:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.29, i32 noundef %call151) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end156, %list_add_tail.exit.cleanup_crit_edge, %do.end144, %if.end119.cleanup_crit_edge, %do.end116, %if.end98, %do.end76, %do.end63, %do.end49, %do.end34, %if.end19.cleanup_crit_edge, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then16 ], [ %23, %do.end49 ], [ %28, %do.end63 ], [ %call71, %do.end76 ], [ %33, %if.end98 ], [ %call.i263, %do.end116 ], [ %65, %do.end144 ], [ %call151, %do.end156 ], [ %18, %do.end34 ], [ -12, %entry.cleanup_crit_edge ], [ -6, %if.end19.cleanup_crit_edge ], [ %call125, %if.end119.cleanup_crit_edge ], [ 0, %list_add_tail.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 11
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  %regs.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 308
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %dev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %7, i32 noundef 77, i32 noundef %5) #8
  %or.i = or i32 %5, 1
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %9, i32 noundef 77, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %12, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %10) #8, !srcloc !132
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @dpaux_lock, i32 noundef 0) #8
  %list = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 12, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %19 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drm_dp_aux_find_by_of_node(ptr noundef readnone %np) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @dpaux_lock, i32 noundef 0) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @dpaux_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @dpaux_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dev = getelementptr i8, ptr %.pn, i32 -136
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %cmp1 = icmp eq ptr %4, %np
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dpaux.0.le = getelementptr i8, ptr %.pn, i32 -1872
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %dpaux.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpaux_lock) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_attach(ptr noundef %aux, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 10
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %drm_dev = getelementptr inbounds %struct.drm_dp_aux, ptr %aux, i32 0, i32 3
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drm_dev, align 4
  %call1 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end:                                           ; preds = %entry
  %polled = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 10, i32 33
  %3 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %polled, align 4
  %output3 = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 5
  %4 = ptrtoint ptr %output3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %output, ptr %output3, align 8
  %panel = getelementptr inbounds %struct.tegra_output, ptr %output, i32 0, i32 3
  %5 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.then4

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then4:                                         ; preds = %if.end
  %vdd = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 9
  %7 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdd, align 8
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then4.if.end12_crit_edge, label %if.then6

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.then4
  %call8 = tail call i32 @regulator_enable(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.cleanup23_crit_edge, label %if.then6.if.end12_crit_edge

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6.cleanup23_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %if.then4.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %9
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub45 = add i32 %add.neg, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %cmp1446 = icmp slt i32 %sub45, 0
  br i1 %cmp1446, label %while.body.lr.ph, label %if.end12.cleanup23_crit_edge

if.end12.cleanup23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

while.body.lr.ph:                                 ; preds = %if.end12
  %regs.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 196
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %16, i32 noundef 49, i32 noundef %14) #8
  %and.i = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end18, label %while.body.if.end22_crit_edge

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end18:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %17
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %if.end18.while.body_crit_edge, label %if.end18.cleanup23_crit_edge

if.end18.cleanup23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end22:                                         ; preds = %while.body.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %irq = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %19) #8
  br label %cleanup23

cleanup23:                                        ; preds = %if.end22, %if.end18.cleanup23_crit_edge, %if.end12.cleanup23_crit_edge, %if.then6.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.1 = phi i32 [ 0, %if.end22 ], [ %call1, %entry.cleanup23_crit_edge ], [ %call8, %if.then6.cleanup23_crit_edge ], [ -110, %if.end12.cleanup23_crit_edge ], [ -110, %if.end18.cleanup23_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_detect(ptr nocapture noundef readonly %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 196
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %dev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %5, i32 noundef 49, i32 noundef %3) #8
  %and = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_detach(ptr noundef %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #8
  %irq = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 4
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  %output = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 5
  %2 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output, align 8
  %panel = getelementptr inbounds %struct.tegra_output, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup18_crit_edge, label %if.then

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.then:                                          ; preds = %entry
  %vdd = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 9
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %call4 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then2.cleanup18_crit_edge, label %if.then2.if.end6_crit_edge

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2.cleanup18_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.then.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -25, %8
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub33 = add i32 %add.neg, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub33)
  %cmp834 = icmp slt i32 %sub33, 0
  br i1 %cmp834, label %while.body.lr.ph, label %if.end6.cleanup18_crit_edge

if.end6.cleanup18_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

while.body.lr.ph:                                 ; preds = %if.end6
  %regs.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 3
  %dev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 196
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %15, i32 noundef 49, i32 noundef %13) #8
  %and.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cleanup, label %if.end12

if.end12:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %16
  %cmp8 = icmp slt i32 %sub, 0
  br i1 %cmp8, label %if.end12.while.body_crit_edge, label %if.end12.cleanup18_crit_edge

if.end12.cleanup18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup18

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %output, align 8
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup, %if.end12.cleanup18_crit_edge, %if.end6.cleanup18_crit_edge, %if.then2.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %entry.cleanup18_crit_edge ], [ %call4, %if.then2.cleanup18_crit_edge ], [ -110, %if.end6.cleanup18_crit_edge ], [ -110, %if.end12.cleanup18_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_enable(ptr nocapture noundef readonly %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef %aux, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_dpaux_pad_config(ptr nocapture noundef readonly %dpaux, i32 noundef %function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %function to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %function, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb10
    i32 2, label %sw.bb27
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regs.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 3
  %1 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 308
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %dev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %6, i32 noundef 77, i32 noundef %4) #8
  %or.i = or i32 %4, 1
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %8, i32 noundef 77, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %11, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %9) #8, !srcloc !132
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 49153, %sw.bb10 ], [ 2, %entry.sw.epilog_crit_edge ]
  %soc11 = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 2
  %12 = ptrtoint ptr %soc11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc11, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and13 = shl i32 %15, 12
  %shl14 = and i32 %and13, 12288
  %drvz17 = getelementptr inbounds %struct.tegra_dpaux_soc, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %drvz17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %drvz17, align 4
  %and18 = shl i32 %17, 8
  %shl19 = and i32 %and18, 1792
  %drvi22 = getelementptr inbounds %struct.tegra_dpaux_soc, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %drvi22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drvi22, align 4
  %and23 = shl i32 %19, 2
  %shl24 = and i32 %and23, 252
  %or15 = or i32 %shl14, %shl19
  %or20 = or i32 %or15, %shl24
  %or26 = or i32 %or20, %.sink
  %dev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %21, i32 noundef 73, i32 noundef %or26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or26) #8
  %regs.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 3
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #8, !srcloc !132
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i37 = getelementptr i8, ptr %26, i32 308
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #8, !srcloc !133
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %30, i32 noundef 77, i32 noundef %28) #8
  %and.i = and i32 %28, -2
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %32, i32 noundef 77, i32 noundef %and.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  %add.ptr.i5.i39 = getelementptr i8, ptr %35, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i39, i32 %33) #8, !srcloc !132
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb27 ], [ 0, %sw.epilog ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_dp_aux_disable(ptr nocapture noundef readonly %aux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 308
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %dev.i.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %5, i32 noundef 77, i32 noundef %3) #8
  %or.i = or i32 %3, 1
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %7, i32 noundef 77, i32 noundef %or.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i5.i = getelementptr i8, ptr %10, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %8) #8, !srcloc !132
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dpaux_hotplug(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %connector = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 8
  %call2 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.tegra_dpaux, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %dev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %5, i32 noundef 5, i32 noundef %3) #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %7, i32 noundef 5, i32 noundef %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %2) #8, !srcloc !132
  %and = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.tegra_dpaux, ptr %data, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %complete = getelementptr inbounds %struct.tegra_dpaux, ptr %data, i32 0, i32 10
  tail call void @complete(ptr noundef %complete) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_transfer(ptr noundef %aux, ptr nocapture noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %entry.cleanup104_crit_edge, label %if.end

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3 = icmp eq i32 %1, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %request, align 4
  %4 = and i8 %3, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %switch = icmp ult i8 %4, 3
  br i1 %switch, label %if.then4.if.end7_crit_edge, label %if.then4.cleanup104_crit_edge

if.then4.cleanup104_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nuw nsw i32 %1, 255
  %and6 = and i32 %sub, 255
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4.if.end7_crit_edge
  %value.0 = phi i32 [ %and6, %if.else ], [ 256, %if.then4.if.end7_crit_edge ]
  %request8 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %request8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %request8, align 4
  %conv9 = zext i8 %6 to i32
  %and10 = and i8 %6, -5
  %7 = zext i8 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %and10, label %if.end7.cleanup104_crit_edge [
    i8 0, label %sw.bb11
    i8 1, label %sw.bb19
    i8 2, label %sw.bb29
    i8 8, label %sw.bb39
    i8 9, label %sw.bb41
  ]

if.end7.cleanup104_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %and14 = shl nuw nsw i32 %conv9, 12
  %8 = and i32 %and14, 16384
  %9 = or i32 %8, %value.0
  br label %sw.epilog44

sw.bb19:                                          ; preds = %if.end7
  %and22 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %or25 = or i32 %value.0, 20480
  br label %sw.epilog44

if.else26:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %value.0, 4096
  br label %sw.epilog44

sw.bb29:                                          ; preds = %if.end7
  %and32 = and i32 %conv9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else36, label %if.then34

if.then34:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  %or35 = or i32 %value.0, 24576
  br label %sw.epilog44

if.else36:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  %or37 = or i32 %value.0, 8192
  br label %sw.epilog44

sw.bb39:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %or40 = or i32 %value.0, 32768
  br label %sw.epilog44

sw.bb41:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %or42 = or i32 %value.0, 36864
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb41, %sw.bb39, %if.else36, %if.then34, %if.else26, %if.then24, %sw.bb11
  %value.1 = phi i32 [ %or42, %sw.bb41 ], [ %or40, %sw.bb39 ], [ %or35, %if.then34 ], [ %or37, %if.else36 ], [ %or25, %if.then24 ], [ %or27, %if.else26 ], [ %9, %sw.bb11 ]
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg, align 4
  %dev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %13, i32 noundef 41, i32 noundef %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  %regs.i = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 3
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %16, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #8, !srcloc !132
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %18, i32 noundef 45, i32 noundef %value.1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %value.1) #8
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i, align 8
  %add.ptr.i158 = getelementptr i8, ptr %21, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %19) #8, !srcloc !132
  %22 = ptrtoint ptr %request8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %request8, align 4
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp48 = icmp eq i8 %24, 0
  br i1 %cmp48, label %if.then50, label %sw.epilog44.if.end53_crit_edge

sw.epilog44.if.end53_crit_edge:                   ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %sw.epilog44
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %sub.i = add i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp29.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp29.not.i, label %if.then50.tegra_dpaux_write_fifo.exit_crit_edge, label %for.body.lr.ph.i

if.then50.tegra_dpaux_write_fifo.exit_crit_edge:  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_dpaux_write_fifo.exit

for.body.lr.ph.i:                                 ; preds = %if.then50
  %div25.i = lshr i32 %sub.i, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv.i = phi i32 [ %28, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.end.i.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.end.i.for.body.i_crit_edge ]
  %umin.i = tail call i32 @llvm.umin.i32(i32 %indvars.iv.i, i32 4) #8
  %mul.i = shl i32 %i.030.i, 2
  %sub1.i = sub i32 %28, %mul.i
  %29 = tail call i32 @llvm.umin.i32(i32 %sub1.i, i32 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp426.not.i = icmp eq i32 %29, 0
  br i1 %cmp426.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body5.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i:                                      ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %26, i32 %mul.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin.i)
  %exitcond.not.i = icmp eq i32 %umin.i, 1
  br i1 %exitcond.not.i, label %for.body5.i.for.end.i_crit_edge, label %for.body5.i.1

for.body5.i.for.end.i_crit_edge:                  ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i.1:                                    ; preds = %for.body5.i
  %add7.i.1 = or i32 %mul.i, 1
  %arrayidx.i.1 = getelementptr i8, ptr %26, i32 %add7.i.1
  %32 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %33 to i32
  %shl.i.1 = shl nuw nsw i32 %conv.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin.i)
  %exitcond.not.i.1 = icmp eq i32 %umin.i, 2
  br i1 %exitcond.not.i.1, label %for.body5.i.1.for.end.i_crit_edge, label %for.body5.i.2

for.body5.i.1.for.end.i_crit_edge:                ; preds = %for.body5.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i.2:                                    ; preds = %for.body5.i.1
  %add7.i.2 = or i32 %mul.i, 2
  %arrayidx.i.2 = getelementptr i8, ptr %26, i32 %add7.i.2
  %34 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %35 to i32
  %shl.i.2 = shl nuw nsw i32 %conv.i.2, 16
  %or.i.2 = or i32 %shl.i.2, %or.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin.i)
  %exitcond.not.i.2 = icmp eq i32 %umin.i, 3
  br i1 %exitcond.not.i.2, label %for.body5.i.2.for.end.i_crit_edge, label %for.body5.i.3

for.body5.i.2.for.end.i_crit_edge:                ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body5.i.3:                                    ; preds = %for.body5.i.2
  call void @__sanitizer_cov_trace_pc() #10
  %add7.i.3 = or i32 %mul.i, 3
  %arrayidx.i.3 = getelementptr i8, ptr %26, i32 %add7.i.3
  %36 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %37 to i32
  %shl.i.3 = shl nuw i32 %conv.i.3, 24
  %or.i.3 = or i32 %shl.i.3, %or.i.2
  br label %for.end.i

for.end.i:                                        ; preds = %for.body5.i.3, %for.body5.i.2.for.end.i_crit_edge, %for.body5.i.1.for.end.i_crit_edge, %for.body5.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %value.0.lcssa.i = phi i32 [ 0, %for.body.i.for.end.i_crit_edge ], [ %conv.i, %for.body5.i.for.end.i_crit_edge ], [ %or.i.1, %for.body5.i.1.for.end.i_crit_edge ], [ %or.i.2, %for.body5.i.2.for.end.i_crit_edge ], [ %or.i.3, %for.body5.i.3 ]
  %add10.i = add i32 %mul.i, 9
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %39, i32 noundef %add10.i, i32 noundef %value.0.lcssa.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %value.0.lcssa.i) #8
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %shl.i.i = shl i32 %add10.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %40) #8, !srcloc !132
  %inc12.i = add nuw nsw i32 %i.030.i, 1
  %indvars.iv.next.i = add i32 %indvars.iv.i, -4
  %exitcond31.not.i = icmp eq i32 %inc12.i, %div25.i
  br i1 %exitcond31.not.i, label %for.end.i.tegra_dpaux_write_fifo.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i.tegra_dpaux_write_fifo.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_dpaux_write_fifo.exit

tegra_dpaux_write_fifo.exit:                      ; preds = %for.end.i.tegra_dpaux_write_fifo.exit_crit_edge, %if.then50.tegra_dpaux_write_fifo.exit_crit_edge
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  br label %if.end53

if.end53:                                         ; preds = %tegra_dpaux_write_fifo.exit, %sw.epilog44.if.end53_crit_edge
  %ret.0 = phi i32 [ %44, %tegra_dpaux_write_fifo.exit ], [ 0, %sw.epilog44.if.end53_crit_edge ]
  %45 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i, align 8
  %add.ptr.i160 = getelementptr i8, ptr %46, i32 180
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #8, !srcloc !133
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %50, i32 noundef 45, i32 noundef %48) #8
  %or55 = or i32 %48, 65536
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %52, i32 noundef 45, i32 noundef %or55) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %53 = tail call i32 @llvm.bswap.i32(i32 %or55) #8
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 8
  %add.ptr.i164 = getelementptr i8, ptr %55, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i164, i32 %53) #8, !srcloc !132
  %complete = getelementptr inbounds %struct.tegra_dpaux, ptr %aux, i32 0, i32 10
  %call56 = tail call i32 @wait_for_completion_timeout(ptr noundef %complete, i32 noundef 25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end53.cleanup104_crit_edge, label %if.end59

if.end53.cleanup104_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end59:                                         ; preds = %if.end53
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 8
  %add.ptr.i166 = getelementptr i8, ptr %57, i32 196
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #8, !srcloc !133
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %61, i32 noundef 49, i32 noundef %59) #8
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_writel(ptr noundef %63, i32 noundef 49, i32 noundef 3840) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %65, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 983040) #8, !srcloc !132
  %and61 = and i32 %59, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.cleanup104_crit_edge

if.end59.cleanup104_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end64:                                         ; preds = %if.end59
  %66 = and i32 %59, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %if.end73, label %if.end64.cleanup104_crit_edge

if.end64.cleanup104_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

if.end73:                                         ; preds = %if.end64
  %and74 = lshr i32 %59, 16
  %shr = and i32 %and74, 15
  %switch.tableidx = add nsw i32 %shr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %68 = icmp ult i32 %switch.tableidx, 8
  br i1 %68, label %switch.lookup, label %if.end73.sw.epilog80_crit_edge

if.end73.sw.epilog80_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog80

switch.lookup:                                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.tegra_dpaux_transfer, i32 0, i32 %switch.tableidx
  %69 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %69)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog80

sw.epilog80:                                      ; preds = %switch.lookup, %if.end73.sw.epilog80_crit_edge
  %reply.0 = phi i8 [ 0, %if.end73.sw.epilog80_crit_edge ], [ %switch.load, %switch.lookup ]
  %70 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp82.not = icmp eq i32 %71, 0
  br i1 %cmp82.not, label %sw.epilog80.if.end102_crit_edge, label %land.lhs.true

sw.epilog80.if.end102_crit_edge:                  ; preds = %sw.epilog80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

land.lhs.true:                                    ; preds = %sw.epilog80
  %reply84 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %72 = ptrtoint ptr %reply84 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %reply84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp86 = icmp eq i8 %73, 0
  br i1 %cmp86, label %if.then88, label %land.lhs.true.if.end102_crit_edge

land.lhs.true.if.end102_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then88:                                        ; preds = %land.lhs.true
  %74 = ptrtoint ptr %request8 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %request8, align 4
  %76 = and i8 %75, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool92.not = icmp eq i8 %76, 0
  br i1 %tobool92.not, label %if.then88.if.end102_crit_edge, label %if.then93

if.then88.if.end102_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then93:                                        ; preds = %if.then88
  %and94 = and i32 %59, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and94, i32 %71)
  %cmp96.not = icmp eq i32 %and94, %71
  br i1 %cmp96.not, label %cleanup.thread, label %if.then93.cleanup104_crit_edge

if.then93.cleanup104_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104

cleanup.thread:                                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #10
  %buffer100 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %77 = ptrtoint ptr %buffer100 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer100, align 4
  tail call fastcc void @tegra_dpaux_read_fifo(ptr noundef %aux, ptr noundef %78, i32 noundef %71)
  br label %if.end102

if.end102:                                        ; preds = %cleanup.thread, %if.then88.if.end102_crit_edge, %land.lhs.true.if.end102_crit_edge, %sw.epilog80.if.end102_crit_edge
  %ret.2 = phi i32 [ %ret.0, %if.then88.if.end102_crit_edge ], [ %ret.0, %land.lhs.true.if.end102_crit_edge ], [ %ret.0, %sw.epilog80.if.end102_crit_edge ], [ %71, %cleanup.thread ]
  %reply103 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %79 = ptrtoint ptr %reply103 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %reply.0, ptr %reply103, align 1
  br label %cleanup104

cleanup104:                                       ; preds = %if.end102, %if.then93.cleanup104_crit_edge, %if.end64.cleanup104_crit_edge, %if.end59.cleanup104_crit_edge, %if.end53.cleanup104_crit_edge, %if.end7.cleanup104_crit_edge, %if.then4.cleanup104_crit_edge, %entry.cleanup104_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup104_crit_edge ], [ -22, %if.then4.cleanup104_crit_edge ], [ -22, %if.end7.cleanup104_crit_edge ], [ -110, %if.end53.cleanup104_crit_edge ], [ -110, %if.end59.cleanup104_crit_edge ], [ -5, %if.end64.cleanup104_crit_edge ], [ %ret.2, %if.end102 ], [ -16, %if.then93.cleanup104_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dpaux_read_fifo(ptr nocapture noundef readonly %dpaux, ptr nocapture noundef writeonly %buffer, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp26.not = icmp ult i32 %sub, 4
  br i1 %cmp26.not, label %entry.for.end12_crit_edge, label %for.body.lr.ph

entry.for.end12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end12

for.body.lr.ph:                                   ; preds = %entry
  %div23 = lshr i32 %sub, 2
  %regs.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.tegra_dpaux, ptr %dpaux, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ %size, %for.body.lr.ph ], [ %indvars.iv.next, %for.end.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc11, %for.end.for.body_crit_edge ]
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv, i32 4)
  %mul = shl i32 %i.027, 2
  %sub1 = sub i32 %size, %mul
  %0 = tail call i32 @llvm.umin.i32(i32 %sub1, i32 4)
  %add3 = add i32 %mul, 25
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 8
  %shl.i = shl i32 %add3, 2
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !133
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 8
  tail call fastcc void @trace_dpaux_readl(ptr noundef %6, i32 noundef %add3, i32 noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp524.not = icmp eq i32 %0, 0
  br i1 %cmp524.not, label %for.body.for.end_crit_edge, label %for.body6

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6:                                        ; preds = %for.body
  %conv = trunc i32 %4 to i8
  %arrayidx = getelementptr i8, ptr %buffer, i32 %mul
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %umin)
  %exitcond.not = icmp eq i32 %umin, 1
  br i1 %exitcond.not, label %for.body6.for.end_crit_edge, label %for.body6.1

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6.1:                                      ; preds = %for.body6
  %shr.1 = lshr i32 %4, 8
  %conv.1 = trunc i32 %shr.1 to i8
  %add9.1 = or i32 %mul, 1
  %arrayidx.1 = getelementptr i8, ptr %buffer, i32 %add9.1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.1, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umin)
  %exitcond.not.1 = icmp eq i32 %umin, 2
  br i1 %exitcond.not.1, label %for.body6.1.for.end_crit_edge, label %for.body6.2

for.body6.1.for.end_crit_edge:                    ; preds = %for.body6.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6.2:                                      ; preds = %for.body6.1
  %shr.2 = lshr i32 %4, 16
  %conv.2 = trunc i32 %shr.2 to i8
  %add9.2 = or i32 %mul, 2
  %arrayidx.2 = getelementptr i8, ptr %buffer, i32 %add9.2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.2, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umin)
  %exitcond.not.2 = icmp eq i32 %umin, 3
  br i1 %exitcond.not.2, label %for.body6.2.for.end_crit_edge, label %for.body6.3

for.body6.2.for.end_crit_edge:                    ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body6.3:                                      ; preds = %for.body6.2
  call void @__sanitizer_cov_trace_pc() #10
  %shr.3 = lshr i32 %4, 24
  %conv.3 = trunc i32 %shr.3 to i8
  %add9.3 = or i32 %mul, 3
  %arrayidx.3 = getelementptr i8, ptr %buffer, i32 %add9.3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.3, ptr %arrayidx.3, align 1
  br label %for.end

for.end:                                          ; preds = %for.body6.3, %for.body6.2.for.end_crit_edge, %for.body6.1.for.end_crit_edge, %for.body6.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc11 = add nuw nsw i32 %i.027, 1
  %indvars.iv.next = add i32 %indvars.iv, -4
  %exitcond28.not = icmp eq i32 %inc11, %div23
  br i1 %exitcond28.not, label %for.end.for.end12_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.for.end12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end12

for.end12:                                        ; preds = %for.end.for.end12_crit_edge, %entry.for.end12_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dpaux_get_groups_count(ptr nocapture noundef readnone %pinctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @tegra_dpaux_get_group_name(ptr nocapture noundef readnone %pinctrl, i32 noundef %group) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @.str.34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dpaux_get_group_pins(ptr nocapture noundef readnone %pinctrl, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @tegra_dpaux_pin_numbers, ptr %pins, align 4
  %1 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_dpaux_get_functions_count(ptr nocapture noundef readnone %pinctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @tegra_dpaux_get_function_name(ptr nocapture noundef readnone %pinctrl, i32 noundef %function) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @tegra_dpaux_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dpaux_get_function_groups(ptr nocapture noundef readnone %pinctrl, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %num_groups, align 4
  %1 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tegra_dpaux_groups, ptr %groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_set_mux(ptr noundef %pinctrl, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pinctrl) #8
  %call1 = tail call fastcc i32 @tegra_dpaux_pad_config(ptr noundef %call, i32 noundef %function)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpaux_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 1), ptr blockaddress(@trace_dpaux_writel, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !135

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !136

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !137
  %call42 = tail call i32 @__traceiter_dpaux_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !136

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpaux_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpaux_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 50, ptr noundef nonnull @.str.39) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %31 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpaux_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rst = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @reset_control_assert(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %call2) #11
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %err.0 = phi i32 [ %call2, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %clk_parent = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent, align 8
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %clk = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %err.0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dpaux_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %3) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %do.end, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i) #11
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %clk_parent = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_parent, align 8
  %call.i37 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i41, label %if.end.clk_prepare_enable.exit44_crit_edge

if.end.clk_prepare_enable.exit44_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit44

if.end.i41:                                       ; preds = %if.end
  %call1.i39 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool2.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool2.not.i40, label %if.end.i41.if.end8_crit_edge, label %if.then3.i42

if.end.i41.if.end8_crit_edge:                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then3.i42:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit44

clk_prepare_enable.exit44:                        ; preds = %if.then3.i42, %if.end.clk_prepare_enable.exit44_crit_edge
  %retval.0.i43 = phi i32 [ %call.i37, %if.end.clk_prepare_enable.exit44_crit_edge ], [ %call1.i39, %if.then3.i42 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i43)
  %cmp3 = icmp slt i32 %retval.0.i43, 0
  br i1 %cmp3, label %do.end7, label %clk_prepare_enable.exit44.if.end8_crit_edge

clk_prepare_enable.exit44.if.end8_crit_edge:      ; preds = %clk_prepare_enable.exit44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end7:                                          ; preds = %clk_prepare_enable.exit44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i43) #11
  br label %disable_clk

if.end8:                                          ; preds = %clk_prepare_enable.exit44.if.end8_crit_edge, %if.end.i41.if.end8_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %rst = getelementptr inbounds %struct.tegra_dpaux, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  %call11 = tail call i32 @reset_control_deassert(ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %call11) #11
  %8 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_parent, align 8
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %disable_clk

if.end17:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %cleanup

disable_clk:                                      ; preds = %do.end16, %do.end7
  %err.0 = phi i32 [ %retval.0.i43, %do.end7 ], [ %call11, %do.end16 ]
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end17, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %err.0, %disable_clk ], [ 0, %if.end17 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dpaux_readl(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 1), ptr blockaddress(@trace_dpaux_readl, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !135

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !136

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !141
  %call42 = tail call i32 @__traceiter_dpaux_readl(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !142
  %13 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !136

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !121) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpaux_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dpaux_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_dpaux_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.38, i32 noundef 53, ptr noundef nonnull @.str.39) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !140
  %31 = tail call i32 @llvm.read_register.i32(metadata !121) #8
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
declare dso_local i32 @__traceiter_dpaux_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 696, i32 11}
!2 = !{ptr @tegra_dpaux_driver, !3, !"tegra_dpaux_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 694, i32 24}
!4 = !{ptr @tegra_dpaux_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 460, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 475, i32 51}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 477, i32 4}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tegra_dpaux_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra_dpaux_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 486, i32 3}
!19 = !{ptr @tegra_dpaux_probe._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra_dpaux_probe._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 491, i32 47}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 493, i32 3}
!25 = !{ptr @tegra_dpaux_probe._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tegra_dpaux_probe._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 500, i32 3}
!29 = !{ptr @tegra_dpaux_probe._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_dpaux_probe._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 505, i32 55}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 509, i32 5}
!35 = !{ptr @tegra_dpaux_probe._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_dpaux_probe._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 526, i32 3}
!39 = !{ptr @tegra_dpaux_probe._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_dpaux_probe._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 560, i32 3}
!43 = !{ptr @tegra_dpaux_probe._entry.25, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra_dpaux_probe._entry_ptr.27, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.29, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 576, i32 3}
!47 = !{ptr @tegra_dpaux_probe._entry.28, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra_dpaux_probe._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @init_completion.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../include/linux/completion.h", i32 87, i32 2}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 365, i32 2}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 366, i32 2}
!56 = !{ptr @tegra_dpaux_pins, !57, !"tegra_dpaux_pins", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 364, i32 38}
!58 = !{ptr @tegra_dpaux_pinctrl_ops, !59, !"tegra_dpaux_pinctrl_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 402, i32 33}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 372, i32 2}
!62 = !{ptr @tegra_dpaux_groups, !63, !"tegra_dpaux_groups", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 371, i32 27}
!64 = !{ptr @tegra_dpaux_pin_numbers, !65, !"tegra_dpaux_pin_numbers", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 369, i32 23}
!66 = !{ptr @tegra_dpaux_pinmux_ops, !67, !"tegra_dpaux_pinmux_ops", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 440, i32 32}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 376, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 377, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 378, i32 2}
!74 = !{ptr @tegra_dpaux_functions, !75, !"tegra_dpaux_functions", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 375, i32 27}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 48, i32 1}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!80 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @tegra_dpaux_of_match, !85, !"tegra_dpaux_of_match", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 685, i32 34}
!86 = !{ptr @tegra194_dpaux_soc, !87, !"tegra194_dpaux_soc", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 679, i32 37}
!88 = !{ptr @tegra210_dpaux_soc, !89, !"tegra210_dpaux_soc", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 673, i32 37}
!90 = !{ptr @tegra124_dpaux_soc, !91, !"tegra124_dpaux_soc", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 667, i32 37}
!92 = !{ptr @tegra_dpaux_pm_ops, !93, !"tegra_dpaux_pm_ops", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 663, i32 32}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 611, i32 4}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra_dpaux_suspend._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tegra_dpaux_suspend._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 631, i32 3}
!101 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @tegra_dpaux_resume._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @tegra_dpaux_resume._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 637, i32 3}
!106 = !{ptr @tegra_dpaux_resume._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @tegra_dpaux_resume._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 646, i32 4}
!110 = !{ptr @tegra_dpaux_resume._entry.48, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tegra_dpaux_resume._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 30, i32 8}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dpaux_lock, !113, !"dpaux_lock", i1 false, i1 false}
!116 = !{ptr @dpaux_list, !117, !"dpaux_list", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/tegra/dpaux.c", i32 31, i32 8}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 51, i32 1}
!120 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i64 2157356170}
!132 = !{i64 4254514}
!133 = !{i64 4254932}
!134 = !{i64 2157355775}
!135 = !{i64 2148739053, i64 2148739058, i64 2148739071, i64 2148739115, i64 2148739149, i64 2148739170}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2157274048}
!138 = !{i64 2157274271}
!139 = !{i64 2149315139}
!140 = !{i64 2149316175}
!141 = !{i64 2157290472}
!142 = !{i64 2157290693}
