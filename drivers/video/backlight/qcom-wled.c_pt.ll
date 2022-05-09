; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/qcom-wled.c_pt.bc'
source_filename = "../drivers/video/backlight/qcom-wled.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.wled_var_cfg = type { ptr, ptr, i32 }
%struct.wled_config = type { i32, i32, i32, i32, i32, [4 x i32], i32, i32, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wled = type { ptr, ptr, ptr, %struct.mutex, i64, i64, i16, i16, i16, i16, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, %struct.wled_config, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr }
%struct.wled_u32_opts = type { ptr, ptr, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_qcom_wled__308_1751_wled_driver_init6 = internal global ptr @wled_driver_init, section ".initcall6.init", align 4
@wled_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wled_probe, ptr @wled_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wled_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wled_driver_exit = internal global ptr @wled_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description309 = internal constant [43 x i8] c"qcom_wled.description=Qualcomm WLED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"qcom_wled.file=drivers/video/backlight/qcom-wled\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [25 x i8] c"qcom_wled.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,wled\00", [22 x i8] zeroinitializer }, align 32
@wled_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-wled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-wled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8998-wled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm660l-wled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8150l-wled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@wled_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to get regmap\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wled_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/qcom-wled.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr = internal global ptr @wled_probe._entry, section ".printk_index", align 4
@wled_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1648, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown device version\0A\00", [40 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr.8 = internal global ptr @wled_probe._entry.6, section ".printk_index", align 4
@wled_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wled->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@wled_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1666, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wled3_setup failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr.13 = internal global ptr @wled_probe._entry.11, section ".printk_index", align 4
@wled_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wled4_setup failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr.16 = internal global ptr @wled_probe._entry.14, section ".printk_index", align 4
@wled_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wled5_setup failed\0A\00", [44 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr.19 = internal global ptr @wled_probe._entry.17, section ".printk_index", align 4
@wled_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1693, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid WLED version\0A\00", [42 x i8] zeroinitializer }, align 32
@wled_probe._entry_ptr.22 = internal global ptr @wled_probe._entry.20, section ".printk_index", align 4
@wled_probe.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&wled->ovp_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@wled_probe.__key.25 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&wled->ovp_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default-brightness\00", [45 x i8] zeroinitializer }, align 32
@wled_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @wled_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"qcom,current-boost-limit\00", [39 x i8] zeroinitializer }, align 32
@wled3_boost_i_limit_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr @wled3_boost_i_limit_values, ptr null, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,current-limit\00", [45 x i8] zeroinitializer }, align 32
@wled3_string_i_limit_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr null, i32 26 }, [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,ovp\00", [23 x i8] zeroinitializer }, align 32
@wled3_ovp_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr @wled3_ovp_values, ptr null, i32 4 }, [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,switching-freq\00", [44 x i8] zeroinitializer }, align 32
@wled3_switch_freq_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr @wled3_switch_freq_values_fn, i32 16 }, [20 x i8] zeroinitializer }, align 32
@wled4_boost_i_limit_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr @wled4_boost_i_limit_values, ptr null, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qcom,current-limit-microamp\00", [36 x i8] zeroinitializer }, align 32
@wled4_string_i_limit_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr @wled4_string_i_limit_values, ptr null, i32 13 }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,ovp-millivolt\00", [45 x i8] zeroinitializer }, align 32
@wled4_ovp_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr @wled4_ovp_values, ptr null, i32 4 }, [20 x i8] zeroinitializer }, align 32
@wled5_boost_i_limit_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr @wled5_boost_i_limit_values_fn, i32 8 }, [20 x i8] zeroinitializer }, align 32
@wled5_ovp_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr @wled5_ovp_values_fn, i32 16 }, [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,modulator-sel\00", [45 x i8] zeroinitializer }, align 32
@wled5_mod_sel_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr null, i32 2 }, [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom,cabc-sel\00", [18 x i8] zeroinitializer }, align 32
@wled5_cabc_sel_cfg = internal constant { %struct.wled_var_cfg, [20 x i8] } { %struct.wled_var_cfg { ptr null, ptr null, i32 4 }, [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,cs-out\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,ext-gen\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,cabc\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qcom,external-pfet\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"qcom,auto-string-detection\00", [37 x i8] zeroinitializer }, align 32
@wled_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid IO resources\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wled_configure\00", [17 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr = internal global ptr @wled_configure._entry, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@wled3_config_defaults = internal constant { %struct.wled_config, [44 x i8] } { %struct.wled_config { i32 3, i32 2, i32 5, i32 3, i32 20, [4 x i32] [i32 0, i32 1, i32 2, i32 0], i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@wled4_config_defaults = internal constant { %struct.wled_config, [44 x i8] } { %struct.wled_config { i32 4, i32 1, i32 11, i32 4, i32 10, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@wled_configure._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.46 = internal global ptr @wled_configure._entry.45, section ".printk_index", align 4
@wled5_config_defaults = internal constant { %struct.wled_config, [44 x i8] } { %struct.wled_config { i32 5, i32 4, i32 11, i32 4, i32 10, [4 x i32] [i32 0, i32 1, i32 2, i32 3], i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@wled_configure._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 1457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.48 = internal global ptr @wled_configure._entry.47, section ".printk_index", align 4
@wled_configure._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.42, ptr @.str.3, i32 1464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.50 = internal global ptr @wled_configure._entry.49, section ".printk_index", align 4
@wled_configure._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.42, ptr @.str.3, i32 1473, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error reading '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.53 = internal global ptr @wled_configure._entry.51, section ".printk_index", align 4
@wled_configure._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.42, ptr @.str.3, i32 1482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid value for '%s'\0A\00", [40 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.56 = internal global ptr @wled_configure._entry.54, section ".printk_index", align 4
@wled_configure.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.42, ptr @.str.3, ptr @.str.58, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom_wled\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"'%s' = %u\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,enabled-strings\00", [43 x i8] zeroinitializer }, align 32
@wled_configure._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.42, ptr @.str.3, i32 1505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot have more than %d strings\0A\00", [62 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.62 = internal global ptr @wled_configure._entry.60, section ".printk_index", align 4
@wled_configure._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.42, ptr @.str.3, i32 1515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Failed to read %d elements from qcom,enabled-strings: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.65 = internal global ptr @wled_configure._entry.63, section ".printk_index", align 4
@wled_configure._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.42, ptr @.str.3, i32 1523, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"qcom,enabled-strings index %d at %d is out of bounds\0A\00", [42 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.68 = internal global ptr @wled_configure._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom,num-strings\00", [47 x i8] zeroinitializer }, align 32
@wled_configure._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.42, ptr @.str.3, i32 1535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"qcom,num-strings must be between 1 and %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.72 = internal global ptr @wled_configure._entry.70, section ".printk_index", align 4
@wled_configure._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.42, ptr @.str.3, i32 1541, ptr @.str.75, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Only one of qcom,num-strings or qcom,enabled-strings should be set\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.76 = internal global ptr @wled_configure._entry.73, section ".printk_index", align 4
@wled_configure._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.42, ptr @.str.3, i32 1543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"qcom,num-strings exceeds qcom,enabled-strings\0A\00", [49 x i8] zeroinitializer }, align 32
@wled_configure._entry_ptr.79 = internal global ptr @wled_configure._entry.77, section ".printk_index", align 4
@wled3_boost_i_limit_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 105, i32 385, i32 525, i32 805, i32 980, i32 1260, i32 1400, i32 1680], [32 x i8] zeroinitializer }, align 32
@wled3_ovp_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 35, i32 32, i32 29, i32 27], [16 x i8] zeroinitializer }, align 32
@wled4_boost_i_limit_values = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 105, i32 280, i32 450, i32 620, i32 970, i32 1150, i32 1300, i32 1500], [32 x i8] zeroinitializer }, align 32
@wled4_string_i_limit_values = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 2500, i32 5000, i32 7500, i32 10000, i32 12500, i32 15000, i32 17500, i32 20000, i32 22500, i32 25000, i32 27500, i32 30000], [44 x i8] zeroinitializer }, align 32
@wled4_ovp_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 31100, i32 29600, i32 19600, i32 18100], [16 x i8] zeroinitializer }, align 32
@wled5_cabc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Error in configuring CABC rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wled5_cabc_config\00", [46 x i8] zeroinitializer }, align 32
@wled5_cabc_config._entry_ptr = internal global ptr @wled5_cabc_config._entry, section ".printk_index", align 4
@__const.wled5_ovp_delay.ovp_timer_ms = private unnamed_addr constant [8 x i8] c"\01\02\04\08\0C\10\14\18", align 1
@wled5_ovp_delay.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wled5_ovp_delay\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"delay_time_us: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@wled4_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 1066, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to toggle sync reg rc:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wled4_setup\00", [20 x i8] zeroinitializer }, align 32
@wled4_setup._entry_ptr = internal global ptr @wled4_setup._entry, section ".printk_index", align 4
@wled_auto_detection_at_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in getting OVP fault_sts, rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wled_auto_detection_at_init\00", [36 x i8] zeroinitializer }, align 32
@wled_auto_detection_at_init._entry_ptr = internal global ptr @wled_auto_detection_at_init._entry, section ".printk_index", align 4
@wled_ovp_fault_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read INT_RT_STS rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wled_ovp_fault_status\00", [42 x i8] zeroinitializer }, align 32
@wled_ovp_fault_status._entry_ptr = internal global ptr @wled_ovp_fault_status._entry, section ".printk_index", align 4
@wled_ovp_fault_status._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read FAULT_STATUS rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@wled_ovp_fault_status._entry_ptr.92 = internal global ptr @wled_ovp_fault_status._entry.90, section ".printk_index", align 4
@wled_ovp_fault_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.89, ptr @.str.3, ptr @.str.93, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"WLED OVP fault detected, int_rt_sts=0x%x fault_sts=0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 584, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read SINK configuration rc=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wled_auto_string_detection\00", [37 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr = internal global ptr @wled_auto_string_detection._entry, section ".printk_index", align 4
@wled_auto_string_detection._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable WLED module rc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.98 = internal global ptr @wled_auto_string_detection._entry.96, section ".printk_index", align 4
@wled_auto_string_detection._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to set brightness for auto detection rc=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.101 = internal global ptr @wled_auto_string_detection._entry.99, section ".printk_index", align 4
@wled_auto_string_detection._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.95, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to disable all sinks rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.104 = internal global ptr @wled_auto_string_detection._entry.102, section ".printk_index", align 4
@wled_auto_string_detection._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.95, ptr @.str.3, i32 629, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to enable feedback for SINK %d rc = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.107 = internal global ptr @wled_auto_string_detection._entry.105, section ".printk_index", align 4
@wled_auto_string_detection._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.95, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to configure SINK %d rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.110 = internal global ptr @wled_auto_string_detection._entry.108, section ".printk_index", align 4
@wled_auto_string_detection._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.95, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable WLED module rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.113 = internal global ptr @wled_auto_string_detection._entry.111, section ".printk_index", align 4
@wled_auto_string_detection._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.95, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.115 = internal global ptr @wled_auto_string_detection._entry.114, section ".printk_index", align 4
@wled_auto_string_detection.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.95, ptr @.str.3, ptr @.str.116, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WLED OVP fault detected with SINK %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.118 = internal global ptr @wled_auto_string_detection._entry.117, section ".printk_index", align 4
@wled_auto_string_detection._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.95, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No valid WLED sinks found\0A\00", [37 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.121 = internal global ptr @wled_auto_string_detection._entry.119, section ".printk_index", align 4
@wled_auto_string_detection._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.95, ptr @.str.3, i32 688, ptr @.str.75, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%x is not a valid sink configuration - using %x instead\0A\00", [39 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.124 = internal global ptr @wled_auto_string_detection._entry.122, section ".printk_index", align 4
@wled_auto_string_detection._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.95, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to reconfigure the default sink rc=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.127 = internal global ptr @wled_auto_string_detection._entry.125, section ".printk_index", align 4
@wled_auto_string_detection._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.95, ptr @.str.3, i32 717, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to configure MODULATOR_EN rc=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.130 = internal global ptr @wled_auto_string_detection._entry.128, section ".printk_index", align 4
@wled_auto_string_detection._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.95, ptr @.str.3, i32 733, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to restore feedback setting rc=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.133 = internal global ptr @wled_auto_string_detection._entry.131, section ".printk_index", align 4
@wled_auto_string_detection._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.95, ptr @.str.3, i32 741, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to set brightness after auto detection rc=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.136 = internal global ptr @wled_auto_string_detection._entry.134, section ".printk_index", align 4
@wled_auto_string_detection._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.95, ptr @.str.3, i32 750, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_auto_string_detection._entry_ptr.138 = internal global ptr @wled_auto_string_detection._entry.137, section ".printk_index", align 4
@wled5_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Failed to toggle sync reg rc:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wled5_setup\00", [20 x i8] zeroinitializer }, align 32
@wled5_setup._entry_ptr = internal global ptr @wled5_setup._entry, section ".printk_index", align 4
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@wled_configure_short_irq.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.142, ptr @.str.3, ptr @.str.143, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wled_configure_short_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"short irq is not used\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wled_short_irq\00", [17 x i8] zeroinitializer }, align 32
@wled_configure_short_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.142, ptr @.str.3, i32 1581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to request short_irq (err:%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@wled_configure_short_irq._entry_ptr = internal global ptr @wled_configure_short_irq._entry, section ".printk_index", align 4
@wled_short_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wled disable failed rc:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wled_short_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@wled_short_irq_handler._entry_ptr = internal global ptr @wled_short_irq_handler._entry, section ".printk_index", align 4
@wled_short_irq_handler._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Short triggered %d times, disabling WLED forever!\0A\00", [45 x i8] zeroinitializer }, align 32
@wled_short_irq_handler._entry_ptr.150 = internal global ptr @wled_short_irq_handler._entry.148, section ".printk_index", align 4
@wled_short_irq_handler._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.147, ptr @.str.3, i32 562, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wled enable failed rc:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@wled_short_irq_handler._entry_ptr.153 = internal global ptr @wled_short_irq_handler._entry.151, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ovp\00", [28 x i8] zeroinitializer }, align 32
@wled_configure_ovp_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.155, ptr @.str.3, ptr @.str.156, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wled_configure_ovp_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"OVP IRQ not found - disabling automatic string detection\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wled_ovp_irq\00", [19 x i8] zeroinitializer }, align 32
@wled_configure_ovp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.155, ptr @.str.3, i32 1603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to request ovp_irq (err:%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@wled_configure_ovp_irq._entry_ptr = internal global ptr @wled_configure_ovp_irq._entry, section ".printk_index", align 4
@wled_ovp_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error in reading WLED3_INT_RT_STS rc=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wled_ovp_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@wled_ovp_irq_handler._entry_ptr = internal global ptr @wled_ovp_irq_handler._entry, section ".printk_index", align 4
@wled_ovp_irq_handler._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error in reading WLED_FAULT_STATUS rc=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@wled_ovp_irq_handler._entry_ptr.163 = internal global ptr @wled_ovp_irq_handler._entry.161, section ".printk_index", align 4
@wled_ovp_irq_handler.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.160, ptr @.str.3, ptr @.str.164, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"WLED OVP fault detected, int_sts=%x fault_sts= %x\0A\00", [45 x i8] zeroinitializer }, align 32
@wled_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wled failed to set brightness rc:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wled_update_status\00", [45 x i8] zeroinitializer }, align 32
@wled_update_status._entry_ptr = internal global ptr @wled_update_status._entry, section ".printk_index", align 4
@wled_update_status._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wled sync failed rc:%d\0A\00", [40 x i8] zeroinitializer }, align 32
@wled_update_status._entry_ptr.169 = internal global ptr @wled_update_status._entry.167, section ".printk_index", align 4
@wled_update_status._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.3, i32 461, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wled mod sync failed rc:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@wled_update_status._entry_ptr.172 = internal global ptr @wled_update_status._entry.170, section ".printk_index", align 4
@wled_update_status._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.166, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@wled_update_status._entry_ptr.174 = internal global ptr @wled_update_status._entry.173, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.177 = private unnamed_addr constant [12 x i8] c"wled_driver\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1742, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1746, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"wled_match_table\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1732, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1635, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1648, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1652, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1658, i32 42 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1666, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1675, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1687, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1693, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1697, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1708, i32 42 }
@___asan_gen_.258 = private unnamed_addr constant [9 x i8] c"wled_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1620, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1316, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"wled3_boost_i_limit_cfg\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1205, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1321, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"wled3_string_i_limit_cfg\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1272, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1326, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant [14 x i8] c"wled3_ovp_cfg\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1233, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1331, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant [22 x i8] c"wled3_switch_freq_cfg\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1267, i32 34 }
@___asan_gen_.285 = private unnamed_addr constant [24 x i8] c"wled4_boost_i_limit_cfg\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1214, i32 34 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1344, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant [25 x i8] c"wled4_string_i_limit_cfg\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1281, i32 34 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1349, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"wled4_ovp_cfg\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1242, i32 34 }
@___asan_gen_.300 = private unnamed_addr constant [24 x i8] c"wled5_boost_i_limit_cfg\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1224, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant [14 x i8] c"wled5_ovp_cfg\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1257, i32 34 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1382, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant [18 x i8] c"wled5_mod_sel_cfg\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1286, i32 34 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1387, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"wled5_cabc_sel_cfg\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1290, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1394, i32 5 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1395, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1396, i32 5 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1397, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1398, i32 5 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1403, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1408, i32 45 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1410, i32 48 }
@___asan_gen_.348 = private unnamed_addr constant [22 x i8] c"wled3_config_defaults\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 944, i32 33 }
@___asan_gen_.351 = private unnamed_addr constant [22 x i8] c"wled4_config_defaults\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1075, i32 33 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1437, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant [22 x i8] c"wled5_config_defaults\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1187, i32 33 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1457, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1464, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1473, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1481, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1490, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1500, i32 12 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1504, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1514, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1521, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1531, i32 42 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1534, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1540, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1543, i32 5 }
@___asan_gen_.429 = private unnamed_addr constant [27 x i8] c"wled3_boost_i_limit_values\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1201, i32 18 }
@___asan_gen_.432 = private unnamed_addr constant [17 x i8] c"wled3_ovp_values\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1229, i32 18 }
@___asan_gen_.435 = private unnamed_addr constant [27 x i8] c"wled4_boost_i_limit_values\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1210, i32 18 }
@___asan_gen_.438 = private unnamed_addr constant [28 x i8] c"wled4_string_i_limit_values\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1276, i32 18 }
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"wled4_ovp_values\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1238, i32 18 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 517, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 427, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1066, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 821, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 378, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 386, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 401, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 583, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 593, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 600, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 615, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 628, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 637, i32 4 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 648, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 658, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 664, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 674, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 681, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 687, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 697, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 716, i32 5 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 732, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 740, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 750, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1176, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1569, i32 50 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1571, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1578, i32 12 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1580, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 541, i32 3 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 551, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 562, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1592, i32 48 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1594, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1600, i32 12 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 1602, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 844, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 852, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 859, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 442, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 450, i32 5 }
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 460, i32 5 }
@___asan_gen_.693 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.694 = private constant [39 x i8] c"../drivers/video/backlight/qcom-wled.c\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.694, i32 470, i32 4 }
@llvm.compiler.used = appending global [230 x ptr] [ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_wled_driver_exit, ptr @__initcall__kmod_qcom_wled__308_1751_wled_driver_init6, ptr @wled4_setup._entry, ptr @wled4_setup._entry_ptr, ptr @wled5_cabc_config._entry, ptr @wled5_cabc_config._entry_ptr, ptr @wled5_setup._entry, ptr @wled5_setup._entry_ptr, ptr @wled_auto_detection_at_init._entry, ptr @wled_auto_detection_at_init._entry_ptr, ptr @wled_auto_string_detection._entry, ptr @wled_auto_string_detection._entry.102, ptr @wled_auto_string_detection._entry.105, ptr @wled_auto_string_detection._entry.108, ptr @wled_auto_string_detection._entry.111, ptr @wled_auto_string_detection._entry.114, ptr @wled_auto_string_detection._entry.117, ptr @wled_auto_string_detection._entry.119, ptr @wled_auto_string_detection._entry.122, ptr @wled_auto_string_detection._entry.125, ptr @wled_auto_string_detection._entry.128, ptr @wled_auto_string_detection._entry.131, ptr @wled_auto_string_detection._entry.134, ptr @wled_auto_string_detection._entry.137, ptr @wled_auto_string_detection._entry.96, ptr @wled_auto_string_detection._entry.99, ptr @wled_auto_string_detection._entry_ptr, ptr @wled_auto_string_detection._entry_ptr.101, ptr @wled_auto_string_detection._entry_ptr.104, ptr @wled_auto_string_detection._entry_ptr.107, ptr @wled_auto_string_detection._entry_ptr.110, ptr @wled_auto_string_detection._entry_ptr.113, ptr @wled_auto_string_detection._entry_ptr.115, ptr @wled_auto_string_detection._entry_ptr.118, ptr @wled_auto_string_detection._entry_ptr.121, ptr @wled_auto_string_detection._entry_ptr.124, ptr @wled_auto_string_detection._entry_ptr.127, ptr @wled_auto_string_detection._entry_ptr.130, ptr @wled_auto_string_detection._entry_ptr.133, ptr @wled_auto_string_detection._entry_ptr.136, ptr @wled_auto_string_detection._entry_ptr.138, ptr @wled_auto_string_detection._entry_ptr.98, ptr @wled_configure._entry, ptr @wled_configure._entry.45, ptr @wled_configure._entry.47, ptr @wled_configure._entry.49, ptr @wled_configure._entry.51, ptr @wled_configure._entry.54, ptr @wled_configure._entry.60, ptr @wled_configure._entry.63, ptr @wled_configure._entry.66, ptr @wled_configure._entry.70, ptr @wled_configure._entry.73, ptr @wled_configure._entry.77, ptr @wled_configure._entry_ptr, ptr @wled_configure._entry_ptr.46, ptr @wled_configure._entry_ptr.48, ptr @wled_configure._entry_ptr.50, ptr @wled_configure._entry_ptr.53, ptr @wled_configure._entry_ptr.56, ptr @wled_configure._entry_ptr.62, ptr @wled_configure._entry_ptr.65, ptr @wled_configure._entry_ptr.68, ptr @wled_configure._entry_ptr.72, ptr @wled_configure._entry_ptr.76, ptr @wled_configure._entry_ptr.79, ptr @wled_configure_ovp_irq._entry, ptr @wled_configure_ovp_irq._entry_ptr, ptr @wled_configure_short_irq._entry, ptr @wled_configure_short_irq._entry_ptr, ptr @wled_driver_exit, ptr @wled_ovp_fault_status._entry, ptr @wled_ovp_fault_status._entry.90, ptr @wled_ovp_fault_status._entry_ptr, ptr @wled_ovp_fault_status._entry_ptr.92, ptr @wled_ovp_irq_handler._entry, ptr @wled_ovp_irq_handler._entry.161, ptr @wled_ovp_irq_handler._entry_ptr, ptr @wled_ovp_irq_handler._entry_ptr.163, ptr @wled_probe._entry, ptr @wled_probe._entry.11, ptr @wled_probe._entry.14, ptr @wled_probe._entry.17, ptr @wled_probe._entry.20, ptr @wled_probe._entry.6, ptr @wled_probe._entry_ptr, ptr @wled_probe._entry_ptr.13, ptr @wled_probe._entry_ptr.16, ptr @wled_probe._entry_ptr.19, ptr @wled_probe._entry_ptr.22, ptr @wled_probe._entry_ptr.8, ptr @wled_short_irq_handler._entry, ptr @wled_short_irq_handler._entry.148, ptr @wled_short_irq_handler._entry.151, ptr @wled_short_irq_handler._entry_ptr, ptr @wled_short_irq_handler._entry_ptr.150, ptr @wled_short_irq_handler._entry_ptr.153, ptr @wled_update_status._entry, ptr @wled_update_status._entry.167, ptr @wled_update_status._entry.170, ptr @wled_update_status._entry.173, ptr @wled_update_status._entry_ptr, ptr @wled_update_status._entry_ptr.169, ptr @wled_update_status._entry_ptr.172, ptr @wled_update_status._entry_ptr.174, ptr @wled_driver, ptr @.str, ptr @wled_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @wled_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @wled_probe.__key.23, ptr @.str.24, ptr @wled_probe.__key.25, ptr @.str.26, ptr @.str.27, ptr @wled_ops, ptr @.str.28, ptr @wled3_boost_i_limit_cfg, ptr @.str.29, ptr @wled3_string_i_limit_cfg, ptr @.str.30, ptr @wled3_ovp_cfg, ptr @.str.31, ptr @wled3_switch_freq_cfg, ptr @wled4_boost_i_limit_cfg, ptr @.str.32, ptr @wled4_string_i_limit_cfg, ptr @.str.33, ptr @wled4_ovp_cfg, ptr @wled5_boost_i_limit_cfg, ptr @wled5_ovp_cfg, ptr @.str.34, ptr @wled5_mod_sel_cfg, ptr @.str.35, ptr @wled5_cabc_sel_cfg, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @wled3_config_defaults, ptr @wled4_config_defaults, ptr @wled5_config_defaults, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.78, ptr @wled3_boost_i_limit_values, ptr @wled3_ovp_values, ptr @wled4_boost_i_limit_values, ptr @wled4_string_i_limit_values, ptr @wled4_ovp_values, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.116, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.152, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.171], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_probe.__key.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_boost_i_limit_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_string_i_limit_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_ovp_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_switch_freq_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_boost_i_limit_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_string_i_limit_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_ovp_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_boost_i_limit_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_ovp_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_mod_sel_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_cabc_sel_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_config_defaults to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_config_defaults to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_config_defaults to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_boost_i_limit_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled3_ovp_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_boost_i_limit_values to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_string_i_limit_values to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_ovp_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_cabc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled4_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_detection_at_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_ovp_fault_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_ovp_fault_status._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_auto_string_detection._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled5_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure_short_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_short_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_short_irq_handler._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_short_irq_handler._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_configure_ovp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_ovp_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_ovp_irq_handler._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_update_status._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_update_status._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wled_update_status._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wled_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wled_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @wled_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fault_set.i.i = alloca i8, align 1
  %sink_cfg.i = alloca i32, align 4
  %props = alloca %struct.backlight_properties, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #9
  %0 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4
  %2 = call ptr @memset(ptr %props, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 336, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %regmap7 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regmap7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %regmap7, align 8
  %dev9 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev9, align 4
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %7 = ptrtoint ptr %call11 to i32
  %version = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 14
  %8 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %version, align 8
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end17, label %do.body20

do.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

do.body20:                                        ; preds = %if.end6
  %lock = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @wled_probe.__key) #9
  %call23 = tail call fastcc i32 @wled_configure(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %do.body20.cleanup_crit_edge

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %do.body20
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4095, ptr %val, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.10, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %max_brightness = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %max_brightness, align 4
  %15 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end64 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb38
    i32 5, label %sw.bb47
  ]

sw.bb:                                            ; preds = %if.end26
  %auto_detection_enabled = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 12
  %18 = ptrtoint ptr %auto_detection_enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %auto_detection_enabled, align 8
  %19 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap7, align 8
  %ctrl_addr.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctrl_addr.i, align 8
  %conv.i = zext i16 %22 to i32
  %add.i = add nuw nsw i32 %conv.i, 77
  %ovp.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 1
  %23 = ptrtoint ptr %ovp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ovp.i, align 4
  %call.i.i160 = call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add.i, i32 noundef 3, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i160)
  %tobool.not.i = icmp eq i32 %call.i.i160, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.do.end35_crit_edge

sw.bb.do.end35_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end.i:                                         ; preds = %sw.bb
  %cfg.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20
  %25 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap7, align 8
  %27 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ctrl_addr.i, align 8
  %conv3.i = zext i16 %28 to i32
  %add4.i = add nuw nsw i32 %conv3.i, 78
  %29 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg.i, align 8
  %call.i141.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %add4.i, i32 noundef 7, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141.i)
  %tobool7.not.i = icmp eq i32 %call.i141.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end.i.do.end35_crit_edge

if.end.i.do.end35_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end9.i:                                        ; preds = %if.end.i
  %31 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap7, align 8
  %33 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ctrl_addr.i, align 8
  %conv12.i = zext i16 %34 to i32
  %add13.i = add nuw nsw i32 %conv12.i, 76
  %switch_freq.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 2
  %35 = ptrtoint ptr %switch_freq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %switch_freq.i, align 8
  %call.i142.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add13.i, i32 noundef 15, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i)
  %tobool16.not.i = icmp eq i32 %call.i142.i, 0
  br i1 %tobool16.not.i, label %for.cond.preheader.i, label %if.end9.i.do.end35_crit_edge

if.end9.i.do.end35_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

for.cond.preheader.i:                             ; preds = %if.end9.i
  %num_strings.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 3
  %37 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_strings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp149.not.i = icmp eq i32 %38, 0
  br i1 %cmp149.not.i, label %for.cond.preheader.i.wled3_setup.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.wled3_setup.exit_crit_edge:  ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled3_setup.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ext_gen.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 9
  %string_i_limit.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 4
  %cabc.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %if.end76.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0151.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end76.i.for.body.i_crit_edge ]
  %sink_en.0150.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %phi.cast.i, %if.end76.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.wled, ptr %call.i, i32 0, i32 20, i32 5, i32 %i.0151.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %41 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ctrl_addr.i, align 8
  %.tr.i = trunc i32 %40 to i16
  %43 = shl i16 %.tr.i, 4
  %44 = add i16 %42, 96
  %conv26.i = add i16 %44, %43
  %45 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap7, align 8
  %conv28.i = zext i16 %conv26.i to i32
  %call.i143.i = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %conv28.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143.i)
  %tobool30.not.i = icmp eq i32 %call.i143.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %for.body.i.do.end35_crit_edge

for.body.i.do.end35_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end32.i:                                       ; preds = %for.body.i
  %47 = ptrtoint ptr %ext_gen.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ext_gen.i, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool34.not.i = icmp eq i8 %48, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end48.i_crit_edge, label %if.then35.i

if.end32.i.if.end48.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then35.i:                                      ; preds = %if.end32.i
  %49 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ctrl_addr.i, align 8
  %51 = add i16 %43, 99
  %conv41.i = add i16 %51, %50
  %52 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap7, align 8
  %conv43.i = zext i16 %conv41.i to i32
  %call.i144.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef %conv43.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %tobool45.not.i = icmp eq i32 %call.i144.i, 0
  br i1 %tobool45.not.i, label %if.then35.i.if.end48.i_crit_edge, label %if.then35.i.do.end35_crit_edge

if.then35.i.do.end35_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.then35.i.if.end48.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then35.i.if.end48.i_crit_edge, %if.end32.i.if.end48.i_crit_edge
  %54 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ctrl_addr.i, align 8
  %56 = add i16 %43, 98
  %conv54.i = add i16 %56, %55
  %57 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap7, align 8
  %conv56.i = zext i16 %conv54.i to i32
  %59 = ptrtoint ptr %string_i_limit.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %string_i_limit.i, align 8
  %call.i145.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef %conv56.i, i32 noundef 31, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %tobool59.not.i = icmp eq i32 %call.i145.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.end48.i.do.end35_crit_edge

if.end48.i.do.end35_crit_edge:                    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end61.i:                                       ; preds = %if.end48.i
  %61 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %ctrl_addr.i, align 8
  %63 = add i16 %43, 102
  %conv67.i = add i16 %63, %62
  %64 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap7, align 8
  %conv69.i = zext i16 %conv67.i to i32
  %66 = ptrtoint ptr %cabc.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %cabc.i, align 2, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool71.not.i = icmp eq i8 %67, 0
  %cond.i = select i1 %tobool71.not.i, i32 0, i32 128
  %call.i146.i = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef %conv69.i, i32 noundef 128, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146.i)
  %tobool74.not.i = icmp eq i32 %call.i146.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end61.i.do.end35_crit_edge

if.end61.i.do.end35_crit_edge:                    ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

if.end76.i:                                       ; preds = %if.end61.i
  %add77.i = add i32 %40, 5
  %shl.i = shl nuw i32 1, %add77.i
  %inc.i = add nuw i32 %i.0151.i, 1
  %shl.masked.i = and i32 %shl.i, 255
  %phi.cast.i = or i32 %shl.masked.i, %sink_en.0150.i
  %68 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_strings.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %69
  br i1 %cmp.i, label %if.end76.i.for.body.i_crit_edge, label %if.end76.i.wled3_setup.exit_crit_edge

if.end76.i.wled3_setup.exit_crit_edge:            ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled3_setup.exit

if.end76.i.for.body.i_crit_edge:                  ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

wled3_setup.exit:                                 ; preds = %if.end76.i.wled3_setup.exit_crit_edge, %for.cond.preheader.i.wled3_setup.exit_crit_edge
  %sink_en.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.wled3_setup.exit_crit_edge ], [ %phi.cast.i, %if.end76.i.wled3_setup.exit_crit_edge ]
  %70 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap7, align 8
  %72 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %ctrl_addr.i, align 8
  %conv82.i = zext i16 %73 to i32
  %add83.i = add nuw nsw i32 %conv82.i, 79
  %call.i147.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %add83.i, i32 noundef 224, i32 noundef %sink_en.0.lcssa.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %tobool31.not = icmp eq i32 %call.i147.i, 0
  br i1 %tobool31.not, label %wled3_setup.exit.do.body67_crit_edge, label %wled3_setup.exit.do.end35_crit_edge

wled3_setup.exit.do.end35_crit_edge:              ; preds = %wled3_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

wled3_setup.exit.do.body67_crit_edge:             ; preds = %wled3_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.end35:                                         ; preds = %wled3_setup.exit.do.end35_crit_edge, %if.end61.i.do.end35_crit_edge, %if.end48.i.do.end35_crit_edge, %if.then35.i.do.end35_crit_edge, %for.body.i.do.end35_crit_edge, %if.end9.i.do.end35_crit_edge, %if.end.i.do.end35_crit_edge, %sw.bb.do.end35_crit_edge
  %retval.0.i235 = phi i32 [ %call.i147.i, %wled3_setup.exit.do.end35_crit_edge ], [ %call.i142.i, %if.end9.i.do.end35_crit_edge ], [ %call.i141.i, %if.end.i.do.end35_crit_edge ], [ %call.i.i160, %sw.bb.do.end35_crit_edge ], [ %call.i146.i, %if.end61.i.do.end35_crit_edge ], [ %call.i145.i, %if.end48.i.do.end35_crit_edge ], [ %call.i144.i, %if.then35.i.do.end35_crit_edge ], [ %call.i143.i, %for.body.i.do.end35_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %cleanup

sw.bb38:                                          ; preds = %if.end26
  %has_short_detect = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 16
  %74 = ptrtoint ptr %has_short_detect to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %has_short_detect, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sink_cfg.i) #9
  %75 = ptrtoint ptr %sink_cfg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %sink_cfg.i, align 4, !annotation !355
  %76 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap7, align 8
  %ctrl_addr.i162 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 6
  %78 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ctrl_addr.i162, align 8
  %conv.i163 = zext i16 %79 to i32
  %add.i164 = add nuw nsw i32 %conv.i163, 77
  %ovp.i165 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 1
  %80 = ptrtoint ptr %ovp.i165 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ovp.i165, align 4
  %call.i.i166 = call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef %add.i164, i32 noundef 3, i32 noundef %81, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %cmp.i167 = icmp slt i32 %call.i.i166, 0
  br i1 %cmp.i167, label %sw.bb38.wled4_setup.exit.thread_crit_edge, label %if.end.i169

sw.bb38.wled4_setup.exit.thread_crit_edge:        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end.i169:                                      ; preds = %sw.bb38
  %cfg.i168 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20
  %82 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap7, align 8
  %84 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ctrl_addr.i162, align 8
  %conv4.i = zext i16 %85 to i32
  %add5.i = add nuw nsw i32 %conv4.i, 78
  %86 = ptrtoint ptr %cfg.i168 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfg.i168, align 8
  %call.i237.i = call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef %add5.i, i32 noundef 7, i32 noundef %87, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237.i)
  %cmp8.i = icmp slt i32 %call.i237.i, 0
  br i1 %cmp8.i, label %if.end.i169.wled4_setup.exit.thread_crit_edge, label %if.end11.i

if.end.i169.wled4_setup.exit.thread_crit_edge:    ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end11.i:                                       ; preds = %if.end.i169
  %88 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap7, align 8
  %90 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %ctrl_addr.i162, align 8
  %conv14.i = zext i16 %91 to i32
  %add15.i = add nuw nsw i32 %conv14.i, 76
  %switch_freq.i170 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 2
  %92 = ptrtoint ptr %switch_freq.i170 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %switch_freq.i170, align 8
  %call.i238.i = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef %add15.i, i32 noundef 15, i32 noundef %93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238.i)
  %cmp18.i = icmp slt i32 %call.i238.i, 0
  br i1 %cmp18.i, label %if.end11.i.wled4_setup.exit.thread_crit_edge, label %if.end21.i

if.end11.i.wled4_setup.exit.thread_crit_edge:     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end21.i:                                       ; preds = %if.end11.i
  %external_pfet.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 11
  %94 = ptrtoint ptr %external_pfet.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %external_pfet.i, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i171 = icmp eq i8 %95, 0
  br i1 %tobool.not.i171, label %if.end21.i.if.end42.i_crit_edge, label %if.then23.i

if.end21.i.if.end42.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.then23.i:                                      ; preds = %if.end21.i
  %96 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap7, align 8
  %98 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ctrl_addr.i162, align 8
  %conv26.i172 = zext i16 %99 to i32
  %add27.i = add nuw nsw i32 %conv26.i172, 208
  %call28.i = call i32 @regmap_write(ptr noundef %97, i32 noundef %add27.i, i32 noundef 165) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then23.i.wled4_setup.exit.thread_crit_edge, label %if.end32.i173

if.then23.i.wled4_setup.exit.thread_crit_edge:    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end32.i173:                                    ; preds = %if.then23.i
  %100 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap7, align 8
  %102 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %ctrl_addr.i162, align 8
  %conv35.i = zext i16 %103 to i32
  %add36.i = add nuw nsw i32 %conv35.i, 226
  %call37.i = call i32 @regmap_write(ptr noundef %101, i32 noundef %add36.i, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end32.i173.wled4_setup.exit.thread_crit_edge, label %if.end32.i173.if.end42.i_crit_edge

if.end32.i173.if.end42.i_crit_edge:               ; preds = %if.end32.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.end32.i173.wled4_setup.exit.thread_crit_edge:  ; preds = %if.end32.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end42.i:                                       ; preds = %if.end32.i173.if.end42.i_crit_edge, %if.end21.i.if.end42.i_crit_edge
  %104 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap7, align 8
  %sink_addr.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 7
  %106 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %sink_addr.i, align 2
  %conv44.i = zext i16 %107 to i32
  %add45.i = add nuw nsw i32 %conv44.i, 70
  %call46.i = call i32 @regmap_read(ptr noundef %105, i32 noundef %add45.i, ptr noundef nonnull %sink_cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end42.i.wled4_setup.exit.thread_crit_edge, label %for.cond.preheader.i175

if.end42.i.wled4_setup.exit.thread_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

for.cond.preheader.i175:                          ; preds = %if.end42.i
  %num_strings.i174 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 3
  %108 = ptrtoint ptr %num_strings.i174 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_strings.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp52246.not.i = icmp eq i32 %109, 0
  br i1 %cmp52246.not.i, label %for.cond.preheader.i175.for.end.i183_crit_edge, label %for.cond.preheader.i175.for.body.i181_crit_edge

for.cond.preheader.i175.for.body.i181_crit_edge:  ; preds = %for.cond.preheader.i175
  br label %for.body.i181

for.cond.preheader.i175.for.end.i183_crit_edge:   ; preds = %for.cond.preheader.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i183

for.body.i181:                                    ; preds = %for.body.i181.for.body.i181_crit_edge, %for.cond.preheader.i175.for.body.i181_crit_edge
  %sink_en.0248.i = phi i32 [ %phi.cast.i180, %for.body.i181.for.body.i181_crit_edge ], [ 0, %for.cond.preheader.i175.for.body.i181_crit_edge ]
  %i.0247.i = phi i32 [ %inc.i178, %for.body.i181.for.body.i181_crit_edge ], [ 0, %for.cond.preheader.i175.for.body.i181_crit_edge ]
  %arrayidx.i176 = getelementptr %struct.wled, ptr %call.i, i32 0, i32 20, i32 5, i32 %i.0247.i
  %110 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i176, align 4
  %add55.i = add i32 %111, 4
  %shl.i177 = shl nuw i32 1, %add55.i
  %inc.i178 = add nuw i32 %i.0247.i, 1
  %shl.masked.i179 = and i32 %shl.i177, 255
  %phi.cast.i180 = or i32 %shl.masked.i179, %sink_en.0248.i
  %exitcond.not.i = icmp eq i32 %inc.i178, %109
  br i1 %exitcond.not.i, label %for.body.i181.for.end.i183_crit_edge, label %for.body.i181.for.body.i181_crit_edge

for.body.i181.for.body.i181_crit_edge:            ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i181

for.body.i181.for.end.i183_crit_edge:             ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i183

for.end.i183:                                     ; preds = %for.body.i181.for.end.i183_crit_edge, %for.cond.preheader.i175.for.end.i183_crit_edge
  %sink_en.0.lcssa.i182 = phi i32 [ 0, %for.cond.preheader.i175.for.end.i183_crit_edge ], [ %phi.cast.i180, %for.body.i181.for.end.i183_crit_edge ]
  %112 = ptrtoint ptr %sink_cfg.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sink_cfg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %sink_en.0.lcssa.i182)
  %cmp59.i = icmp eq i32 %113, %sink_en.0.lcssa.i182
  br i1 %cmp59.i, label %if.then61.i, label %if.end63.i

if.then61.i:                                      ; preds = %for.end.i183
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fault_set.i.i) #9
  %114 = ptrtoint ptr %fault_set.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %fault_set.i.i, align 1, !annotation !355
  %auto_detection_enabled.i.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 12
  %115 = ptrtoint ptr %auto_detection_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %auto_detection_enabled.i.i, align 8, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool.not.i.i, label %if.then61.i.wled_auto_detection_at_init.exit.i_crit_edge, label %if.end.i.i

if.then61.i.wled_auto_detection_at_init.exit.i_crit_edge: ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled_auto_detection_at_init.exit.i

if.end.i.i:                                       ; preds = %if.then61.i
  %call.i239.i = call fastcc i32 @wled_ovp_fault_status(ptr noundef %call.i, ptr noundef nonnull %fault_set.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239.i)
  %cmp.i.i = icmp slt i32 %call.i239.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end2.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.86, i32 noundef %call.i239.i) #12
  br label %wled_auto_detection_at_init.exit.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %119 = ptrtoint ptr %fault_set.i.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %fault_set.i.i, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool3.not.i.i = icmp eq i8 %120, 0
  br i1 %tobool3.not.i.i, label %if.end2.i.i.wled_auto_detection_at_init.exit.i_crit_edge, label %if.then4.i.i

if.end2.i.i.wled_auto_detection_at_init.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled_auto_detection_at_init.exit.i

if.then4.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call fastcc void @wled_auto_string_detection(ptr noundef %call.i) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %wled_auto_detection_at_init.exit.i

wled_auto_detection_at_init.exit.i:               ; preds = %if.then4.i.i, %if.end2.i.i.wled_auto_detection_at_init.exit.i_crit_edge, %do.end.i.i, %if.then61.i.wled_auto_detection_at_init.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i239.i, %do.end.i.i ], [ 0, %if.then61.i.wled_auto_detection_at_init.exit.i_crit_edge ], [ %call.i239.i, %if.then4.i.i ], [ %call.i239.i, %if.end2.i.i.wled_auto_detection_at_init.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fault_set.i.i) #9
  br label %wled4_setup.exit

if.end63.i:                                       ; preds = %for.end.i183
  %121 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap7, align 8
  %123 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %sink_addr.i, align 2
  %conv66.i = zext i16 %124 to i32
  %add67.i = add nuw nsw i32 %conv66.i, 70
  %call.i240.i = call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef %add67.i, i32 noundef 240, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240.i)
  %cmp69.i = icmp slt i32 %call.i240.i, 0
  br i1 %cmp69.i, label %if.end63.i.wled4_setup.exit.thread_crit_edge, label %if.end72.i

if.end63.i.wled4_setup.exit.thread_crit_edge:     ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end72.i:                                       ; preds = %if.end63.i
  %125 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap7, align 8
  %127 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %ctrl_addr.i162, align 8
  %conv75.i = zext i16 %128 to i32
  %add76.i = add nuw nsw i32 %conv75.i, 70
  %call.i241.i = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef %add76.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.i)
  %cmp78.i = icmp slt i32 %call.i241.i, 0
  br i1 %cmp78.i, label %if.end72.i.wled4_setup.exit.thread_crit_edge, label %for.cond82.preheader.i

if.end72.i.wled4_setup.exit.thread_crit_edge:     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

for.cond82.preheader.i:                           ; preds = %if.end72.i
  %129 = ptrtoint ptr %num_strings.i174 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_strings.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp85249.not.i = icmp eq i32 %130, 0
  br i1 %cmp85249.not.i, label %for.cond82.preheader.i.for.end119.i_crit_edge, label %for.body87.lr.ph.i

for.cond82.preheader.i.for.end119.i_crit_edge:    ; preds = %for.cond82.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.body87.lr.ph.i:                               ; preds = %for.cond82.preheader.i
  %string_i_limit.i184 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 4
  br label %for.body87.i

for.cond82.i:                                     ; preds = %if.end102.i
  %inc118.i = add nuw i32 %i.1250.i, 1
  %131 = ptrtoint ptr %num_strings.i174 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_strings.i174, align 4
  %cmp85.i = icmp ult i32 %inc118.i, %132
  br i1 %cmp85.i, label %for.cond82.i.for.body87.i_crit_edge, label %for.cond82.i.for.end119.i_crit_edge

for.cond82.i.for.end119.i_crit_edge:              ; preds = %for.cond82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end119.i

for.cond82.i.for.body87.i_crit_edge:              ; preds = %for.cond82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body87.i

for.body87.i:                                     ; preds = %for.cond82.i.for.body87.i_crit_edge, %for.body87.lr.ph.i
  %i.1250.i = phi i32 [ 0, %for.body87.lr.ph.i ], [ %inc118.i, %for.cond82.i.for.body87.i_crit_edge ]
  %arrayidx90.i = getelementptr %struct.wled, ptr %call.i, i32 0, i32 20, i32 5, i32 %i.1250.i
  %133 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx90.i, align 4
  %135 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %sink_addr.i, align 2
  %.tr.i185 = trunc i32 %134 to i16
  %137 = shl i16 %.tr.i185, 4
  %138 = add i16 %136, 80
  %conv95.i = add i16 %138, %137
  %139 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap7, align 8
  %conv97.i = zext i16 %conv95.i to i32
  %call.i242.i = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef %conv97.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i242.i)
  %cmp99.i = icmp slt i32 %call.i242.i, 0
  br i1 %cmp99.i, label %for.body87.i.wled4_setup.exit.thread_crit_edge, label %if.end102.i

for.body87.i.wled4_setup.exit.thread_crit_edge:   ; preds = %for.body87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end102.i:                                      ; preds = %for.body87.i
  %141 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %sink_addr.i, align 2
  %143 = add i16 %137, 82
  %conv108.i = add i16 %143, %142
  %144 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap7, align 8
  %conv110.i = zext i16 %conv108.i to i32
  %146 = ptrtoint ptr %string_i_limit.i184 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %string_i_limit.i184, align 8
  %call.i243.i = call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef %conv110.i, i32 noundef 15, i32 noundef %147, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243.i)
  %cmp113.i = icmp slt i32 %call.i243.i, 0
  br i1 %cmp113.i, label %if.end102.i.wled4_setup.exit.thread_crit_edge, label %for.cond82.i

if.end102.i.wled4_setup.exit.thread_crit_edge:    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

for.end119.i:                                     ; preds = %for.cond82.i.for.end119.i_crit_edge, %for.cond82.preheader.i.for.end119.i_crit_edge
  %cabc.i186 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 10
  %148 = ptrtoint ptr %cabc.i186 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %cabc.i186, align 2, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool121.i = icmp ne i8 %149, 0
  %call122.i = call i32 @wled4_cabc_config(ptr noundef %call.i, i1 noundef zeroext %tobool121.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp slt i32 %call122.i, 0
  br i1 %cmp123.i, label %for.end119.i.wled4_setup.exit.thread_crit_edge, label %if.end126.i

for.end119.i.wled4_setup.exit.thread_crit_edge:   ; preds = %for.end119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end126.i:                                      ; preds = %for.end119.i
  %150 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap7, align 8
  %152 = ptrtoint ptr %ctrl_addr.i162 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %ctrl_addr.i162, align 8
  %conv129.i = zext i16 %153 to i32
  %add130.i = add nuw nsw i32 %conv129.i, 70
  %call.i244.i = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef %add130.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i244.i)
  %cmp132.i = icmp slt i32 %call.i244.i, 0
  br i1 %cmp132.i, label %if.end126.i.wled4_setup.exit.thread_crit_edge, label %if.end135.i

if.end126.i.wled4_setup.exit.thread_crit_edge:    ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end135.i:                                      ; preds = %if.end126.i
  %154 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap7, align 8
  %156 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %sink_addr.i, align 2
  %conv138.i = zext i16 %157 to i32
  %add139.i = add nuw nsw i32 %conv138.i, 70
  %call.i245.i = call i32 @regmap_update_bits_base(ptr noundef %155, i32 noundef %add139.i, i32 noundef 240, i32 noundef %sink_en.0.lcssa.i182, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245.i)
  %cmp142.i = icmp slt i32 %call.i245.i, 0
  br i1 %cmp142.i, label %if.end135.i.wled4_setup.exit.thread_crit_edge, label %if.end145.i

if.end135.i.wled4_setup.exit.thread_crit_edge:    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wled4_setup.exit.thread

if.end145.i:                                      ; preds = %if.end135.i
  %wled_sync_toggle.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 24
  %158 = ptrtoint ptr %wled_sync_toggle.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %wled_sync_toggle.i, align 8
  %call146.i = call i32 %159(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %cmp147.i = icmp slt i32 %call146.i, 0
  br i1 %cmp147.i, label %do.end.i, label %if.end150.i

do.end.i:                                         ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  %160 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.84, i32 noundef %call146.i) #12
  br label %wled4_setup.exit.thread

if.end150.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  %call151.i = call fastcc i32 @wled_auto_detection_at_init(ptr noundef %call.i) #9
  br label %wled4_setup.exit

wled4_setup.exit.thread:                          ; preds = %do.end.i, %if.end135.i.wled4_setup.exit.thread_crit_edge, %if.end126.i.wled4_setup.exit.thread_crit_edge, %for.end119.i.wled4_setup.exit.thread_crit_edge, %if.end102.i.wled4_setup.exit.thread_crit_edge, %for.body87.i.wled4_setup.exit.thread_crit_edge, %if.end72.i.wled4_setup.exit.thread_crit_edge, %if.end63.i.wled4_setup.exit.thread_crit_edge, %if.end42.i.wled4_setup.exit.thread_crit_edge, %if.end32.i173.wled4_setup.exit.thread_crit_edge, %if.then23.i.wled4_setup.exit.thread_crit_edge, %if.end11.i.wled4_setup.exit.thread_crit_edge, %if.end.i169.wled4_setup.exit.thread_crit_edge, %sw.bb38.wled4_setup.exit.thread_crit_edge
  %retval.0.i187.ph = phi i32 [ %call.i245.i, %if.end135.i.wled4_setup.exit.thread_crit_edge ], [ %call.i244.i, %if.end126.i.wled4_setup.exit.thread_crit_edge ], [ %call122.i, %for.end119.i.wled4_setup.exit.thread_crit_edge ], [ %call.i241.i, %if.end72.i.wled4_setup.exit.thread_crit_edge ], [ %call.i240.i, %if.end63.i.wled4_setup.exit.thread_crit_edge ], [ %call46.i, %if.end42.i.wled4_setup.exit.thread_crit_edge ], [ %call37.i, %if.end32.i173.wled4_setup.exit.thread_crit_edge ], [ %call28.i, %if.then23.i.wled4_setup.exit.thread_crit_edge ], [ %call.i238.i, %if.end11.i.wled4_setup.exit.thread_crit_edge ], [ %call.i237.i, %if.end.i169.wled4_setup.exit.thread_crit_edge ], [ %call.i.i166, %sw.bb38.wled4_setup.exit.thread_crit_edge ], [ %call146.i, %do.end.i ], [ %call.i243.i, %if.end102.i.wled4_setup.exit.thread_crit_edge ], [ %call.i242.i, %for.body87.i.wled4_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sink_cfg.i) #9
  br label %do.end44

wled4_setup.exit:                                 ; preds = %if.end150.i, %wled_auto_detection_at_init.exit.i
  %retval.0.i187 = phi i32 [ %retval.0.i.i, %wled_auto_detection_at_init.exit.i ], [ %call151.i, %if.end150.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sink_cfg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i187)
  %tobool40.not = icmp eq i32 %retval.0.i187, 0
  br i1 %tobool40.not, label %wled4_setup.exit.do.body67_crit_edge, label %wled4_setup.exit.do.end44_crit_edge

wled4_setup.exit.do.end44_crit_edge:              ; preds = %wled4_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

wled4_setup.exit.do.body67_crit_edge:             ; preds = %wled4_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.end44:                                         ; preds = %wled4_setup.exit.do.end44_crit_edge, %wled4_setup.exit.thread
  %retval.0.i187238 = phi i32 [ %retval.0.i187.ph, %wled4_setup.exit.thread ], [ %retval.0.i187, %wled4_setup.exit.do.end44_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

sw.bb47:                                          ; preds = %if.end26
  %has_short_detect48 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 16
  %162 = ptrtoint ptr %has_short_detect48 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %has_short_detect48, align 1
  %cabc_sel = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 7
  %163 = ptrtoint ptr %cabc_sel to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cabc_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool50.not = icmp eq i32 %164, 0
  br i1 %tobool50.not, label %sw.bb47.if.end53_crit_edge, label %if.then51

sw.bb47.if.end53_crit_edge:                       ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then51:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 4095, ptr %max_brightness, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %sw.bb47.if.end53_crit_edge
  %166 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap7, align 8
  %ctrl_addr.i189 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 6
  %168 = ptrtoint ptr %ctrl_addr.i189 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %ctrl_addr.i189, align 8
  %conv.i190 = zext i16 %169 to i32
  %add.i191 = add nuw nsw i32 %conv.i190, 77
  %ovp.i192 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 1
  %170 = ptrtoint ptr %ovp.i192 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ovp.i192, align 4
  %call.i.i193 = call i32 @regmap_update_bits_base(ptr noundef %167, i32 noundef %add.i191, i32 noundef 15, i32 noundef %171, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193)
  %cmp.i194 = icmp slt i32 %call.i.i193, 0
  br i1 %cmp.i194, label %if.end53.do.end59_crit_edge, label %if.end.i199

if.end53.do.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end.i199:                                      ; preds = %if.end53
  %cfg.i195 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20
  %172 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regmap7, align 8
  %174 = ptrtoint ptr %ctrl_addr.i189 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %ctrl_addr.i189, align 8
  %conv4.i196 = zext i16 %175 to i32
  %add5.i197 = add nuw nsw i32 %conv4.i196, 78
  %176 = ptrtoint ptr %cfg.i195 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cfg.i195, align 8
  %call.i206.i = call i32 @regmap_update_bits_base(ptr noundef %173, i32 noundef %add5.i197, i32 noundef 7, i32 noundef %177, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206.i)
  %cmp8.i198 = icmp slt i32 %call.i206.i, 0
  br i1 %cmp8.i198, label %if.end.i199.do.end59_crit_edge, label %if.end11.i204

if.end.i199.do.end59_crit_edge:                   ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end11.i204:                                    ; preds = %if.end.i199
  %178 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap7, align 8
  %180 = ptrtoint ptr %ctrl_addr.i189 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %ctrl_addr.i189, align 8
  %conv14.i200 = zext i16 %181 to i32
  %add15.i201 = add nuw nsw i32 %conv14.i200, 76
  %switch_freq.i202 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 2
  %182 = ptrtoint ptr %switch_freq.i202 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %switch_freq.i202, align 8
  %call.i207.i = call i32 @regmap_update_bits_base(ptr noundef %179, i32 noundef %add15.i201, i32 noundef 15, i32 noundef %183, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %cmp18.i203 = icmp slt i32 %call.i207.i, 0
  br i1 %cmp18.i203, label %if.end11.i204.do.end59_crit_edge, label %for.cond.preheader.i206

if.end11.i204.do.end59_crit_edge:                 ; preds = %if.end11.i204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

for.cond.preheader.i206:                          ; preds = %if.end11.i204
  %num_strings.i205 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 3
  %184 = ptrtoint ptr %num_strings.i205 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_strings.i205, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp23216.not.i = icmp eq i32 %185, 0
  br i1 %cmp23216.not.i, label %for.cond.preheader.i206.for.end.i222_crit_edge, label %for.body.lr.ph.i209

for.cond.preheader.i206.for.end.i222_crit_edge:   ; preds = %for.cond.preheader.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i222

for.body.lr.ph.i209:                              ; preds = %for.cond.preheader.i206
  %sink_addr.i207 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 7
  %string_i_limit.i208 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 4
  %mod_sel.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 6
  br label %for.body.i212

for.body.i212:                                    ; preds = %if.end37.i.for.body.i212_crit_edge, %for.body.lr.ph.i209
  %sink_en.0218.i = phi i32 [ 0, %for.body.lr.ph.i209 ], [ %phi.cast.i219, %if.end37.i.for.body.i212_crit_edge ]
  %i.0217.i = phi i32 [ 0, %for.body.lr.ph.i209 ], [ %inc.i217, %if.end37.i.for.body.i212_crit_edge ]
  %arrayidx.i210 = getelementptr %struct.wled, ptr %call.i, i32 0, i32 20, i32 5, i32 %i.0217.i
  %186 = ptrtoint ptr %arrayidx.i210 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx.i210, align 4
  %188 = ptrtoint ptr %sink_addr.i207 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %sink_addr.i207, align 2
  %.tr.i211 = trunc i32 %187 to i16
  %190 = shl i16 %.tr.i211, 4
  %191 = add i16 %189, 82
  %conv29.i = add i16 %191, %190
  %192 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap7, align 8
  %conv31.i = zext i16 %conv29.i to i32
  %194 = ptrtoint ptr %string_i_limit.i208 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %string_i_limit.i208, align 8
  %call.i208.i = call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef %conv31.i, i32 noundef 15, i32 noundef %195, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208.i)
  %cmp34.i = icmp slt i32 %call.i208.i, 0
  br i1 %cmp34.i, label %for.body.i212.do.end59_crit_edge, label %if.end37.i

for.body.i212.do.end59_crit_edge:                 ; preds = %for.body.i212
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end37.i:                                       ; preds = %for.body.i212
  %196 = ptrtoint ptr %sink_addr.i207 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %sink_addr.i207, align 2
  %198 = add i16 %190, 115
  %conv43.i213 = add i16 %198, %197
  %199 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap7, align 8
  %conv45.i = zext i16 %conv43.i213 to i32
  %201 = ptrtoint ptr %mod_sel.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %mod_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp47.i214 = icmp ne i32 %202, 0
  %cond.i215 = zext i1 %cmp47.i214 to i32
  %call.i209.i = call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef %conv45.i, i32 noundef 3, i32 noundef %cond.i215, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %add50.i = add i32 %187, 4
  %shl.i216 = shl nuw i32 1, %add50.i
  %inc.i217 = add nuw i32 %i.0217.i, 1
  %shl.masked.i218 = and i32 %shl.i216, 255
  %phi.cast.i219 = or i32 %shl.masked.i218, %sink_en.0218.i
  %203 = ptrtoint ptr %num_strings.i205 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %num_strings.i205, align 4
  %cmp23.i = icmp ult i32 %inc.i217, %204
  br i1 %cmp23.i, label %if.end37.i.for.body.i212_crit_edge, label %if.end37.i.for.end.i222_crit_edge

if.end37.i.for.end.i222_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i222

if.end37.i.for.body.i212_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i212

for.end.i222:                                     ; preds = %if.end37.i.for.end.i222_crit_edge, %for.cond.preheader.i206.for.end.i222_crit_edge
  %sink_en.0.lcssa.i220 = phi i32 [ 0, %for.cond.preheader.i206.for.end.i222_crit_edge ], [ %phi.cast.i219, %if.end37.i.for.end.i222_crit_edge ]
  %cabc_disabled.i.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 17
  %205 = ptrtoint ptr %cabc_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %cabc_disabled.i.i, align 2, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool.not.i.i221 = icmp eq i8 %206, 0
  br i1 %tobool.not.i.i221, label %if.end.i.i224, label %for.end.i222.if.end60.i_crit_edge

for.end.i222.if.end60.i_crit_edge:                ; preds = %for.end.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.end.i.i224:                                    ; preds = %for.end.i222
  %207 = ptrtoint ptr %cabc_sel to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %cabc_sel, align 8
  %phi.cast28.i.i = and i32 %208, 255
  %mod_sel.i.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 6
  %209 = ptrtoint ptr %mod_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mod_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp.i.i223 = icmp eq i32 %210, 0
  %cond4.i.i = select i1 %cmp.i.i223, i32 81, i32 97
  %211 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap7, align 8
  %sink_addr.i.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 7
  %213 = ptrtoint ptr %sink_addr.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %sink_addr.i.i, align 2
  %conv5.i.i = zext i16 %214 to i32
  %add.i.i = add nuw nsw i32 %cond4.i.i, %conv5.i.i
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef %add.i.i, i32 noundef 3, i32 noundef %phi.cast28.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp7.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp7.i.i, label %wled5_cabc_config.exit.i, label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end.i.i224
  %215 = ptrtoint ptr %cabc_sel to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %cabc_sel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool14.not.i.i = icmp eq i32 %216, 0
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end11.i.i.if.end60.i_crit_edge

if.end11.i.i.if.end60.i_crit_edge:                ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then15.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %217 = ptrtoint ptr %cabc_disabled.i.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %cabc_disabled.i.i, align 2
  br label %if.end60.i

wled5_cabc_config.exit.i:                         ; preds = %if.end.i.i224
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call.i.i.i) #12
  br label %do.end59

if.end60.i:                                       ; preds = %if.then15.i.i, %if.end11.i.i.if.end60.i_crit_edge, %for.end.i222.if.end60.i_crit_edge
  %sink_addr61.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 7
  %218 = ptrtoint ptr %sink_addr61.i to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %sink_addr61.i, align 2
  %add63.i = add i16 %219, 80
  %mod_sel66.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 20, i32 6
  %220 = ptrtoint ptr %mod_sel66.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %mod_sel66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %cmp67.i = icmp eq i32 %221, 0
  %cond69.i = select i1 %cmp67.i, i32 128, i32 0
  %222 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %regmap7, align 8
  %conv71.i = zext i16 %add63.i to i32
  %call.i210.i = call i32 @regmap_update_bits_base(ptr noundef %223, i32 noundef %conv71.i, i32 noundef 128, i32 noundef %cond69.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210.i)
  %cmp73.i = icmp slt i32 %call.i210.i, 0
  br i1 %cmp73.i, label %if.end60.i.do.end59_crit_edge, label %if.end76.i225

if.end60.i.do.end59_crit_edge:                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end76.i225:                                    ; preds = %if.end60.i
  %224 = ptrtoint ptr %sink_addr61.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %sink_addr61.i, align 2
  %add79.i = add i16 %225, 96
  %226 = ptrtoint ptr %mod_sel66.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %mod_sel66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %227)
  %cmp83.i = icmp eq i32 %227, 1
  %cond85.i = select i1 %cmp83.i, i32 128, i32 0
  %228 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %regmap7, align 8
  %conv87.i = zext i16 %add79.i to i32
  %call.i211.i = call i32 @regmap_update_bits_base(ptr noundef %229, i32 noundef %conv87.i, i32 noundef 128, i32 noundef %cond85.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i)
  %cmp89.i = icmp slt i32 %call.i211.i, 0
  br i1 %cmp89.i, label %if.end76.i225.do.end59_crit_edge, label %if.end92.i

if.end76.i225.do.end59_crit_edge:                 ; preds = %if.end76.i225
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end92.i:                                       ; preds = %if.end76.i225
  %230 = ptrtoint ptr %mod_sel66.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mod_sel66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp95.i = icmp eq i32 %231, 0
  %cond97.i = select i1 %cmp95.i, i16 82, i16 98
  %232 = ptrtoint ptr %sink_addr61.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %sink_addr61.i, align 2
  %add100.i = add i16 %cond97.i, %233
  %234 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %max_brightness, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %235)
  %cmp102.i = icmp eq i32 %235, 32767
  %cond104.i = zext i1 %cmp102.i to i32
  %236 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regmap7, align 8
  %conv106.i = zext i16 %add100.i to i32
  %call107.i = call i32 @regmap_write(ptr noundef %237, i32 noundef %conv106.i, i32 noundef %cond104.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %cmp108.i = icmp slt i32 %call107.i, 0
  br i1 %cmp108.i, label %if.end92.i.do.end59_crit_edge, label %if.end111.i

if.end92.i.do.end59_crit_edge:                    ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end111.i:                                      ; preds = %if.end92.i
  %238 = ptrtoint ptr %regmap7 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %regmap7, align 8
  %240 = ptrtoint ptr %sink_addr61.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %sink_addr61.i, align 2
  %conv114.i = zext i16 %241 to i32
  %add115.i = add nuw nsw i32 %conv114.i, 70
  %call.i212.i = call i32 @regmap_update_bits_base(ptr noundef %239, i32 noundef %add115.i, i32 noundef 240, i32 noundef %sink_en.0.lcssa.i220, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212.i)
  %cmp118.i = icmp slt i32 %call.i212.i, 0
  br i1 %cmp118.i, label %if.end111.i.do.end59_crit_edge, label %if.end121.i

if.end111.i.do.end59_crit_edge:                   ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

if.end121.i:                                      ; preds = %if.end111.i
  %wled_sync_toggle.i226 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 24
  %242 = ptrtoint ptr %wled_sync_toggle.i226 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %wled_sync_toggle.i226, align 8
  %call122.i227 = call i32 %243(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i227)
  %cmp123.i228 = icmp slt i32 %call122.i227, 0
  br i1 %cmp123.i228, label %do.end.i229, label %wled5_setup.exit

do.end.i229:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  %call126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, i32 noundef %call122.i227) #12
  br label %do.end59

wled5_setup.exit:                                 ; preds = %if.end121.i
  %call128.i = call fastcc i32 @wled_auto_detection_at_init(ptr noundef %call.i) #9
  %244 = call i32 @llvm.smin.i32(i32 %call128.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call128.i)
  %tobool55.not = icmp sgt i32 %call128.i, -1
  br i1 %tobool55.not, label %wled5_setup.exit.do.body67_crit_edge, label %wled5_setup.exit.do.end59_crit_edge

wled5_setup.exit.do.end59_crit_edge:              ; preds = %wled5_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end59

wled5_setup.exit.do.body67_crit_edge:             ; preds = %wled5_setup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.end59:                                         ; preds = %wled5_setup.exit.do.end59_crit_edge, %do.end.i229, %if.end111.i.do.end59_crit_edge, %if.end92.i.do.end59_crit_edge, %if.end76.i225.do.end59_crit_edge, %if.end60.i.do.end59_crit_edge, %wled5_cabc_config.exit.i, %for.body.i212.do.end59_crit_edge, %if.end11.i204.do.end59_crit_edge, %if.end.i199.do.end59_crit_edge, %if.end53.do.end59_crit_edge
  %retval.0.i230241 = phi i32 [ %244, %wled5_setup.exit.do.end59_crit_edge ], [ %call.i212.i, %if.end111.i.do.end59_crit_edge ], [ %call107.i, %if.end92.i.do.end59_crit_edge ], [ %call.i211.i, %if.end76.i225.do.end59_crit_edge ], [ %call.i210.i, %if.end60.i.do.end59_crit_edge ], [ %call.i.i.i, %wled5_cabc_config.exit.i ], [ %call.i207.i, %if.end11.i204.do.end59_crit_edge ], [ %call.i206.i, %if.end.i199.do.end59_crit_edge ], [ %call.i.i193, %if.end53.do.end59_crit_edge ], [ %call122.i227, %do.end.i229 ], [ %call.i208.i, %for.body.i212.do.end59_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %cleanup

do.end64:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %245 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.21) #12
  br label %do.body67

do.body67:                                        ; preds = %do.end64, %wled5_setup.exit.do.body67_crit_edge, %wled4_setup.exit.do.body67_crit_edge, %wled3_setup.exit.do.body67_crit_edge
  %ovp_work = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21
  call void @__init_work(ptr noundef %ovp_work, i32 noundef 0) #9
  %247 = ptrtoint ptr %ovp_work to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 -64, ptr %ovp_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.24, ptr noundef nonnull @wled_probe.__key.23, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry74 = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21, i32 0, i32 1
  %248 = ptrtoint ptr %entry74 to i32
  call void @__asan_store4_noabort(i32 %248)
  store volatile ptr %entry74, ptr %entry74, align 4
  %prev.i = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %249 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %entry74, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21, i32 0, i32 2
  %250 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr @wled_ovp_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wled, ptr %call.i, i32 0, i32 21, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.26, ptr noundef nonnull @wled_probe.__key.25) #9
  %call85 = call fastcc i32 @wled_configure_short_irq(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp = icmp slt i32 %call85, 0
  br i1 %cmp, label %do.body67.cleanup_crit_edge, label %if.end87

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end87:                                         ; preds = %do.body67
  %call88 = call fastcc i32 @wled_configure_ovp_irq(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end87.cleanup_crit_edge, label %if.end91

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %251 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 2048, ptr %val, align 4
  %252 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %of_node, align 8
  %call.i.i231 = call i32 @of_property_read_variable_u32_array(ptr noundef %253, ptr noundef nonnull @.str.27, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  %254 = getelementptr inbounds i8, ptr %props, i32 8
  %255 = call ptr @memset(ptr %254, i32 0, i32 20)
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 1, ptr %1, align 4
  %257 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %val, align 4
  %259 = ptrtoint ptr %props to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %258, ptr %props, align 4
  %260 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %max_brightness, align 4
  %262 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %261, ptr %0, align 4
  %263 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %call.i, align 8
  %call99 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %264, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @wled_ops, ptr noundef nonnull %props) #9
  %cmp.i.i232 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  %265 = ptrtoint ptr %call99 to i32
  %spec.select.i = select i1 %cmp.i.i232, i32 %265, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.end87.cleanup_crit_edge, %do.body67.cleanup_crit_edge, %do.end59, %do.end44, %do.end35, %do.body20.cleanup_crit_edge, %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %spec.select.i, %if.end91 ], [ %retval.0.i230241, %do.end59 ], [ %retval.0.i187238, %do.end44 ], [ %retval.0.i235, %do.end35 ], [ -19, %do.end17 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call23, %do.body20.cleanup_crit_edge ], [ %call85, %do.body67.cleanup_crit_edge ], [ %call88, %if.end87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %lock) #9
  %ovp_work = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 21
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ovp_work) #9
  %short_irq = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %short_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %short_irq, align 8
  tail call void @disable_irq(i32 noundef %3) #9
  %ovp_irq = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ovp_irq, align 4
  tail call void @disable_irq(i32 noundef %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_configure(ptr noundef %wled) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  %wled3_opts = alloca [4 x %struct.wled_u32_opts], align 4
  %wled4_opts = alloca [4 x %struct.wled_u32_opts], align 4
  %wled5_opts = alloca [6 x %struct.wled_u32_opts], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20
  %dev2 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !355
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wled3_opts) #9
  %3 = ptrtoint ptr %wled3_opts to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.28, ptr %wled3_opts, align 4
  %val_ptr = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 0, i32 1
  %4 = ptrtoint ptr %val_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cfg1, ptr %val_ptr, align 4
  %cfg3 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 0, i32 2
  %5 = ptrtoint ptr %cfg3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @wled3_boost_i_limit_cfg, ptr %cfg3, align 4
  %arrayinit.element = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.29, ptr %arrayinit.element, align 4
  %val_ptr5 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 1, i32 1
  %string_i_limit = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 4
  %7 = ptrtoint ptr %val_ptr5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %string_i_limit, ptr %val_ptr5, align 4
  %cfg6 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 1, i32 2
  %8 = ptrtoint ptr %cfg6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wled3_string_i_limit_cfg, ptr %cfg6, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 2
  %9 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.30, ptr %arrayinit.element7, align 4
  %val_ptr9 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 2, i32 1
  %ovp = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %val_ptr9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ovp, ptr %val_ptr9, align 4
  %cfg10 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 2, i32 2
  %11 = ptrtoint ptr %cfg10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wled3_ovp_cfg, ptr %cfg10, align 4
  %arrayinit.element11 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 3
  %12 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.31, ptr %arrayinit.element11, align 4
  %val_ptr13 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 3, i32 1
  %switch_freq = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 2
  %13 = ptrtoint ptr %val_ptr13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %switch_freq, ptr %val_ptr13, align 4
  %cfg14 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled3_opts, i32 3, i32 2
  %14 = ptrtoint ptr %cfg14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @wled3_switch_freq_cfg, ptr %cfg14, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %wled4_opts) #9
  %15 = ptrtoint ptr %wled4_opts to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.28, ptr %wled4_opts, align 4
  %val_ptr17 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 0, i32 1
  %16 = ptrtoint ptr %val_ptr17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cfg1, ptr %val_ptr17, align 4
  %cfg19 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 0, i32 2
  %17 = ptrtoint ptr %cfg19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wled4_boost_i_limit_cfg, ptr %cfg19, align 4
  %arrayinit.element20 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 1
  %18 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.32, ptr %arrayinit.element20, align 4
  %val_ptr22 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 1, i32 1
  %19 = ptrtoint ptr %val_ptr22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %string_i_limit, ptr %val_ptr22, align 4
  %cfg24 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 1, i32 2
  %20 = ptrtoint ptr %cfg24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wled4_string_i_limit_cfg, ptr %cfg24, align 4
  %arrayinit.element25 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 2
  %21 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.33, ptr %arrayinit.element25, align 4
  %val_ptr27 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 2, i32 1
  %22 = ptrtoint ptr %val_ptr27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ovp, ptr %val_ptr27, align 4
  %cfg29 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 2, i32 2
  %23 = ptrtoint ptr %cfg29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wled4_ovp_cfg, ptr %cfg29, align 4
  %arrayinit.element30 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 3
  %24 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.31, ptr %arrayinit.element30, align 4
  %val_ptr32 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 3, i32 1
  %25 = ptrtoint ptr %val_ptr32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %switch_freq, ptr %val_ptr32, align 4
  %cfg34 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled4_opts, i32 3, i32 2
  %26 = ptrtoint ptr %cfg34 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @wled3_switch_freq_cfg, ptr %cfg34, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %wled5_opts) #9
  %27 = ptrtoint ptr %wled5_opts to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.28, ptr %wled5_opts, align 4
  %val_ptr37 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 0, i32 1
  %28 = ptrtoint ptr %val_ptr37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cfg1, ptr %val_ptr37, align 4
  %cfg39 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 0, i32 2
  %29 = ptrtoint ptr %cfg39 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @wled5_boost_i_limit_cfg, ptr %cfg39, align 4
  %arrayinit.element40 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 1
  %30 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.32, ptr %arrayinit.element40, align 4
  %val_ptr42 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 1, i32 1
  %31 = ptrtoint ptr %val_ptr42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %string_i_limit, ptr %val_ptr42, align 4
  %cfg44 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 1, i32 2
  %32 = ptrtoint ptr %cfg44 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @wled4_string_i_limit_cfg, ptr %cfg44, align 4
  %arrayinit.element45 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 2
  %33 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.33, ptr %arrayinit.element45, align 4
  %val_ptr47 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 2, i32 1
  %34 = ptrtoint ptr %val_ptr47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ovp, ptr %val_ptr47, align 4
  %cfg49 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 2, i32 2
  %35 = ptrtoint ptr %cfg49 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @wled5_ovp_cfg, ptr %cfg49, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 3
  %36 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.31, ptr %arrayinit.element50, align 4
  %val_ptr52 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 3, i32 1
  %37 = ptrtoint ptr %val_ptr52 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %switch_freq, ptr %val_ptr52, align 4
  %cfg54 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 3, i32 2
  %38 = ptrtoint ptr %cfg54 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @wled3_switch_freq_cfg, ptr %cfg54, align 4
  %arrayinit.element55 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 4
  %39 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.34, ptr %arrayinit.element55, align 4
  %val_ptr57 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 4, i32 1
  %mod_sel = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 6
  %40 = ptrtoint ptr %val_ptr57 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mod_sel, ptr %val_ptr57, align 4
  %cfg58 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 4, i32 2
  %41 = ptrtoint ptr %cfg58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @wled5_mod_sel_cfg, ptr %cfg58, align 4
  %arrayinit.element59 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 5
  %42 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.35, ptr %arrayinit.element59, align 4
  %val_ptr61 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 5, i32 1
  %cabc_sel = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 7
  %43 = ptrtoint ptr %val_ptr61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cabc_sel, ptr %val_ptr61, align 4
  %cfg62 = getelementptr inbounds %struct.wled_u32_opts, ptr %wled5_opts, i32 5, i32 2
  %44 = ptrtoint ptr %cfg62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @wled5_cabc_sel_cfg, ptr %cfg62, align 4
  %cs_out_en = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 8
  %ext_gen = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 9
  %cabc = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 10
  %external_pfet = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 11
  %auto_detection_enabled = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 12
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__of_get_address(ptr noundef %46, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i, align 4
  %conv = trunc i32 %50 to i16
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %51 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv, ptr %ctrl_addr, align 8
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 8
  %call81 = tail call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.43, ptr noundef %wled) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end.if.end87_crit_edge, label %if.then83

if.end.if.end87_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then83:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call85 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %1, i32 noundef 3264, ptr noundef nonnull @.str.44, ptr noundef %55) #9
  %56 = ptrtoint ptr %wled to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call85, ptr %wled, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end.if.end87_crit_edge
  %version = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 14
  %57 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %version, align 8
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %58, label %do.end126 [
    i32 3, label %sw.bb
    i32 4, label %sw.bb89
    i32 5, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %60 = call ptr @memcpy(ptr %cfg1, ptr @wled3_config_defaults, i32 52)
  %wled_set_brightness = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 22
  %61 = ptrtoint ptr %wled_set_brightness to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @wled3_set_brightness, ptr %wled_set_brightness, align 8
  %wled_sync_toggle = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 24
  %62 = ptrtoint ptr %wled_sync_toggle to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @wled3_sync_toggle, ptr %wled_sync_toggle, align 8
  %max_string_count = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %63 = ptrtoint ptr %max_string_count to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 3, ptr %max_string_count, align 4
  %64 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %ctrl_addr, align 8
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end87
  %66 = call ptr @memcpy(ptr %cfg1, ptr @wled4_config_defaults, i32 52)
  %wled_set_brightness91 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 22
  %67 = ptrtoint ptr %wled_set_brightness91 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @wled4_set_brightness, ptr %wled_set_brightness91, align 8
  %wled_sync_toggle92 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 24
  %68 = ptrtoint ptr %wled_sync_toggle92 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @wled3_sync_toggle, ptr %wled_sync_toggle92, align 8
  %wled_cabc_config = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 23
  %69 = ptrtoint ptr %wled_cabc_config to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @wled4_cabc_config, ptr %wled_cabc_config, align 4
  %wled_ovp_delay = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 25
  %70 = ptrtoint ptr %wled_ovp_delay to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @wled4_ovp_delay, ptr %wled_ovp_delay, align 4
  %wled_auto_detection_required = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 26
  %71 = ptrtoint ptr %wled_auto_detection_required to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @wled4_auto_detection_required, ptr %wled_auto_detection_required, align 8
  %max_string_count93 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %72 = ptrtoint ptr %max_string_count93 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 4, ptr %max_string_count93, align 4
  %73 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node, align 8
  %call.i415 = tail call ptr @__of_get_address(ptr noundef %74, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool96.not = icmp eq ptr %call.i415, null
  br i1 %tobool96.not, label %do.end100, label %if.end102

do.end100:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end102:                                        ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %call.i415 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call.i415, align 4
  %conv103 = trunc i32 %78 to i16
  br label %sw.epilog

sw.bb105:                                         ; preds = %if.end87
  %79 = call ptr @memcpy(ptr %cfg1, ptr @wled5_config_defaults, i32 52)
  %wled_set_brightness107 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 22
  %80 = ptrtoint ptr %wled_set_brightness107 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @wled5_set_brightness, ptr %wled_set_brightness107, align 8
  %wled_sync_toggle108 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 24
  %81 = ptrtoint ptr %wled_sync_toggle108 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @wled3_sync_toggle, ptr %wled_sync_toggle108, align 8
  %wled_cabc_config109 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 23
  %82 = ptrtoint ptr %wled_cabc_config109 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @wled5_cabc_config, ptr %wled_cabc_config109, align 4
  %wled_ovp_delay110 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 25
  %83 = ptrtoint ptr %wled_ovp_delay110 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @wled5_ovp_delay, ptr %wled_ovp_delay110, align 4
  %wled_auto_detection_required111 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 26
  %84 = ptrtoint ptr %wled_auto_detection_required111 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @wled5_auto_detection_required, ptr %wled_auto_detection_required111, align 8
  %max_string_count112 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %85 = ptrtoint ptr %max_string_count112 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 4, ptr %max_string_count112, align 4
  %86 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node, align 8
  %call.i416 = tail call ptr @__of_get_address(ptr noundef %87, i32 noundef 1, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %tobool115.not = icmp eq ptr %call.i416, null
  br i1 %tobool115.not, label %do.end119, label %if.end121

do.end119:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end121:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %call.i416 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %call.i416, align 4
  %conv122 = trunc i32 %91 to i16
  br label %sw.epilog

do.end126:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.21) #12
  br label %cleanup

sw.epilog:                                        ; preds = %if.end121, %if.end102, %sw.bb
  %conv122.sink = phi i16 [ %conv122, %if.end121 ], [ %conv103, %if.end102 ], [ %65, %sw.bb ]
  %size.0 = phi i32 [ 6, %if.end121 ], [ 4, %if.end102 ], [ 4, %sw.bb ]
  %u32_opts.0 = phi ptr [ %wled5_opts, %if.end121 ], [ %wled4_opts, %if.end102 ], [ %wled3_opts, %sw.bb ]
  %sink_addr123 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %94 = ptrtoint ptr %sink_addr123 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv122.sink, ptr %sink_addr123, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc177.for.body_crit_edge, %sw.epilog
  %i.0439 = phi i32 [ 0, %sw.epilog ], [ %inc178, %for.inc177.for.body_crit_edge ]
  %95 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %of_node, align 8
  %arrayidx = getelementptr %struct.wled_u32_opts, ptr %u32_opts.0, i32 %i.0439
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %96, ptr noundef %98, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  %99 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %99, label %do.end139 [
    i32 -22, label %for.body.for.inc177_crit_edge
    i32 0, label %for.cond144.preheader
  ]

for.body.for.inc177_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc177

for.cond144.preheader:                            ; preds = %for.body
  %101 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %102)
  %cmp145.not434 = icmp eq i32 %102, -1
  br i1 %cmp145.not434, label %for.cond144.preheader.do.body164_crit_edge, label %for.body147.lr.ph

for.cond144.preheader.do.body164_crit_edge:       ; preds = %for.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body164

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %cfg149 = getelementptr %struct.wled_u32_opts, ptr %u32_opts.0, i32 %i.0439, i32 2
  br label %for.body147

do.end139:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef %104) #12
  br label %cleanup

for.body147:                                      ; preds = %for.inc.for.body147_crit_edge, %for.body147.lr.ph
  %j.0435 = phi i32 [ 0, %for.body147.lr.ph ], [ %inc, %for.inc.for.body147_crit_edge ]
  %105 = ptrtoint ptr %cfg149 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cfg149, align 4
  %size.i = getelementptr inbounds %struct.wled_var_cfg, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %j.0435)
  %cmp.not.i = icmp ugt i32 %108, %j.0435
  br i1 %cmp.not.i, label %if.end.i, label %for.body147.do.end156_crit_edge

for.body147.do.end156_crit_edge:                  ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156

if.end.i:                                         ; preds = %for.body147
  %fn.i = getelementptr inbounds %struct.wled_var_cfg, ptr %106, i32 0, i32 1
  %109 = ptrtoint ptr %fn.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %fn.i, align 4
  %tobool.not.i = icmp eq ptr %110, null
  br i1 %tobool.not.i, label %if.end3.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i417 = call i32 %110(i32 noundef %j.0435) #9
  br label %wled_values.exit

if.end3.i:                                        ; preds = %if.end.i
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %106, align 4
  %tobool4.not.i = icmp eq ptr %112, null
  br i1 %tobool4.not.i, label %if.end3.i.if.end159_crit_edge, label %if.then5.i

if.end3.i.if.end159_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i32, ptr %112, i32 %j.0435
  %113 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.i, align 4
  br label %wled_values.exit

wled_values.exit:                                 ; preds = %if.then5.i, %if.then1.i
  %retval.0.i418 = phi i32 [ %call.i417, %if.then1.i ], [ %114, %if.then5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i418)
  %cmp151 = icmp eq i32 %retval.0.i418, -1
  br i1 %cmp151, label %wled_values.exit.do.end156_crit_edge, label %wled_values.exit.if.end159_crit_edge

wled_values.exit.if.end159_crit_edge:             ; preds = %wled_values.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end159

wled_values.exit.do.end156_crit_edge:             ; preds = %wled_values.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end156

do.end156:                                        ; preds = %wled_values.exit.do.end156_crit_edge, %for.body147.do.end156_crit_edge
  %115 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %116) #12
  br label %cleanup

if.end159:                                        ; preds = %wled_values.exit.if.end159_crit_edge, %if.end3.i.if.end159_crit_edge
  %retval.0.i418427 = phi i32 [ %retval.0.i418, %wled_values.exit.if.end159_crit_edge ], [ %j.0435, %if.end3.i.if.end159_crit_edge ]
  %117 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i418427, i32 %118)
  %cmp160 = icmp eq i32 %retval.0.i418427, %118
  br i1 %cmp160, label %if.end159.do.body164_crit_edge, label %for.inc

if.end159.do.body164_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body164

for.inc:                                          ; preds = %if.end159
  %inc = add nuw i32 %j.0435, 1
  %119 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val, align 4
  %cmp145.not = icmp eq i32 %retval.0.i418427, %120
  br i1 %cmp145.not, label %for.inc.do.body164_crit_edge, label %for.inc.for.body147_crit_edge

for.inc.for.body147_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body147

for.inc.do.body164_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body164

do.body164:                                       ; preds = %for.inc.do.body164_crit_edge, %if.end159.do.body164_crit_edge, %for.cond144.preheader.do.body164_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond144.preheader.do.body164_crit_edge ], [ %inc, %for.inc.do.body164_crit_edge ], [ %j.0435, %if.end159.do.body164_crit_edge ]
  %c.1 = phi i32 [ -1, %for.cond144.preheader.do.body164_crit_edge ], [ %retval.0.i418427, %for.inc.do.body164_crit_edge ], [ %retval.0.i418427, %if.end159.do.body164_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_configure.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_configure, %if.then169)) #9
          to label %do.end174 [label %if.then169], !srcloc !356

if.then169:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_configure.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef %122, i32 noundef %c.1) #9
  br label %do.end174

do.end174:                                        ; preds = %if.then169, %do.body164
  %val_ptr176 = getelementptr %struct.wled_u32_opts, ptr %u32_opts.0, i32 %i.0439, i32 1
  %123 = ptrtoint ptr %val_ptr176 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %val_ptr176, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %j.0.lcssa, ptr %124, align 4
  br label %for.inc177

for.inc177:                                       ; preds = %do.end174, %for.body.for.inc177_crit_edge
  %inc178 = add nuw nsw i32 %i.0439, 1
  %exitcond.not = icmp eq i32 %inc178, %size.0
  br i1 %exitcond.not, label %for.body183.preheader, label %for.inc177.for.body_crit_edge

for.inc177.for.body_crit_edge:                    ; preds = %for.inc177
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body183.preheader:                            ; preds = %for.inc177
  %126 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %of_node, align 8
  %call.i419 = call ptr @of_find_property(ptr noundef %127, ptr noundef nonnull @.str.36, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i419, null
  br i1 %tobool.i.not, label %for.body183.preheader.for.inc192_crit_edge, label %if.then188

for.body183.preheader.for.inc192_crit_edge:       ; preds = %for.body183.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc192

if.then188:                                       ; preds = %for.body183.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %cs_out_en to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %cs_out_en, align 1
  br label %for.inc192

for.inc192:                                       ; preds = %if.then188, %for.body183.preheader.for.inc192_crit_edge
  %129 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %of_node, align 8
  %call.i419.1 = call ptr @of_find_property(ptr noundef %130, ptr noundef nonnull @.str.37, ptr noundef null) #9
  %tobool.i.not.1 = icmp eq ptr %call.i419.1, null
  br i1 %tobool.i.not.1, label %for.inc192.for.inc192.1_crit_edge, label %if.then188.1

for.inc192.for.inc192.1_crit_edge:                ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc192.1

if.then188.1:                                     ; preds = %for.inc192
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %ext_gen to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %ext_gen, align 1
  br label %for.inc192.1

for.inc192.1:                                     ; preds = %if.then188.1, %for.inc192.for.inc192.1_crit_edge
  %132 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %of_node, align 8
  %call.i419.2 = call ptr @of_find_property(ptr noundef %133, ptr noundef nonnull @.str.38, ptr noundef null) #9
  %tobool.i.not.2 = icmp eq ptr %call.i419.2, null
  br i1 %tobool.i.not.2, label %for.inc192.1.for.inc192.2_crit_edge, label %if.then188.2

for.inc192.1.for.inc192.2_crit_edge:              ; preds = %for.inc192.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc192.2

if.then188.2:                                     ; preds = %for.inc192.1
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %cabc to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %cabc, align 1
  br label %for.inc192.2

for.inc192.2:                                     ; preds = %if.then188.2, %for.inc192.1.for.inc192.2_crit_edge
  %135 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %of_node, align 8
  %call.i419.3 = call ptr @of_find_property(ptr noundef %136, ptr noundef nonnull @.str.39, ptr noundef null) #9
  %tobool.i.not.3 = icmp eq ptr %call.i419.3, null
  br i1 %tobool.i.not.3, label %for.inc192.2.for.inc192.3_crit_edge, label %if.then188.3

for.inc192.2.for.inc192.3_crit_edge:              ; preds = %for.inc192.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc192.3

if.then188.3:                                     ; preds = %for.inc192.2
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %external_pfet to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %external_pfet, align 1
  br label %for.inc192.3

for.inc192.3:                                     ; preds = %if.then188.3, %for.inc192.2.for.inc192.3_crit_edge
  %138 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %of_node, align 8
  %call.i419.4 = call ptr @of_find_property(ptr noundef %139, ptr noundef nonnull @.str.40, ptr noundef null) #9
  %tobool.i.not.4 = icmp eq ptr %call.i419.4, null
  br i1 %tobool.i.not.4, label %for.inc192.3.for.inc192.4_crit_edge, label %if.then188.4

for.inc192.3.for.inc192.4_crit_edge:              ; preds = %for.inc192.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc192.4

if.then188.4:                                     ; preds = %for.inc192.3
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %auto_detection_enabled to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %auto_detection_enabled, align 1
  br label %for.inc192.4

for.inc192.4:                                     ; preds = %if.then188.4, %for.inc192.3.for.inc192.4_crit_edge
  %141 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %of_node, align 8
  %call196 = call i32 @of_property_count_elems_of_size(ptr noundef %142, ptr noundef nonnull @.str.59, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp sgt i32 %call196, 0
  br i1 %cmp197, label %if.then199, label %for.inc192.4.if.end243_crit_edge

for.inc192.4.if.end243_crit_edge:                 ; preds = %for.inc192.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

if.then199:                                       ; preds = %for.inc192.4
  %max_string_count200 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %143 = ptrtoint ptr %max_string_count200 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %max_string_count200, align 4
  %conv201 = zext i16 %144 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call196, i32 %conv201)
  %cmp202 = icmp ugt i32 %call196, %conv201
  br i1 %cmp202, label %do.end207, label %if.end210

do.end207:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %conv201) #12
  br label %cleanup

if.end210:                                        ; preds = %if.then199
  %145 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %of_node, align 8
  %enabled_strings = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 5
  %call.i420 = call i32 @of_property_read_variable_u32_array(ptr noundef %146, ptr noundef nonnull @.str.59, ptr noundef %enabled_strings, i32 noundef %call196, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i420)
  %tobool215.not = icmp sgt i32 %call.i420, -1
  br i1 %tobool215.not, label %for.body224.lr.ph, label %do.end219

for.body224.lr.ph:                                ; preds = %if.end210
  %147 = ptrtoint ptr %max_string_count200 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %max_string_count200, align 4
  %conv229 = zext i16 %148 to i32
  br label %for.body224

do.end219:                                        ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %call196, i32 noundef %call.i420) #12
  br label %cleanup

for.body224:                                      ; preds = %for.inc240.for.body224_crit_edge, %for.body224.lr.ph
  %i.2445 = phi i32 [ 0, %for.body224.lr.ph ], [ %inc241, %for.inc240.for.body224_crit_edge ]
  %arrayidx227 = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.2445
  %149 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx227, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %conv229)
  %cmp230.not = icmp ult i32 %150, %conv229
  br i1 %cmp230.not, label %for.inc240, label %do.end235

do.end235:                                        ; preds = %for.body224
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %150, i32 noundef %i.2445) #12
  br label %cleanup

for.inc240:                                       ; preds = %for.body224
  %inc241 = add nuw nsw i32 %i.2445, 1
  %exitcond454.not = icmp eq i32 %inc241, %call196
  br i1 %exitcond454.not, label %for.end242, label %for.inc240.for.body224_crit_edge

for.inc240.for.body224_crit_edge:                 ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body224

for.end242:                                       ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #11
  %num_strings = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %151 = ptrtoint ptr %num_strings to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call196, ptr %num_strings, align 4
  br label %if.end243

if.end243:                                        ; preds = %for.end242, %for.inc192.4.if.end243_crit_edge
  %152 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %of_node, align 8
  %call.i.i421 = call i32 @of_property_read_variable_u32_array(ptr noundef %153, ptr noundef nonnull @.str.69, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i421)
  %tobool246.not = icmp sgt i32 %call.i.i421, -1
  br i1 %tobool246.not, label %if.then247, label %if.end243.cleanup_crit_edge

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then247:                                       ; preds = %if.end243
  %154 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp248 = icmp eq i32 %155, 0
  br i1 %cmp248, label %if.then247.do.end257_crit_edge, label %lor.lhs.false

if.then247.do.end257_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end257

lor.lhs.false:                                    ; preds = %if.then247
  %max_string_count250 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %156 = ptrtoint ptr %max_string_count250 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %max_string_count250, align 4
  %conv251 = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %conv251)
  %cmp252 = icmp ugt i32 %155, %conv251
  br i1 %cmp252, label %lor.lhs.false.do.end257_crit_edge, label %if.end260

lor.lhs.false.do.end257_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end257

do.end257:                                        ; preds = %lor.lhs.false.do.end257_crit_edge, %if.then247.do.end257_crit_edge
  %max_string_count258 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %158 = ptrtoint ptr %max_string_count258 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %max_string_count258, align 4
  %conv259 = zext i16 %159 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %conv259) #12
  br label %cleanup

if.end260:                                        ; preds = %lor.lhs.false
  br i1 %cmp197, label %do.end266, label %if.end260.if.end274_crit_edge

if.end260.if.end274_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end274

do.end266:                                        ; preds = %if.end260
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.74) #12
  %160 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %call196)
  %cmp267 = icmp ugt i32 %161, %call196
  br i1 %cmp267, label %do.end272, label %do.end266.if.end274_crit_edge

do.end266.if.end274_crit_edge:                    ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end274

do.end272:                                        ; preds = %do.end266
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.78) #12
  br label %cleanup

if.end274:                                        ; preds = %do.end266.if.end274_crit_edge, %if.end260.if.end274_crit_edge
  %162 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %val, align 4
  %num_strings275 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %164 = ptrtoint ptr %num_strings275 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %num_strings275, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end274, %do.end272, %do.end257, %if.end243.cleanup_crit_edge, %do.end235, %do.end219, %do.end207, %do.end156, %do.end139, %do.end126, %do.end119, %do.end100, %do.end
  %retval.0 = phi i32 [ -22, %do.end126 ], [ %99, %do.end139 ], [ -22, %do.end156 ], [ -22, %do.end207 ], [ %call.i420, %do.end219 ], [ -22, %do.end235 ], [ -22, %do.end257 ], [ -22, %do.end272 ], [ -22, %do.end119 ], [ -22, %do.end100 ], [ -22, %do.end ], [ 0, %if.end274 ], [ 0, %if.end243.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %wled5_opts) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wled4_opts) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %wled3_opts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wled_ovp_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ovp_irq = getelementptr i8, ptr %work, i32 -56
  %0 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ovp_irq, align 4
  tail call void @enable_irq(i32 noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_configure_short_irq(ptr noundef %wled, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %has_short_detect = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 16
  %0 = ptrtoint ptr %has_short_detect to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_short_detect, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %4 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 94
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.141) #9
  %short_irq = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 18
  %6 = ptrtoint ptr %short_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %short_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %do.body, label %if.end15

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_configure_short_irq.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_configure_short_irq, %if.then13)) #9
          to label %cleanup [label %if.then13], !srcloc !356

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_configure_short_irq.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.143) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end3
  %dev16 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %7 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev16, align 4
  %call18 = tail call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %call4, ptr noundef null, ptr noundef nonnull @wled_short_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.144, ptr noundef %wled) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.145, i32 noundef %call18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end15.cleanup_crit_edge, %if.then13, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ %call18, %do.end24 ], [ %call18, %if.end15.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_configure_ovp_irq(ptr noundef %wled, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !355
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.154) #9
  %ovp_irq = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 19
  %1 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %ovp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_configure_ovp_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_configure_ovp_irq, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !356

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_configure_ovp_irq.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.156) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dev7 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %2 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev7, align 4
  %call9 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call, ptr noundef null, ptr noundef nonnull @wled_ovp_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.157, ptr noundef %wled) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.158, i32 noundef %call9) #12
  %6 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ovp_irq, align 4
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %9 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %10 to i32
  %add = add nuw nsw i32 %conv, 70
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ovp_irq, align 4
  call void @disable_irq(i32 noundef %14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end14, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %do.end14 ], [ 0, %if.then5 ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled3_set_brightness(ptr nocapture noundef readonly %wled, i16 noundef zeroext %brightness) #2 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #9
  %0 = and i16 %brightness, 4095
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %v, align 2
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %num_strings = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %3 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_strings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %5 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_strings, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %9 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ctrl_addr, align 8
  %conv3 = zext i16 %10 to i32
  %arrayidx = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.017
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, 64
  %add5 = add i32 %add, %conv3
  %call = call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef %add5, ptr noundef nonnull %v, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled3_sync_toggle(ptr nocapture noundef readonly %wled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_string_count = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 8
  %0 = ptrtoint ptr %max_string_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_string_count, align 4
  %conv = zext i16 %1 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %4 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sink_addr, align 2
  %conv2 = zext i16 %5 to i32
  %add3 = add nuw nsw i32 %conv2, 71
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add3, i32 noundef %shr, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %8 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sink_addr, align 2
  %conv7 = zext i16 %9 to i32
  %add8 = add nuw nsw i32 %conv7, 71
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add8, i32 noundef %shr, i32 noundef %shr, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled4_set_brightness(ptr nocapture noundef readonly %wled, i16 noundef zeroext %brightness) #2 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 11
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness, align 4
  %mul = shl i32 %1, 2
  %div = udiv i32 %mul, 1000
  %conv = trunc i32 %div to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %brightness)
  %cmp.not = icmp eq i16 %brightness, 0
  %conv1 = zext i16 %brightness to i32
  %conv4 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4, i32 %conv1)
  %cmp5 = icmp ugt i32 %conv4, %conv1
  %spec.select = select i1 %cmp5, i16 %conv, i16 %brightness
  %spec.select.op = and i16 %spec.select, 4095
  %2 = select i1 %cmp.not, i16 0, i16 %spec.select.op
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %v, align 2
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %num_strings = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %5 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_strings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp932.not = icmp eq i32 %6, 0
  br i1 %cmp932.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.033, 1
  %7 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_strings, align 4
  %cmp9 = icmp ult i32 %inc, %8
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %11 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sink_addr, align 2
  %conv11 = zext i16 %12 to i32
  %arrayidx = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.033
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %mul13 = shl i32 %14, 4
  %add = add nuw nsw i32 %conv11, 87
  %add14 = add i32 %add, %mul13
  %call = call i32 @regmap_bulk_write(ptr noundef %10, i32 noundef %add14, ptr noundef nonnull %v, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp15 = icmp slt i32 %call, 0
  br i1 %cmp15, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled4_cabc_config(ptr nocapture noundef readonly %wled, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_strings = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %0 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_strings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %conv4 = select i1 %enable, i32 128, i32 0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.017, 1
  %2 = ptrtoint ptr %num_strings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_strings, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %8 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sink_addr, align 2
  %conv2 = zext i16 %9 to i32
  %mul = shl i32 %5, 4
  %add = add i32 %mul, 86
  %add3 = add i32 %add, %conv2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add3, i32 noundef 128, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wled4_ovp_delay(ptr nocapture noundef readnone %wled) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 10000
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @wled4_auto_detection_required(ptr nocapture noundef %wled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_detection_enabled = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %auto_detection_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auto_detection_enabled, align 8, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %auto_detection_ovp_count = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 9
  %2 = ptrtoint ptr %auto_detection_ovp_count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %auto_detection_ovp_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  %call = tail call i64 @ktime_get() #9
  %start_ovp_fault_time = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 5
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %start_ovp_fault_time to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call, ptr %start_ovp_fault_time, align 8
  %5 = ptrtoint ptr %auto_detection_ovp_count to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %auto_detection_ovp_count, align 2
  %inc = add i16 %6, 1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %7 = ptrtoint ptr %start_ovp_fault_time to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %start_ovp_fault_time, align 8
  %sub.i = sub i64 %call, %8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %9 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %10 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %9, i32 0) #13, !srcloc !357
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %10, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %10, 1
  %11 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %9, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !358
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %11, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000, i64 %cond213.i.i.i)
  %cmp = icmp sgt i64 %cond213.i.i.i, 1000000
  br i1 %cmp, label %if.else.if.end12_crit_edge, label %if.else9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %auto_detection_ovp_count to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %auto_detection_ovp_count, align 2
  %inc11 = add i16 %13, 1
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.else.if.end12_crit_edge
  %storemerge = phi i16 [ %inc11, %if.else9 ], [ 0, %if.else.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %storemerge)
  %cmp14 = icmp ugt i16 %storemerge, 4
  %spec.store.select = select i1 %cmp14, i16 0, i16 %storemerge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.then2
  %spec.store.select.sink = phi i16 [ %spec.store.select, %if.end12 ], [ %inc, %if.then2 ]
  %retval.0.ph = phi i1 [ %cmp14, %if.end12 ], [ false, %if.then2 ]
  %14 = ptrtoint ptr %auto_detection_ovp_count to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.store.select.sink, ptr %auto_detection_ovp_count, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled5_set_brightness(ptr nocapture noundef readonly %wled, i16 noundef zeroext %brightness) #2 align 64 {
entry:
  %v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 11
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness, align 4
  %div = udiv i32 %1, 1000
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #9
  %conv1 = zext i16 %brightness to i32
  %conv2 = and i32 %div, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv1)
  %cmp = icmp ugt i32 %conv2, %conv1
  %conv = trunc i32 %div to i16
  %spec.select = select i1 %cmp, i16 %conv, i16 %brightness
  %2 = and i16 %spec.select, 32767
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %v to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %v, align 2
  %mod_sel = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 6
  %5 = ptrtoint ptr %mod_sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mod_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  %cond = select i1 %cmp6, i32 83, i32 99
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 8
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %9 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sink_addr, align 2
  %conv8 = zext i16 %10 to i32
  %add = add nuw nsw i32 %cond, %conv8
  %call = call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %v, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled5_cabc_config(ptr nocapture noundef %wled, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cabc_disabled = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 17
  %0 = ptrtoint ptr %cabc_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cabc_disabled, align 2, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %enable, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %cabc_sel = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 7
  %2 = ptrtoint ptr %cabc_sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cabc_sel, align 8
  %phi.cast28 = and i32 %3, 255
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %phi.cast28, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %mod_sel = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 6
  %4 = ptrtoint ptr %mod_sel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mod_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond4 = select i1 %cmp, i32 81, i32 97
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 8
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %8 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sink_addr, align 2
  %conv5 = zext i16 %9 to i32
  %add = add nuw nsw i32 %cond4, %conv5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add, i32 noundef 3, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7 = icmp slt i32 %call.i, 0
  br i1 %cmp7, label %do.end, label %if.end11

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call.i) #12
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  %cabc_sel13 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 7
  %10 = ptrtoint ptr %cabc_sel13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cabc_sel13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %cabc_disabled to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %cabc_disabled, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled5_ovp_delay(ptr nocapture noundef readonly %wled) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !355
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %3 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %4 to i32
  %add = add nuw nsw i32 %conv, 95
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 7
  %arrayidx = getelementptr [8 x i8], ptr @__const.wled5_ovp_delay.ovp_timer_ms, i32 0, i32 %and
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %8 to i32
  %mul = mul nuw nsw i32 %conv2, 1000
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %delay_us.0 = phi i32 [ %mul, %if.then ], [ 20000, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled5_ovp_delay.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled5_ovp_delay, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !356

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled5_ovp_delay.__UNIQUE_ID_ddebug302, ptr noundef %10, ptr noundef nonnull @.str.83, i32 noundef %delay_us.0) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %delay_us.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wled5_auto_detection_required(ptr nocapture noundef readonly %wled) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_detection_enabled = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 12
  %0 = ptrtoint ptr %auto_detection_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auto_detection_enabled, align 8, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp ne i8 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wled3_switch_freq_values_fn(i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = shl i32 %idx, 1
  %mul = add i32 %add, 2
  %div = udiv i32 19200, %mul
  ret i32 %div
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wled5_boost_i_limit_values_fn(i32 noundef %idx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul i32 %idx, 175
  %add = add i32 %mul, 525
  ret i32 %add
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wled5_ovp_values_fn(i32 noundef %idx) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %mul.neg = mul i32 %idx, -1500
  %sub = add i32 %mul.neg, 38500
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_auto_detection_at_init(ptr noundef %wled) unnamed_addr #2 align 64 {
entry:
  %fault_set = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fault_set) #9
  %0 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %fault_set, align 1, !annotation !355
  %auto_detection_enabled = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 12
  %1 = ptrtoint ptr %auto_detection_enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %auto_detection_enabled, align 8, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @wled_ovp_fault_status(ptr noundef %wled, ptr noundef nonnull %fault_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.86, i32 noundef %call) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %fault_set to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fault_set, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.then4

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  tail call fastcc void @wled_auto_string_detection(ptr noundef %wled)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end2.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then4 ], [ %call, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fault_set) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_ovp_fault_status(ptr nocapture noundef readonly %wled, ptr nocapture noundef %fault_set) unnamed_addr #2 align 64 {
entry:
  %int_rt_sts = alloca i32, align 4
  %fault_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_rt_sts) #9
  %0 = ptrtoint ptr %int_rt_sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_rt_sts, align 4, !annotation !355
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault_sts) #9
  %1 = ptrtoint ptr %fault_sts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fault_sts, align 4, !annotation !355
  %2 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %fault_set, align 1
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv, 16
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %int_rt_sts) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.88, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %11 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ctrl_addr, align 8
  %conv4 = zext i16 %12 to i32
  %add5 = add nuw nsw i32 %conv4, 8
  %call6 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add5, ptr noundef nonnull %fault_sts) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %13 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.91, i32 noundef %call6) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %15 = ptrtoint ptr %int_rt_sts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %int_rt_sts, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end16_crit_edge, label %if.then15

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then15:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %fault_set, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end14.if.end16_crit_edge
  %version = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 14
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cmp17 = icmp eq i32 %19, 4
  br i1 %cmp17, label %land.lhs.true, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end16
  %20 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fault_sts, align 4
  %and19 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end22thread-pre-split_crit_edge, label %if.then21

land.lhs.true.if.end22thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22thread-pre-split

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %fault_set, align 1
  br label %if.end22thread-pre-split

if.end22thread-pre-split:                         ; preds = %if.then21, %land.lhs.true.if.end22thread-pre-split_crit_edge
  %23 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %version, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end22thread-pre-split, %if.end16.if.end22_crit_edge
  %24 = phi i32 [ %.pr, %if.end22thread-pre-split ], [ %19, %if.end16.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp24 = icmp eq i32 %24, 5
  br i1 %cmp24, label %land.lhs.true26, label %if.end22.if.end30_crit_edge

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.end22
  %25 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fault_sts, align 4
  %and27 = and i32 %26, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end30_crit_edge, label %if.end30.thread

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.end30.thread:                                  ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %fault_set, align 1
  br label %do.body33

if.end30:                                         ; preds = %land.lhs.true26.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %28 = ptrtoint ptr %fault_set to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr64 = load i8, ptr %fault_set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr64)
  %tobool31.not = icmp eq i8 %.pr64, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %if.end30.do.body33_crit_edge

if.end30.do.body33_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body33:                                        ; preds = %if.end30.do.body33_crit_edge, %if.end30.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_ovp_fault_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_ovp_fault_status, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !356

if.then38:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %29 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev39, align 4
  %31 = ptrtoint ptr %int_rt_sts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_rt_sts, align 4
  %33 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fault_sts, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_ovp_fault_status.__UNIQUE_ID_ddebug301, ptr noundef %30, ptr noundef nonnull @.str.93, i32 noundef %32, i32 noundef %34) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %do.body33, %if.end30.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %do.end12 ], [ %call6, %if.then38 ], [ %call6, %if.end30.cleanup_crit_edge ], [ %call6, %do.body33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault_sts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_rt_sts) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wled_auto_string_detection(ptr noundef %wled) unnamed_addr #2 align 64 {
entry:
  %v.i348 = alloca i16, align 2
  %v.i = alloca i16, align 2
  %sink_config = alloca i32, align 4
  %fault_set = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sink_config) #9
  %0 = ptrtoint ptr %sink_config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sink_config, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fault_set) #9
  %1 = ptrtoint ptr %fault_set to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %fault_set, align 1, !annotation !355
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %sink_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 7
  %4 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sink_addr, align 2
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 70
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %sink_config) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.94, i32 noundef %call) #12
  br label %failed_detect

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %10 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctrl_addr, align 8
  %conv3 = zext i16 %11 to i32
  %add4 = add nuw nsw i32 %conv3, 70
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add4, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev12 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %12 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.97, i32 noundef %call.i) #12
  br label %failed_detect

if.end13:                                         ; preds = %if.end
  %max_brightness.i = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 11
  %14 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_brightness.i, align 4
  %mul.i = shl i32 %15, 2
  %div.i = udiv i32 %mul.i, 1000
  %conv.i = trunc i32 %div.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i) #9
  %conv4.i = and i32 %div.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %conv4.i)
  %cmp5.i = icmp ugt i32 %conv4.i, 200
  %conv.i.op = and i16 %conv.i, 4095
  %spec.select.op.i = select i1 %cmp5.i, i16 %conv.i.op, i16 200
  %16 = call i16 @llvm.bswap.i16(i16 %spec.select.op.i) #9
  %17 = ptrtoint ptr %v.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %v.i, align 2
  %num_strings.i = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_strings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp932.not.i = icmp eq i32 %19, 0
  br i1 %cmp932.not.i, label %if.end13.if.end22_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.033.i, 1
  %20 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_strings.i, align 4
  %cmp9.i = icmp ult i32 %inc.i, %21
  br i1 %cmp9.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end22_crit_edge

for.cond.i.if.end22_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %i.033.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end13.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 8
  %24 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sink_addr, align 2
  %conv11.i = zext i16 %25 to i32
  %arrayidx.i = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.033.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %mul13.i = shl i32 %27, 4
  %add.i = add nuw nsw i32 %conv11.i, 87
  %add14.i = add i32 %add.i, %mul13.i
  %call.i344 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef %add14.i, ptr noundef nonnull %v.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %cmp15.i = icmp slt i32 %call.i344, 0
  br i1 %cmp15.i, label %do.end20, label %for.cond.i

do.end20:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #9
  %dev21 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %28 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.100, i32 noundef %call.i344) #12
  br label %failed_detect

if.end22:                                         ; preds = %for.cond.i.if.end22_crit_edge, %if.end13.if.end22_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i) #9
  %cabc = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 20, i32 10
  %30 = ptrtoint ptr %cabc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cabc, align 2, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %if.end22.if.end29_crit_edge, label %if.then23

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %if.end22
  %wled_cabc_config = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 23
  %32 = ptrtoint ptr %wled_cabc_config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wled_cabc_config, align 4
  %call24 = call i32 %33(ptr noundef %wled, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then23.failed_detect_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23.failed_detect_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_detect

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end22.if.end29_crit_edge
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %36 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sink_addr, align 2
  %conv32 = zext i16 %37 to i32
  %add33 = add nuw nsw i32 %conv32, 70
  %call34 = call i32 @regmap_write(ptr noundef %35, i32 noundef %add33, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end29
  %38 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_strings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp44403.not = icmp eq i32 %39, 0
  br i1 %cmp44403.not, label %for.cond.preheader.do.end137_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end137_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end137

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wled_ovp_delay = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 25
  %dev111 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  br label %for.body

do.end40:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %dev41 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %40 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.103, i32 noundef %call34) #12
  br label %failed_detect

for.cond:                                         ; preds = %if.end119
  %inc = add nuw i32 %i.0405, 1
  %42 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_strings.i, align 4
  %cmp44 = icmp ult i32 %inc, %43
  br i1 %cmp44, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %sink_valid.0404 = phi i8 [ 0, %for.body.lr.ph ], [ %sink_valid.1, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.0405
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 8
  %48 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %ctrl_addr, align 8
  %conv51 = zext i16 %49 to i32
  %add52 = add nuw nsw i32 %conv51, 72
  %add53 = add i32 %45, 1
  %call54 = call i32 @regmap_write(ptr noundef %47, i32 noundef %add52, i32 noundef %add53) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %do.end60, label %if.end63

do.end60:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.106, i32 noundef %add53, i32 noundef %call54) #12
  br label %failed_detect

if.end63:                                         ; preds = %for.body
  %add47 = add i32 %45, 4
  %shl = shl nuw i32 1, %add47
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 8
  %54 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %sink_addr, align 2
  %conv66 = zext i16 %55 to i32
  %add67 = add nuw nsw i32 %conv66, 70
  %conv68 = and i32 %shl, 255
  %call69 = call i32 @regmap_write(ptr noundef %53, i32 noundef %add67, i32 noundef %conv68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.109, i32 noundef %add53, i32 noundef %call69) #12
  br label %failed_detect

if.end78:                                         ; preds = %if.end63
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 8
  %60 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ctrl_addr, align 8
  %conv81 = zext i16 %61 to i32
  %add82 = add nuw nsw i32 %conv81, 70
  %call.i346 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %add82, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %cmp84 = icmp slt i32 %call.i346, 0
  br i1 %cmp84, label %do.end89, label %if.end91

do.end89:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.112, i32 noundef %call.i346) #12
  br label %failed_detect

if.end91:                                         ; preds = %if.end78
  %64 = ptrtoint ptr %wled_ovp_delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %wled_ovp_delay, align 4
  %call92 = call i32 %65(ptr noundef %wled) #9
  %add93 = add i32 %call92, 1000
  call void @usleep_range_state(i32 noundef %call92, i32 noundef %add93, i32 noundef 2) #9
  %call94 = call fastcc i32 @wled_ovp_fault_status(ptr noundef %wled, ptr noundef nonnull %fault_set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %do.end100, label %if.end102

do.end100:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.86, i32 noundef %call94) #12
  br label %failed_detect

if.end102:                                        ; preds = %if.end91
  %68 = ptrtoint ptr %fault_set to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fault_set, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool103.not = icmp eq i8 %69, 0
  br i1 %tobool103.not, label %if.else, label %do.body105

do.body105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_auto_string_detection.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_auto_string_detection, %if.then110)) #9
          to label %if.end119 [label %if.then110], !srcloc !356

if.then110:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_auto_string_detection.__UNIQUE_ID_ddebug303, ptr noundef %71, ptr noundef nonnull @.str.116, i32 noundef %add53) #9
  br label %if.end119

if.else:                                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %72 = trunc i32 %shl to i8
  %conv118 = or i8 %sink_valid.0404, %72
  br label %if.end119

if.end119:                                        ; preds = %if.else, %if.then110, %do.body105
  %sink_valid.1 = phi i8 [ %sink_valid.0404, %if.then110 ], [ %conv118, %if.else ], [ %sink_valid.0404, %do.body105 ]
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 8
  %75 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %ctrl_addr, align 8
  %conv122 = zext i16 %76 to i32
  %add123 = add nuw nsw i32 %conv122, 70
  %call.i347 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %add123, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i347)
  %cmp125 = icmp slt i32 %call.i347, 0
  br i1 %cmp125, label %do.end130, label %for.cond

do.end130:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %dev111 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev111, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.97, i32 noundef %call.i347) #12
  br label %failed_detect

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sink_valid.1)
  %tobool133.not = icmp eq i8 %sink_valid.1, 0
  br i1 %tobool133.not, label %for.end.do.end137_crit_edge, label %if.end139

for.end.do.end137_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end137

do.end137:                                        ; preds = %for.end.do.end137_crit_edge, %for.cond.preheader.do.end137_crit_edge
  %dev138 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %79 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev138, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.120) #12
  %disabled_by_short = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 15
  %81 = ptrtoint ptr %disabled_by_short to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %disabled_by_short, align 4
  br label %failed_detect

if.end139:                                        ; preds = %for.end
  %conv140 = zext i8 %sink_valid.1 to i32
  %82 = ptrtoint ptr %sink_config to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %sink_config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv140)
  %cmp141.not = icmp eq i32 %83, %conv140
  br i1 %cmp141.not, label %if.end139.if.end150_crit_edge, label %do.end146

if.end139.if.end150_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %dev147 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %84 = ptrtoint ptr %dev147 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev147, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %85, ptr noundef nonnull @.str.123, i32 noundef %83, i32 noundef %conv140) #12
  %86 = ptrtoint ptr %sink_config to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv140, ptr %sink_config, align 4
  br label %if.end150

if.end150:                                        ; preds = %do.end146, %if.end139.if.end150_crit_edge
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 8
  %89 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %sink_addr, align 2
  %conv153 = zext i16 %90 to i32
  %add154 = add nuw nsw i32 %conv153, 70
  %91 = ptrtoint ptr %sink_config to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sink_config, align 4
  %call155 = call i32 @regmap_write(ptr noundef %88, i32 noundef %add154, i32 noundef %92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp slt i32 %call155, 0
  br i1 %cmp156, label %do.end161, label %if.end163

do.end161:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  %dev162 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %93 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev162, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.126, i32 noundef %call155) #12
  br label %failed_detect

if.end163:                                        ; preds = %if.end150
  %version = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 14
  %95 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %96)
  %cmp164 = icmp eq i32 %96, 4
  br i1 %cmp164, label %for.cond167.preheader, label %if.end163.if.end200_crit_edge

if.end163.if.end200_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

for.cond167.preheader:                            ; preds = %if.end163
  %97 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_strings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp170406.not = icmp eq i32 %98, 0
  br i1 %cmp170406.not, label %for.cond167.preheader.if.end200_crit_edge, label %for.cond167.preheader.for.body172_crit_edge

for.cond167.preheader.for.body172_crit_edge:      ; preds = %for.cond167.preheader
  br label %for.body172

for.cond167.preheader.if.end200_crit_edge:        ; preds = %for.cond167.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

for.cond167:                                      ; preds = %for.body172
  %inc198 = add nuw i32 %i.1407, 1
  %99 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %num_strings.i, align 4
  %cmp170 = icmp ult i32 %inc198, %100
  br i1 %cmp170, label %for.cond167.for.body172_crit_edge, label %for.cond167.if.end200_crit_edge

for.cond167.if.end200_crit_edge:                  ; preds = %for.cond167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

for.cond167.for.body172_crit_edge:                ; preds = %for.cond167
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body172

for.body172:                                      ; preds = %for.cond167.for.body172_crit_edge, %for.cond167.preheader.for.body172_crit_edge
  %i.1407 = phi i32 [ %inc198, %for.cond167.for.body172_crit_edge ], [ 0, %for.cond167.preheader.for.body172_crit_edge ]
  %arrayidx175 = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.1407
  %101 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx175, align 4
  %103 = ptrtoint ptr %sink_config to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sink_config, align 4
  %add176 = add i32 %102, 4
  %shl177 = shl nuw i32 1, %add176
  %and = and i32 %shl177, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool178.not = icmp eq i32 %and, 0
  %. = select i1 %tobool178.not, i32 0, i32 128
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 8
  %107 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %sink_addr, align 2
  %conv184 = zext i16 %108 to i32
  %mul = shl i32 %102, 4
  %add185 = add i32 %mul, 80
  %add186 = add i32 %add185, %conv184
  %call188 = call i32 @regmap_write(ptr noundef %106, i32 noundef %add186, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %do.end194, label %for.cond167

do.end194:                                        ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #11
  %dev195 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %109 = ptrtoint ptr %dev195 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev195, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.129, i32 noundef %call188) #12
  br label %failed_detect

if.end200:                                        ; preds = %for.cond167.if.end200_crit_edge, %for.cond167.preheader.if.end200_crit_edge, %if.end163.if.end200_crit_edge
  %wled_cabc_config201 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 23
  %111 = ptrtoint ptr %wled_cabc_config201 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %wled_cabc_config201, align 4
  %call202 = call i32 %112(ptr noundef %wled, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.end200.failed_detect_crit_edge, label %if.end206

if.end200.failed_detect_crit_edge:                ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_detect

if.end206:                                        ; preds = %if.end200
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 8
  %115 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %ctrl_addr, align 8
  %conv209 = zext i16 %116 to i32
  %add210 = add nuw nsw i32 %conv209, 72
  %call211 = call i32 @regmap_write(ptr noundef %114, i32 noundef %add210, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call211)
  %cmp212 = icmp slt i32 %call211, 0
  br i1 %cmp212, label %do.end217, label %if.end219

do.end217:                                        ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  %dev218 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %117 = ptrtoint ptr %dev218 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev218, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.132, i32 noundef %call211) #12
  br label %failed_detect

if.end219:                                        ; preds = %if.end206
  %brightness = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 10
  %119 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %brightness, align 8
  %conv220 = trunc i32 %120 to i16
  %121 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_brightness.i, align 4
  %mul.i350 = shl i32 %122, 2
  %div.i351 = udiv i32 %mul.i350, 1000
  %conv.i352 = trunc i32 %div.i351 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v.i348) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv220)
  %cmp.not.i = icmp eq i16 %conv220, 0
  %conv1.i = and i32 %120, 65535
  %conv4.i353 = and i32 %div.i351, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i353, i32 %conv1.i)
  %cmp5.i354 = icmp ugt i32 %conv4.i353, %conv1.i
  %spec.select.i355 = select i1 %cmp5.i354, i16 %conv.i352, i16 %conv220
  %spec.select.op.i356 = and i16 %spec.select.i355, 4095
  %123 = select i1 %cmp.not.i, i16 0, i16 %spec.select.op.i356
  %124 = call i16 @llvm.bswap.i16(i16 %123) #9
  %125 = ptrtoint ptr %v.i348 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %124, ptr %v.i348, align 2
  %126 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_strings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp932.not.i359 = icmp eq i32 %127, 0
  br i1 %cmp932.not.i359, label %if.end219.if.end229_crit_edge, label %if.end219.for.body.i373_crit_edge

if.end219.for.body.i373_crit_edge:                ; preds = %if.end219
  br label %for.body.i373

if.end219.if.end229_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

for.cond.i364:                                    ; preds = %for.body.i373
  %inc.i362 = add nuw i32 %i.033.i365, 1
  %128 = ptrtoint ptr %num_strings.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %num_strings.i, align 4
  %cmp9.i363 = icmp ult i32 %inc.i362, %129
  br i1 %cmp9.i363, label %for.cond.i364.for.body.i373_crit_edge, label %for.cond.i364.if.end229_crit_edge

for.cond.i364.if.end229_crit_edge:                ; preds = %for.cond.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end229

for.cond.i364.for.body.i373_crit_edge:            ; preds = %for.cond.i364
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i373

for.body.i373:                                    ; preds = %for.cond.i364.for.body.i373_crit_edge, %if.end219.for.body.i373_crit_edge
  %i.033.i365 = phi i32 [ %inc.i362, %for.cond.i364.for.body.i373_crit_edge ], [ 0, %if.end219.for.body.i373_crit_edge ]
  %130 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap, align 8
  %132 = ptrtoint ptr %sink_addr to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %sink_addr, align 2
  %conv11.i366 = zext i16 %133 to i32
  %arrayidx.i367 = getelementptr %struct.wled, ptr %wled, i32 0, i32 20, i32 5, i32 %i.033.i365
  %134 = ptrtoint ptr %arrayidx.i367 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i367, align 4
  %mul13.i368 = shl i32 %135, 4
  %add.i369 = add nuw nsw i32 %conv11.i366, 87
  %add14.i370 = add i32 %add.i369, %mul13.i368
  %call.i371 = call i32 @regmap_bulk_write(ptr noundef %131, i32 noundef %add14.i370, ptr noundef nonnull %v.i348, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i371)
  %cmp15.i372 = icmp slt i32 %call.i371, 0
  br i1 %cmp15.i372, label %do.end227, label %for.cond.i364

do.end227:                                        ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i348) #9
  %dev228 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %136 = ptrtoint ptr %dev228 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev228, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.135, i32 noundef %call.i371) #12
  br label %failed_detect

if.end229:                                        ; preds = %for.cond.i364.if.end229_crit_edge, %if.end219.if.end229_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v.i348) #9
  %138 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap, align 8
  %140 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %ctrl_addr, align 8
  %conv232 = zext i16 %141 to i32
  %add233 = add nuw nsw i32 %conv232, 70
  %call.i376 = call i32 @regmap_update_bits_base(ptr noundef %139, i32 noundef %add233, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i376)
  %cmp235 = icmp slt i32 %call.i376, 0
  br i1 %cmp235, label %do.end240, label %if.end229.failed_detect_crit_edge

if.end229.failed_detect_crit_edge:                ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed_detect

do.end240:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #11
  %dev241 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 1
  %142 = ptrtoint ptr %dev241 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev241, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.112, i32 noundef %call.i376) #12
  br label %failed_detect

failed_detect:                                    ; preds = %do.end240, %if.end229.failed_detect_crit_edge, %do.end227, %do.end217, %if.end200.failed_detect_crit_edge, %do.end194, %do.end161, %do.end137, %do.end130, %do.end100, %do.end89, %do.end75, %do.end60, %do.end40, %if.then23.failed_detect_crit_edge, %do.end20, %do.end11, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fault_set) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sink_config) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_short_irq_handler(i32 noundef %irq, ptr noundef %_wled) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %short_count = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 12
  %0 = ptrtoint ptr %short_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %short_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %short_count, align 8
  %lock = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %disabled_by_short.i = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 15
  %2 = ptrtoint ptr %disabled_by_short.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled_by_short.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %ctrl_addr.i = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 6
  %6 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ctrl_addr.i, align 8
  %conv.i = zext i16 %7 to i32
  %add.i = add nuw nsw i32 %conv.i, 70
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.do.end_crit_edge, label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %ovp_irq.i = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 19
  %8 = ptrtoint ptr %ovp_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ovp_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.i = icmp sgt i32 %9, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then6.i:                                       ; preds = %if.end3.i
  %ovp_work10.i = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 21
  %call11.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ovp_work10.i) #9
  br i1 %call11.i, label %if.then6.i.if.end_crit_edge, label %if.then12.i

if.then6.i.if.end_crit_edge:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %ovp_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ovp_irq.i, align 4
  tail call void @disable_irq(i32 noundef %11) #9
  br label %if.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i = phi i32 [ -6, %entry.do.end_crit_edge ], [ %call.i.i, %if.end.i.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.146, i32 noundef %retval.0.i) #12
  br label %unlock_mutex

if.end:                                           ; preds = %if.then12.i, %if.then6.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %call1 = tail call i64 @ktime_get() #9
  %last_short_event = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 4
  %14 = ptrtoint ptr %last_short_event to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %last_short_event, align 8
  %sub.i = sub i64 %call1, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %16 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %16, i32 0) #13, !srcloc !357
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %16, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !358
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000, i64 %cond213.i.i.i)
  %cmp3 = icmp sgt i64 %cond213.i.i.i, 1000000
  br i1 %cmp3, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %short_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %short_count, align 8
  br label %if.end15

if.end6:                                          ; preds = %if.end
  %20 = ptrtoint ptr %short_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %short_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp8 = icmp ugt i32 %.pr, 5
  br i1 %cmp8, label %do.end12, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.149, i32 noundef %.pr) #12
  %23 = ptrtoint ptr %disabled_by_short.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %disabled_by_short.i, align 4
  br label %unlock_mutex

if.end15:                                         ; preds = %if.end6.if.end15_crit_edge, %if.end6.thread
  %call16 = tail call i64 @ktime_get() #9
  %24 = ptrtoint ptr %last_short_event to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call16, ptr %last_short_event, align 8
  tail call void @msleep(i32 noundef 20) #9
  %25 = ptrtoint ptr %disabled_by_short.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %disabled_by_short.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i44 = icmp eq i8 %26, 0
  br i1 %tobool.not.i44, label %if.end.i51, label %if.end15.do.end23_crit_edge

if.end15.do.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.end.i51:                                       ; preds = %if.end15
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 8
  %29 = ptrtoint ptr %ctrl_addr.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ctrl_addr.i, align 8
  %conv.i47 = zext i16 %30 to i32
  %add.i48 = add nuw nsw i32 %conv.i47, 70
  %call.i.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add.i48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49)
  %cmp.i50 = icmp slt i32 %call.i.i49, 0
  br i1 %cmp.i50, label %if.end.i51.do.end23_crit_edge, label %if.end3.i54

if.end.i51.do.end23_crit_edge:                    ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

if.end3.i54:                                      ; preds = %if.end.i51
  %31 = ptrtoint ptr %ovp_irq.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ovp_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4.i53 = icmp sgt i32 %32, 0
  br i1 %cmp4.i53, label %if.then6.i56, label %if.end3.i54.unlock_mutex_crit_edge

if.end3.i54.unlock_mutex_crit_edge:               ; preds = %if.end3.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_mutex

if.then6.i56:                                     ; preds = %if.end3.i54
  call void @__sanitizer_cov_trace_pc() #11
  %ovp_work10.i55 = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %ovp_work10.i55, i32 noundef 1) #9
  br label %unlock_mutex

do.end23:                                         ; preds = %if.end.i51.do.end23_crit_edge, %if.end15.do.end23_crit_edge
  %retval.0.i57.ph = phi i32 [ %call.i.i49, %if.end.i51.do.end23_crit_edge ], [ -6, %if.end15.do.end23_crit_edge ]
  %dev24 = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %34 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.152, i32 noundef %retval.0.i57.ph) #12
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %do.end23, %if.then6.i56, %if.end3.i54.unlock_mutex_crit_edge, %do.end12, %do.end
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wled_module_enable(ptr noundef %wled, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %disabled_by_short = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 15
  %0 = ptrtoint ptr %disabled_by_short to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled_by_short, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 6
  %4 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 70
  %shl = shl i32 %val, 7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ovp_irq = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 19
  %6 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ovp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp sgt i32 %7, 0
  br i1 %cmp4, label %if.then6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool7.not = icmp eq i32 %val, 0
  %ovp_work10 = getelementptr inbounds %struct.wled, ptr %wled, i32 0, i32 21
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %ovp_work10, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %if.then6
  %call11 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ovp_work10) #9
  br i1 %call11, label %if.else.cleanup_crit_edge, label %if.then12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %ovp_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ovp_irq, align 4
  tail call void @disable_irq(i32 noundef %10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.else.cleanup_crit_edge, %if.then8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.then12 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_ovp_irq_handler(i32 noundef %irq, ptr noundef %_wled) #2 align 64 {
entry:
  %int_sts = alloca i32, align 4
  %fault_sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_sts) #9
  %0 = ptrtoint ptr %int_sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_sts, align 4, !annotation !355
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault_sts) #9
  %1 = ptrtoint ptr %fault_sts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %fault_sts, align 4, !annotation !355
  %regmap = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 8
  %ctrl_addr = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 6
  %4 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ctrl_addr, align 8
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 16
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %int_sts) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.159, i32 noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %10 = ptrtoint ptr %ctrl_addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ctrl_addr, align 8
  %conv4 = zext i16 %11 to i32
  %add5 = add nuw nsw i32 %conv4, 8
  %call6 = call i32 @regmap_read(ptr noundef %9, i32 noundef %add5, ptr noundef nonnull %fault_sts) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev13 = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.162, i32 noundef %call6) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %14 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fault_sts, align 4
  %and = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end14.if.end26_crit_edge, label %do.body16

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.body16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wled_ovp_irq_handler.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wled_ovp_irq_handler, %if.then21)) #9
          to label %if.end26 [label %if.then21], !srcloc !356

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 1
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  %18 = ptrtoint ptr %int_sts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_sts, align 4
  %20 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fault_sts, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wled_ovp_irq_handler.__UNIQUE_ID_ddebug304, ptr noundef %17, ptr noundef nonnull @.str.164, i32 noundef %19, i32 noundef %21) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body16, %if.end14.if.end26_crit_edge
  %22 = ptrtoint ptr %fault_sts to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fault_sts, align 4
  %and27 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.then29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.end26
  %wled_auto_detection_required = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 26
  %24 = ptrtoint ptr %wled_auto_detection_required to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wled_auto_detection_required, align 8
  %call30 = call zeroext i1 %25(ptr noundef %_wled) #9
  br i1 %call30, label %if.then31, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then31:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.wled, ptr %_wled, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call fastcc void @wled_auto_string_detection(ptr noundef %_wled)
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end12, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault_sts) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_sts) #9
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wled_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit.thread_crit_edge

entry.backlight_get_brightness.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit.thread

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit.thread

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %backlight_get_brightness.exit, label %backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %backlight_get_brightness.exit.thread

backlight_get_brightness.exit.thread:             ; preds = %backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge, %entry.backlight_get_brightness.exit.thread_crit_edge
  %lock87 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock87, i32 noundef 0) #9
  br label %if.end27.thr_comm

backlight_get_brightness.exit:                    ; preds = %backlight_is_blank.exit.i
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bl, align 8
  %conv = trunc i32 %9 to i16
  %lock = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %backlight_get_brightness.exit.if.end27.thr_comm_crit_edge, label %if.then

backlight_get_brightness.exit.if.end27.thr_comm_crit_edge: ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.thr_comm

if.then:                                          ; preds = %backlight_get_brightness.exit
  %wled_set_brightness = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %wled_set_brightness to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wled_set_brightness, align 8
  %call2 = tail call i32 %11(ptr noundef %1, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.165, i32 noundef %call2) #12
  br label %unlock_mutex

if.end:                                           ; preds = %if.then
  %version = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 14
  %14 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp5 = icmp ult i32 %15, 5
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %wled_sync_toggle = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 24
  %16 = ptrtoint ptr %wled_sync_toggle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wled_sync_toggle, align 8
  %call8 = tail call i32 %17(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end14, label %if.then7.if.end27_crit_edge

if.then7.if.end27_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.168, i32 noundef %call8) #12
  br label %unlock_mutex

if.else:                                          ; preds = %if.end
  %regmap.i = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %sink_addr.i = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sink_addr.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.i = add nuw nsw i32 %conv.i, 101
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %add.i, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.else.do.end23_crit_edge, label %wled5_mod_sync_toggle.exit

if.else.do.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

wled5_mod_sync_toggle.exit:                       ; preds = %if.else
  %mod_sel.i = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 20, i32 6
  %24 = ptrtoint ptr %mod_sel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mod_sel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.i = icmp eq i32 %25, 0
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 8
  %28 = ptrtoint ptr %sink_addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sink_addr.i, align 2
  %conv7.i = zext i16 %29 to i32
  %add8.i = add nuw nsw i32 %conv7.i, 101
  %conv9.i = select i1 %cmp2.i, i32 1, i32 2
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %add8.i, i32 noundef 3, i32 noundef %conv9.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp18 = icmp slt i32 %call.i17.i, 0
  br i1 %cmp18, label %wled5_mod_sync_toggle.exit.do.end23_crit_edge, label %wled5_mod_sync_toggle.exit.if.end27_crit_edge

wled5_mod_sync_toggle.exit.if.end27_crit_edge:    ; preds = %wled5_mod_sync_toggle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

wled5_mod_sync_toggle.exit.do.end23_crit_edge:    ; preds = %wled5_mod_sync_toggle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

do.end23:                                         ; preds = %wled5_mod_sync_toggle.exit.do.end23_crit_edge, %if.else.do.end23_crit_edge
  %retval.0.i8495 = phi i32 [ %call.i17.i, %wled5_mod_sync_toggle.exit.do.end23_crit_edge ], [ %call.i.i, %if.else.do.end23_crit_edge ]
  %dev24 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.171, i32 noundef %retval.0.i8495) #12
  br label %unlock_mutex

if.end27.thr_comm:                                ; preds = %backlight_get_brightness.exit.if.end27.thr_comm_crit_edge, %backlight_get_brightness.exit.thread
  %lock91.ph = phi ptr [ %lock87, %backlight_get_brightness.exit.thread ], [ %lock, %backlight_get_brightness.exit.if.end27.thr_comm_crit_edge ]
  %retval.0.i89.ph = phi i32 [ 0, %backlight_get_brightness.exit.thread ], [ %9, %backlight_get_brightness.exit.if.end27.thr_comm_crit_edge ]
  %brightness3096 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %brightness3096 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %brightness3096, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool3197 = icmp eq i32 %33, 0
  br i1 %tobool3197, label %if.end27.thr_comm.if.end53_crit_edge, label %if.end27.thr_comm.if.then38_crit_edge

if.end27.thr_comm.if.then38_crit_edge:            ; preds = %if.end27.thr_comm
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.end27.thr_comm.if.end53_crit_edge:             ; preds = %if.end27.thr_comm
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end27:                                         ; preds = %wled5_mod_sync_toggle.exit.if.end27_crit_edge, %if.then7.if.end27_crit_edge
  %rc.0 = phi i32 [ %call8, %if.then7.if.end27_crit_edge ], [ %call.i17.i, %wled5_mod_sync_toggle.exit.if.end27_crit_edge ]
  %brightness30 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %brightness30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %brightness30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool31.not = icmp eq i32 %35, 0
  br i1 %tobool31.not, label %if.end27.if.then38_crit_edge, label %if.end27.if.end53_crit_edge

if.end27.if.end53_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end27.if.then38_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %if.end27.if.then38_crit_edge, %if.end27.thr_comm.if.then38_crit_edge
  %brightness30104 = phi ptr [ %brightness3096, %if.end27.thr_comm.if.then38_crit_edge ], [ %brightness30, %if.end27.if.then38_crit_edge ]
  %retval.0.i89102 = phi i32 [ %retval.0.i89.ph, %if.end27.thr_comm.if.then38_crit_edge ], [ %9, %if.end27.if.then38_crit_edge ]
  %lock91100 = phi ptr [ %lock91.ph, %if.end27.thr_comm.if.then38_crit_edge ], [ %lock, %if.end27.if.then38_crit_edge ]
  %tobool9299 = phi i32 [ 0, %if.end27.thr_comm.if.then38_crit_edge ], [ 1, %if.end27.if.then38_crit_edge ]
  %call44 = tail call fastcc i32 @wled_module_enable(ptr noundef %1, i32 noundef %tobool9299)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end50, label %if.then38.if.end53_crit_edge

if.then38.if.end53_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end50:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %dev51 = getelementptr inbounds %struct.wled, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.152, i32 noundef %call44) #12
  br label %unlock_mutex

if.end53:                                         ; preds = %if.then38.if.end53_crit_edge, %if.end27.if.end53_crit_edge, %if.end27.thr_comm.if.end53_crit_edge
  %brightness30105 = phi ptr [ %brightness30104, %if.then38.if.end53_crit_edge ], [ %brightness30, %if.end27.if.end53_crit_edge ], [ %brightness3096, %if.end27.thr_comm.if.end53_crit_edge ]
  %retval.0.i89103 = phi i32 [ %retval.0.i89102, %if.then38.if.end53_crit_edge ], [ %9, %if.end27.if.end53_crit_edge ], [ %retval.0.i89.ph, %if.end27.thr_comm.if.end53_crit_edge ]
  %lock91101 = phi ptr [ %lock91100, %if.then38.if.end53_crit_edge ], [ %lock, %if.end27.if.end53_crit_edge ], [ %lock91.ph, %if.end27.thr_comm.if.end53_crit_edge ]
  %rc.1 = phi i32 [ 0, %if.then38.if.end53_crit_edge ], [ %rc.0, %if.end27.if.end53_crit_edge ], [ 0, %if.end27.thr_comm.if.end53_crit_edge ]
  %conv54 = and i32 %retval.0.i89103, 65535
  %38 = ptrtoint ptr %brightness30105 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv54, ptr %brightness30105, align 8
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %if.end53, %do.end50, %do.end23, %do.end14, %do.end
  %lock90 = phi ptr [ %lock, %do.end ], [ %lock, %do.end14 ], [ %lock91100, %do.end50 ], [ %lock91101, %if.end53 ], [ %lock, %do.end23 ]
  %rc.2 = phi i32 [ %call2, %do.end ], [ %call8, %do.end14 ], [ %call44, %do.end50 ], [ %rc.1, %if.end53 ], [ %retval.0.i8495, %do.end23 ]
  tail call void @mutex_unlock(ptr noundef %lock90) #9
  ret i32 %rc.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !273, !274, !275, !276, !278, !280, !281, !282, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !309, !311, !312, !313, !315, !316, !317, !318, !320, !321, !322, !324, !325, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343}
!llvm.module.flags = !{!345, !346, !347, !348, !349, !350, !351, !352}
!llvm.ident = !{!353}

!0 = !{ptr @__initcall__kmod_qcom_wled__308_1751_wled_driver_init6, !1, !"__initcall__kmod_qcom_wled__308_1751_wled_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1751, i32 1}
!2 = !{ptr @__exitcall_wled_driver_exit, !1, !"__exitcall_wled_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description309, !4, !"__UNIQUE_ID_description309", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1753, i32 1}
!5 = !{ptr @__UNIQUE_ID_file310, !6, !"__UNIQUE_ID_file310", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1754, i32 1}
!7 = !{ptr @__UNIQUE_ID_license311, !6, !"__UNIQUE_ID_license311", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1746, i32 11}
!10 = !{ptr @wled_driver, !11, !"wled_driver", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1742, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1635, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wled_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @wled_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1648, i32 3}
!22 = !{ptr @wled_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @wled_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @wled_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1652, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1658, i32 42}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1666, i32 4}
!31 = !{ptr @wled_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wled_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1675, i32 4}
!35 = !{ptr @wled_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wled_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1687, i32 4}
!39 = !{ptr @wled_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wled_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1693, i32 3}
!43 = !{ptr @wled_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wled_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @wled_probe.__key.23, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1697, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wled_probe.__key.25, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1708, i32 42}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1316, i32 12}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1321, i32 12}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1326, i32 12}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1331, i32 12}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1344, i32 12}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1349, i32 12}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1382, i32 12}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1387, i32 12}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1394, i32 5}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1395, i32 5}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1396, i32 5}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1397, i32 5}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1398, i32 5}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1403, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wled_configure._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @wled_configure._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1408, i32 45}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1410, i32 48}
!87 = !{ptr @wled_configure._entry.45, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1437, i32 4}
!89 = !{ptr @wled_configure._entry_ptr.46, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @wled_configure._entry.47, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1457, i32 4}
!92 = !{ptr @wled_configure._entry_ptr.48, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @wled_configure._entry.49, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1464, i32 3}
!95 = !{ptr @wled_configure._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1473, i32 4}
!98 = !{ptr @wled_configure._entry.51, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wled_configure._entry_ptr.53, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1481, i32 5}
!102 = !{ptr @wled_configure._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wled_configure._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1490, i32 3}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wled_configure.__UNIQUE_ID_ddebug305, !105, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!108 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1500, i32 12}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1504, i32 4}
!112 = !{ptr @wled_configure._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @wled_configure._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1514, i32 4}
!116 = !{ptr @wled_configure._entry.63, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @wled_configure._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1521, i32 5}
!120 = !{ptr @wled_configure._entry.66, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @wled_configure._entry_ptr.68, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1531, i32 42}
!124 = !{ptr @.str.71, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1534, i32 4}
!126 = !{ptr @wled_configure._entry.70, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @wled_configure._entry_ptr.72, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.74, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1540, i32 4}
!130 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wled_configure._entry.73, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @wled_configure._entry_ptr.76, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.78, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1543, i32 5}
!135 = !{ptr @wled_configure._entry.77, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @wled_configure._entry_ptr.79, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @wled3_boost_i_limit_cfg, !138, !"wled3_boost_i_limit_cfg", i1 false, i1 false}
!138 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1205, i32 34}
!139 = !{ptr @wled3_boost_i_limit_values, !140, !"wled3_boost_i_limit_values", i1 false, i1 false}
!140 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1201, i32 18}
!141 = !{ptr @wled3_string_i_limit_cfg, !142, !"wled3_string_i_limit_cfg", i1 false, i1 false}
!142 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1272, i32 34}
!143 = !{ptr @wled3_ovp_cfg, !144, !"wled3_ovp_cfg", i1 false, i1 false}
!144 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1233, i32 34}
!145 = !{ptr @wled3_ovp_values, !146, !"wled3_ovp_values", i1 false, i1 false}
!146 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1229, i32 18}
!147 = !{ptr @wled3_switch_freq_cfg, !148, !"wled3_switch_freq_cfg", i1 false, i1 false}
!148 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1267, i32 34}
!149 = !{ptr @wled4_boost_i_limit_cfg, !150, !"wled4_boost_i_limit_cfg", i1 false, i1 false}
!150 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1214, i32 34}
!151 = !{ptr @wled4_boost_i_limit_values, !152, !"wled4_boost_i_limit_values", i1 false, i1 false}
!152 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1210, i32 18}
!153 = !{ptr @wled4_string_i_limit_cfg, !154, !"wled4_string_i_limit_cfg", i1 false, i1 false}
!154 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1281, i32 34}
!155 = !{ptr @wled4_string_i_limit_values, !156, !"wled4_string_i_limit_values", i1 false, i1 false}
!156 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1276, i32 18}
!157 = !{ptr @wled4_ovp_cfg, !158, !"wled4_ovp_cfg", i1 false, i1 false}
!158 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1242, i32 34}
!159 = !{ptr @wled4_ovp_values, !160, !"wled4_ovp_values", i1 false, i1 false}
!160 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1238, i32 18}
!161 = !{ptr @wled5_boost_i_limit_cfg, !162, !"wled5_boost_i_limit_cfg", i1 false, i1 false}
!162 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1224, i32 34}
!163 = !{ptr @wled5_ovp_cfg, !164, !"wled5_ovp_cfg", i1 false, i1 false}
!164 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1257, i32 34}
!165 = !{ptr @wled5_mod_sel_cfg, !166, !"wled5_mod_sel_cfg", i1 false, i1 false}
!166 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1286, i32 34}
!167 = !{ptr @wled5_cabc_sel_cfg, !168, !"wled5_cabc_sel_cfg", i1 false, i1 false}
!168 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1290, i32 34}
!169 = !{ptr @wled3_config_defaults, !170, !"wled3_config_defaults", i1 false, i1 false}
!170 = !{!"../drivers/video/backlight/qcom-wled.c", i32 944, i32 33}
!171 = !{ptr @wled4_config_defaults, !172, !"wled4_config_defaults", i1 false, i1 false}
!172 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1075, i32 33}
!173 = !{ptr @wled5_config_defaults, !174, !"wled5_config_defaults", i1 false, i1 false}
!174 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1187, i32 33}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/video/backlight/qcom-wled.c", i32 517, i32 3}
!177 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @wled5_cabc_config._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @wled5_cabc_config._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/video/backlight/qcom-wled.c", i32 427, i32 2}
!182 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @wled5_ovp_delay.__UNIQUE_ID_ddebug302, !181, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1066, i32 3}
!186 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @wled4_setup._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @wled4_setup._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/video/backlight/qcom-wled.c", i32 821, i32 3}
!191 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @wled_auto_detection_at_init._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @wled_auto_detection_at_init._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/video/backlight/qcom-wled.c", i32 378, i32 3}
!196 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @wled_ovp_fault_status._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @wled_ovp_fault_status._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.91, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/video/backlight/qcom-wled.c", i32 386, i32 3}
!201 = !{ptr @wled_ovp_fault_status._entry.90, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @wled_ovp_fault_status._entry_ptr.92, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/video/backlight/qcom-wled.c", i32 401, i32 3}
!205 = !{ptr @wled_ovp_fault_status.__UNIQUE_ID_ddebug301, !204, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/video/backlight/qcom-wled.c", i32 583, i32 3}
!208 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @wled_auto_string_detection._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @wled_auto_string_detection._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/video/backlight/qcom-wled.c", i32 593, i32 3}
!213 = !{ptr @wled_auto_string_detection._entry.96, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @wled_auto_string_detection._entry_ptr.98, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.100, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/video/backlight/qcom-wled.c", i32 600, i32 3}
!217 = !{ptr @wled_auto_string_detection._entry.99, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @wled_auto_string_detection._entry_ptr.101, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/video/backlight/qcom-wled.c", i32 615, i32 3}
!221 = !{ptr @wled_auto_string_detection._entry.102, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @wled_auto_string_detection._entry_ptr.104, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/video/backlight/qcom-wled.c", i32 628, i32 4}
!225 = !{ptr @wled_auto_string_detection._entry.105, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @wled_auto_string_detection._entry_ptr.107, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.109, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/video/backlight/qcom-wled.c", i32 637, i32 4}
!229 = !{ptr @wled_auto_string_detection._entry.108, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @wled_auto_string_detection._entry_ptr.110, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/video/backlight/qcom-wled.c", i32 648, i32 4}
!233 = !{ptr @wled_auto_string_detection._entry.111, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @wled_auto_string_detection._entry_ptr.113, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @wled_auto_string_detection._entry.114, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/video/backlight/qcom-wled.c", i32 658, i32 4}
!237 = !{ptr @wled_auto_string_detection._entry_ptr.115, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/video/backlight/qcom-wled.c", i32 664, i32 4}
!240 = !{ptr @wled_auto_string_detection.__UNIQUE_ID_ddebug303, !239, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!241 = !{ptr @wled_auto_string_detection._entry.117, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/video/backlight/qcom-wled.c", i32 674, i32 4}
!243 = !{ptr @wled_auto_string_detection._entry_ptr.118, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.120, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/video/backlight/qcom-wled.c", i32 681, i32 3}
!246 = !{ptr @wled_auto_string_detection._entry.119, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @wled_auto_string_detection._entry_ptr.121, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/video/backlight/qcom-wled.c", i32 687, i32 3}
!250 = !{ptr @wled_auto_string_detection._entry.122, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @wled_auto_string_detection._entry_ptr.124, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/video/backlight/qcom-wled.c", i32 697, i32 3}
!254 = !{ptr @wled_auto_string_detection._entry.125, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @wled_auto_string_detection._entry_ptr.127, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/video/backlight/qcom-wled.c", i32 716, i32 5}
!258 = !{ptr @wled_auto_string_detection._entry.128, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @wled_auto_string_detection._entry_ptr.130, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/video/backlight/qcom-wled.c", i32 732, i32 3}
!262 = !{ptr @wled_auto_string_detection._entry.131, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @wled_auto_string_detection._entry_ptr.133, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/video/backlight/qcom-wled.c", i32 740, i32 3}
!266 = !{ptr @wled_auto_string_detection._entry.134, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @wled_auto_string_detection._entry_ptr.136, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @wled_auto_string_detection._entry.137, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/video/backlight/qcom-wled.c", i32 750, i32 3}
!270 = !{ptr @wled_auto_string_detection._entry_ptr.138, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1176, i32 3}
!273 = !{ptr @.str.140, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @wled5_setup._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @wled5_setup._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.141, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1569, i32 50}
!278 = !{ptr @.str.142, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1571, i32 3}
!280 = !{ptr @.str.143, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @wled_configure_short_irq.__UNIQUE_ID_ddebug306, !279, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!282 = !{ptr @.str.144, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1578, i32 12}
!284 = !{ptr @.str.145, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1580, i32 3}
!286 = !{ptr @wled_configure_short_irq._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @wled_configure_short_irq._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.146, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/video/backlight/qcom-wled.c", i32 541, i32 3}
!290 = !{ptr @.str.147, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @wled_short_irq_handler._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @wled_short_irq_handler._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.149, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/video/backlight/qcom-wled.c", i32 551, i32 3}
!295 = !{ptr @wled_short_irq_handler._entry.148, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @wled_short_irq_handler._entry_ptr.150, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/video/backlight/qcom-wled.c", i32 562, i32 3}
!299 = !{ptr @wled_short_irq_handler._entry.151, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @wled_short_irq_handler._entry_ptr.153, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1592, i32 48}
!303 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1594, i32 3}
!305 = !{ptr @.str.156, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @wled_configure_ovp_irq.__UNIQUE_ID_ddebug307, !304, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!307 = !{ptr @.str.157, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1600, i32 12}
!309 = !{ptr @.str.158, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1602, i32 3}
!311 = !{ptr @wled_configure_ovp_irq._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @wled_configure_ovp_irq._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.159, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/video/backlight/qcom-wled.c", i32 844, i32 3}
!315 = !{ptr @.str.160, !314, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @wled_ovp_irq_handler._entry, !314, !"_entry", i1 false, i1 false}
!317 = !{ptr @wled_ovp_irq_handler._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.162, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/video/backlight/qcom-wled.c", i32 852, i32 3}
!320 = !{ptr @wled_ovp_irq_handler._entry.161, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @wled_ovp_irq_handler._entry_ptr.163, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.164, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/video/backlight/qcom-wled.c", i32 859, i32 3}
!324 = !{ptr @wled_ovp_irq_handler.__UNIQUE_ID_ddebug304, !323, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!325 = !{ptr @wled_ops, !326, !"wled_ops", i1 false, i1 false}
!326 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1620, i32 35}
!327 = !{ptr @.str.165, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/video/backlight/qcom-wled.c", i32 442, i32 4}
!329 = !{ptr @.str.166, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @wled_update_status._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @wled_update_status._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.168, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/video/backlight/qcom-wled.c", i32 450, i32 5}
!334 = !{ptr @wled_update_status._entry.167, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @wled_update_status._entry_ptr.169, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.171, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/video/backlight/qcom-wled.c", i32 460, i32 5}
!338 = !{ptr @wled_update_status._entry.170, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @wled_update_status._entry_ptr.172, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @wled_update_status._entry.173, !341, !"_entry", i1 false, i1 false}
!341 = !{!"../drivers/video/backlight/qcom-wled.c", i32 470, i32 4}
!342 = !{ptr @wled_update_status._entry_ptr.174, !341, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @wled_match_table, !344, !"wled_match_table", i1 false, i1 false}
!344 = !{!"../drivers/video/backlight/qcom-wled.c", i32 1732, i32 34}
!345 = !{i32 1, !"wchar_size", i32 2}
!346 = !{i32 1, !"min_enum_size", i32 4}
!347 = !{i32 8, !"branch-target-enforcement", i32 0}
!348 = !{i32 8, !"sign-return-address", i32 0}
!349 = !{i32 8, !"sign-return-address-all", i32 0}
!350 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!351 = !{i32 7, !"uwtable", i32 1}
!352 = !{i32 7, !"frame-pointer", i32 2}
!353 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!354 = !{i8 0, i8 2}
!355 = !{!"auto-init"}
!356 = !{i64 2148798190, i64 2148798195, i64 2148798208, i64 2148798252, i64 2148798286, i64 2148798307}
!357 = !{i64 516135, i64 516162, i64 516184, i64 516212}
!358 = !{i64 516543, i64 516570, i64 516603, i64 516624, i64 516651, i64 516677}
