; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra210_mvc.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra210_mvc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra210_mvc = type { [8 x i32], i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tegra210_mvc__239_774_tegra210_mvc_driver_init6 = internal global ptr @tegra210_mvc_driver_init, section ".initcall6.init", align 4
@tegra210_mvc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra210_mvc_platform_probe, ptr @tegra210_mvc_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra210_mvc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mvc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra210_mvc_driver_exit = internal global ptr @tegra210_mvc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [69 x i8] c"snd_soc_tegra210_mvc.author=Arun Shamanna Lakshmi <aruns@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_tegra210_mvc.description=Tegra210 MVC ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [63 x i8] c"snd_soc_tegra210_mvc.file=sound/soc/tegra/snd-soc-tegra210-mvc\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [36 x i8] c"snd_soc_tegra210_mvc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210-mvc\00", [19 x i8] zeroinitializer }, align 32
@tegra210_mvc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-mvc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra210_mvc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mvc_runtime_suspend, ptr @tegra210_mvc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra210_mvc_platform_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra210_mvc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra210_mvc_wr_reg, ptr @tegra210_mvc_rd_reg, ptr @tegra210_mvc_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 300, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mvc_reg_defaults, i32 14, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"tegra210_mvc:728:(&tegra210_mvc_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@tegra210_mvc_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 730, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra210_mvc_platform_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/tegra/tegra210_mvc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_mvc_platform_probe._entry_ptr = internal global ptr @tegra210_mvc_platform_probe._entry, section ".printk_index", align 4
@tegra210_mvc_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra210_mvc_vol_ctrl, i32 12, ptr @tegra210_mvc_widgets, i32 2, ptr @tegra210_mvc_routes, i32 13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_mvc_dais = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.51, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.52, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mvc_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.44, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@tegra210_mvc_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 740, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't register MVC component, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra210_mvc_platform_probe._entry_ptr.9 = internal global ptr @tegra210_mvc_platform_probe._entry.7, section ".printk_index", align 4
@tegra210_mvc_reg_defaults = internal constant { [14 x %struct.reg_default], [48 x i8] } { [14 x %struct.reg_default] [%struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 32, i32 30464 }, %struct.reg_default { i32 84, i32 1 }, %struct.reg_default { i32 96, i32 30464 }, %struct.reg_default { i32 136, i32 1 }, %struct.reg_default { i32 168, i32 1073741827 }, %struct.reg_default { i32 176, i32 8388608 }, %struct.reg_default { i32 208, i32 8388608 }, %struct.reg_default { i32 240, i32 4800 }, %struct.reg_default { i32 244, i32 447392 }, %struct.reg_default { i32 248, i32 125 }, %struct.reg_default { i32 252, i32 625 }, %struct.reg_default { i32 256, i32 4800 }, %struct.reg_default { i32 260, i32 16384 }], [48 x i8] zeroinitializer }, align 32
@tegra210_mvc_vol_ctrl = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_vol, ptr @tegra210_mvc_put_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_mute, ptr @tegra210_mvc_put_mute, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_master_vol, ptr @tegra210_mvc_put_master_vol, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mvc_get_master_mute, ptr @tegra210_mvc_put_master_mute, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_mvc_get_curve_type, ptr @tegra210_mvc_put_curve_type, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tegra210_mvc_curve_type_ctrl to i32) }], [128 x i8] zeroinitializer }, align 32
@tegra210_mvc_routes = internal constant { [13 x %struct.snd_soc_dapm_route], [188 x i8] } { [13 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }], [188 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel1 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 208, i32 208, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel2 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 212, i32 212, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel3 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 216, i32 216, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel4 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 220, i32 220, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel5 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 224, i32 224, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel6 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 228, i32 228, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel7 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 232, i32 232, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel8 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 236, i32 236, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Per Chan Mute Mask\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 168, i32 168, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Volume\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16000, i32 16000, i32 208, i32 208, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mute\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 168, i32 168, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Curve Type\00", [21 x i8] zeroinitializer }, align 32
@tegra210_mvc_curve_type_ctrl = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @tegra210_mvc_curve_type_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tegra210_mvc_volume_switch_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Volume switch trigger is still active, err = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tegra210_mvc_volume_switch_timeout\00", [61 x i8] zeroinitializer }, align 32
@tegra210_mvc_volume_switch_timeout._entry_ptr = internal global ptr @tegra210_mvc_volume_switch_timeout._entry, section ".printk_index", align 4
@tegra210_mvc_put_curve_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Curve type can't be set when MVC is running\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra210_mvc_put_curve_type\00", [36 x i8] zeroinitializer }, align 32
@tegra210_mvc_put_curve_type._entry_ptr = internal global ptr @tegra210_mvc_put_curve_type._entry, section ".printk_index", align 4
@tegra210_mvc_curve_type_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Poly\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Linear\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@tegra210_mvc_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX XBAR-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XBAR-TX\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX-CIF-Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX-CIF-Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX XBAR-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XBAR-RX\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX XBAR-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX-CIF-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX-CIF-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX XBAR-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MVC-RX-CIF\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MVC-TX-CIF\00", [21 x i8] zeroinitializer }, align 32
@tegra210_mvc_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mvc_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tegra210_mvc_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SW reset failed, err = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra210_mvc_hw_params\00", [41 x i8] zeroinitializer }, align 32
@tegra210_mvc_hw_params._entry_ptr = internal global ptr @tegra210_mvc_hw_params._entry, section ".printk_index", align 4
@tegra210_mvc_hw_params._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set MVC RX CIF: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra210_mvc_hw_params._entry_ptr.57 = internal global ptr @tegra210_mvc_hw_params._entry.55, section ".printk_index", align 4
@tegra210_mvc_hw_params._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set MVC TX CIF: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra210_mvc_hw_params._entry_ptr.60 = internal global ptr @tegra210_mvc_hw_params._entry.58, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [37 x i64] [i64 35, i64 32, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136]
@__sancov_gen_cov_switch_values.61 = internal global [16 x i64] [i64 14, i64 32, i64 12, i64 16, i64 24, i64 76, i64 80, i64 88, i64 132, i64 144, i64 148, i64 168, i64 172, i64 260, i64 264, i64 268]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"tegra210_mvc_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 765, i32 31 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 767, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"tegra210_mvc_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 701, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"tegra210_mvc_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 758, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"tegra210_mvc_regmap_config\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 688, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 727, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 730, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"tegra210_mvc_cmpnt\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 631, i32 46 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"tegra210_mvc_dais\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 562, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 740, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [26 x i8] c"tegra210_mvc_reg_defaults\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 24, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"tegra210_mvc_vol_ctrl\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 532, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"tegra210_mvc_routes\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 625, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 534, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 535, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 536, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 537, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 538, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 539, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 540, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 541, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 544, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 549, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 554, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 558, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [29 x i8] c"tegra210_mvc_curve_type_ctrl\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 522, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 187, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 415, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [29 x i8] c"tegra210_mvc_curve_type_text\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 517, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 518, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 519, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 612, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 613, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"tegra210_mvc_widgets\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 611, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 627, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 628, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 565, i32 11 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 588, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"tegra210_mvc_dai_ops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 513, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 481, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 488, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.268 = private constant [34 x i8] c"../sound/soc/tegra/tegra210_mvc.c\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 495, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_tegra210_mvc_driver_exit, ptr @__initcall__kmod_snd_soc_tegra210_mvc__239_774_tegra210_mvc_driver_init6, ptr @tegra210_mvc_driver_exit, ptr @tegra210_mvc_hw_params._entry, ptr @tegra210_mvc_hw_params._entry.55, ptr @tegra210_mvc_hw_params._entry.58, ptr @tegra210_mvc_hw_params._entry_ptr, ptr @tegra210_mvc_hw_params._entry_ptr.57, ptr @tegra210_mvc_hw_params._entry_ptr.60, ptr @tegra210_mvc_platform_probe._entry, ptr @tegra210_mvc_platform_probe._entry.7, ptr @tegra210_mvc_platform_probe._entry_ptr, ptr @tegra210_mvc_platform_probe._entry_ptr.9, ptr @tegra210_mvc_put_curve_type._entry, ptr @tegra210_mvc_put_curve_type._entry_ptr, ptr @tegra210_mvc_volume_switch_timeout._entry, ptr @tegra210_mvc_volume_switch_timeout._entry_ptr, ptr @tegra210_mvc_driver, ptr @.str, ptr @tegra210_mvc_of_match, ptr @tegra210_mvc_pm_ops, ptr @tegra210_mvc_platform_probe._key, ptr @tegra210_mvc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra210_mvc_cmpnt, ptr @tegra210_mvc_dais, ptr @.str.8, ptr @tegra210_mvc_reg_defaults, ptr @tegra210_mvc_vol_ctrl, ptr @tegra210_mvc_routes, ptr @.str.10, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @tegra210_mvc_curve_type_ctrl, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @tegra210_mvc_curve_type_text, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @tegra210_mvc_widgets, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @tegra210_mvc_dai_ops, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_platform_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_reg_defaults to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_vol_ctrl to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_routes to i32), i32 676, i32 864, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_curve_type_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_volume_switch_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_put_curve_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_curve_type_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_hw_params._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mvc_hw_params._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra210_mvc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_mvc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra210_mvc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %curve_type = getelementptr inbounds %struct.tegra210_mvc, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %curve_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %curve_type, align 4
  %ctrl_value = getelementptr inbounds %struct.tegra210_mvc, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1073741827, ptr %ctrl_value, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @tegra210_mvc_regmap_config, ptr noundef nonnull @tegra210_mvc_platform_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i46 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @regcache_cache_only(ptr noundef %call7, i1 noundef zeroext true) #8
  %call15 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tegra210_mvc_cmpnt, ptr noundef nonnull @tegra210_mvc_dais, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call15) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  tail call fastcc void @tegra210_mvc_reset_vol_settings(ptr noundef nonnull %call.i, ptr noundef %dev1)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %7, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_platform_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra210_mvc_reset_vol_settings(ptr nocapture noundef %mvc, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %curve_type = getelementptr inbounds %struct.tegra210_mvc, ptr %mvc, i32 0, i32 1
  %0 = ptrtoint ptr %curve_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curve_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.body.preheader, label %for.body4.preheader

for.body4.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memset(ptr %mvc, i32 0, i32 32)
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %mvc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16777216, ptr %mvc, align 4
  %arrayidx.1 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16777216, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16777216, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16777216, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %arrayidx.7, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %for.body4.preheader
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %mvc, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %curve_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curve_type, align 4
  %shl = shl i32 %14, 1
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 168, i32 noundef 2, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %mvc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mvc, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 176, i32 noundef %18) #8
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %mvc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mvc, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 208, i32 noundef %22) #8
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %arrayidx17.1 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.1, align 4
  %call18.1 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 180, i32 noundef %26) #8
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx17.1, align 4
  %call24.1 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 212, i32 noundef %30) #8
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %arrayidx17.2 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx17.2, align 4
  %call18.2 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 184, i32 noundef %34) #8
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %37 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx17.2, align 4
  %call24.2 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 216, i32 noundef %38) #8
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %arrayidx17.3 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx17.3, align 4
  %call18.3 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 188, i32 noundef %42) #8
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %45 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx17.3, align 4
  %call24.3 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 220, i32 noundef %46) #8
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %arrayidx17.4 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx17.4, align 4
  %call18.4 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 192, i32 noundef %50) #8
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %53 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx17.4, align 4
  %call24.4 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 224, i32 noundef %54) #8
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %arrayidx17.5 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 5
  %57 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx17.5, align 4
  %call18.5 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 196, i32 noundef %58) #8
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx17.5, align 4
  %call24.5 = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 228, i32 noundef %62) #8
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %arrayidx17.6 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 6
  %65 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx17.6, align 4
  %call18.6 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 200, i32 noundef %66) #8
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %69 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx17.6, align 4
  %call24.6 = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 232, i32 noundef %70) #8
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %arrayidx17.7 = getelementptr [8 x i32], ptr %mvc, i32 0, i32 7
  %73 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx17.7, align 4
  %call18.7 = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 204, i32 noundef %74) #8
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %77 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx17.7, align 4
  %call24.7 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 236, i32 noundef %78) #8
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 172, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i54 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mvc_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.caserange [
    i32 128, label %entry.return_crit_edge
    i32 129, label %entry.return_crit_edge4
    i32 130, label %entry.return_crit_edge5
    i32 131, label %entry.return_crit_edge6
    i32 132, label %entry.return_crit_edge7
    i32 133, label %entry.return_crit_edge8
    i32 134, label %entry.return_crit_edge9
    i32 135, label %entry.return_crit_edge10
    i32 136, label %entry.return_crit_edge11
    i32 84, label %entry.return_crit_edge12
    i32 85, label %entry.return_crit_edge13
    i32 86, label %entry.return_crit_edge14
    i32 87, label %entry.return_crit_edge15
    i32 88, label %entry.return_crit_edge16
    i32 89, label %entry.return_crit_edge17
    i32 90, label %entry.return_crit_edge18
    i32 91, label %entry.return_crit_edge19
    i32 92, label %entry.return_crit_edge20
    i32 93, label %entry.return_crit_edge21
    i32 94, label %entry.return_crit_edge22
    i32 95, label %entry.return_crit_edge23
    i32 96, label %entry.return_crit_edge24
    i32 20, label %entry.return_crit_edge25
    i32 21, label %entry.return_crit_edge26
    i32 22, label %entry.return_crit_edge27
    i32 23, label %entry.return_crit_edge28
    i32 24, label %entry.return_crit_edge29
    i32 25, label %entry.return_crit_edge30
    i32 26, label %entry.return_crit_edge31
    i32 27, label %entry.return_crit_edge32
    i32 28, label %entry.return_crit_edge33
    i32 29, label %entry.return_crit_edge34
    i32 30, label %entry.return_crit_edge35
    i32 31, label %entry.return_crit_edge36
    i32 32, label %entry.return_crit_edge37
  ]

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add i32 %reg, -168
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %1)
  %inbounds = icmp ult i32 %1, 97
  br label %return

return:                                           ; preds = %sw.caserange, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ %inbounds, %sw.caserange ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mvc_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 289, i32 %0)
  %inbounds = icmp ult i32 %0, 289
  ret i1 %inbounds
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mvc_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %reg, label %sw.default [
    i32 12, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge1
    i32 24, label %entry.return_crit_edge2
    i32 76, label %entry.return_crit_edge3
    i32 80, label %entry.return_crit_edge4
    i32 88, label %entry.return_crit_edge5
    i32 132, label %entry.return_crit_edge6
    i32 144, label %entry.return_crit_edge7
    i32 148, label %entry.return_crit_edge8
    i32 172, label %entry.return_crit_edge9
    i32 260, label %entry.return_crit_edge10
    i32 264, label %entry.return_crit_edge11
    i32 268, label %entry.return_crit_edge12
    i32 168, label %entry.return_crit_edge13
  ]

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_mvc_get_vol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %sub = add i32 %10, -208
  %div = sdiv i32 %sub, 4
  %idxprom = and i32 %div, 255
  %arrayidx = getelementptr [8 x i32], ptr %8, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %curve_type = getelementptr inbounds %struct.tegra210_mvc, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %curve_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curve_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = ashr i32 %12, 16
  %mul = mul nsw i32 %shr, 100
  %shr3 = ashr i32 %mul, 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul4 = mul i32 %12, 100
  %shr5 = ashr i32 %mul4, 8
  %add = add nsw i32 %shr5, 12000
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %shr3, %if.then ], [ %add, %if.else ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %val.0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_put_vol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra210_mvc_update_vol(ptr noundef %kcontrol, ptr noundef %ucontrol, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_get_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !135
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %regmap.i = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 168, ptr noundef nonnull %val.i) #8
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %call.i8.i = call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and1 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %12, 8
  %conv2 = and i32 %shr, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv2, ptr %value, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %14 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  %value10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %tobool5.not, label %if.else9, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %value10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %value10, align 8
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %value10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %value10, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_put_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra210_mvc_update_mute(ptr noundef %kcontrol, ptr noundef %ucontrol, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_mvc_get_master_vol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %reg.i = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %sub.i = add i32 %10, -208
  %div.i = sdiv i32 %sub.i, 4
  %idxprom.i = and i32 %div.i, 255
  %arrayidx.i = getelementptr [8 x i32], ptr %8, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %curve_type.i = getelementptr inbounds %struct.tegra210_mvc, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %curve_type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curve_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = ashr i32 %12, 16
  %mul.i = mul nsw i32 %shr.i, 100
  %shr3.i = ashr i32 %mul.i, 8
  br label %tegra210_mvc_get_vol.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i = mul i32 %12, 100
  %shr5.i = ashr i32 %mul4.i, 8
  %add.i = add nsw i32 %shr5.i, 12000
  br label %tegra210_mvc_get_vol.exit

tegra210_mvc_get_vol.exit:                        ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %shr3.i, %if.then.i ], [ %add.i, %if.else.i ]
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %val.0.i, ptr %value.i, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_put_master_vol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra210_mvc_update_vol(ptr noundef %kcontrol, ptr noundef %ucontrol, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_get_master_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !135
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %regmap.i = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 168, ptr noundef nonnull %val.i) #8
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %call.i8.i = call i32 @__pm_runtime_idle(ptr noundef %10, i32 noundef 5) #8
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %and1 = and i32 %12, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %12, 8
  %and3 = and i32 %shr, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and3, ptr %value, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  %14 = and i32 %12, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %14)
  %cmp = icmp eq i32 %14, 65280
  %value7 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br i1 %cmp, label %if.then6, label %if.else9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %value7, align 8
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %value7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %value7, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_put_master_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra210_mvc_update_mute(ptr noundef %kcontrol, ptr noundef %ucontrol, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_mvc_get_curve_type(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %curve_type = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %curve_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %curve_type, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_put_curve_type(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !135
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 128, ptr noundef nonnull %value) #8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %curve_type = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %curve_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curve_type, align 4
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %15 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %curve_type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %curve_type, align 4
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  call fastcc void @tegra210_mvc_reset_vol_settings(ptr noundef %5, ptr noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 1, %if.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_mvc_update_vol(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol, i1 noundef zeroext %per_ch_enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %sub = add i32 %10, -208
  %div = sdiv i32 %sub, 4
  %idxprom = and i32 %div, 255
  %arrayidx = getelementptr [8 x i32], ptr %8, i32 0, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %call3 = tail call fastcc i32 @tegra210_mvc_volume_switch_timeout(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  %curve_type.i = getelementptr inbounds %struct.tegra210_mvc, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %curve_type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curve_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.smin.i32(i32 %14, i32 10000) #8
  %mul.i = shl i32 %17, 8
  %div.i = sdiv i32 %mul.i, 100
  %shl.i = shl i32 %div.i, 16
  br label %tegra210_mvc_conv_vol.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = shl i32 %14, 8
  %mul3.i = add i32 %sub.i, -3072000
  %div4.i = sdiv i32 %mul3.i, 100
  br label %tegra210_mvc_conv_vol.exit

tegra210_mvc_conv_vol.exit:                       ; preds = %if.else.i, %if.then.i
  %div4.sink.i = phi i32 [ %div4.i, %if.else.i ], [ %shl.i, %if.then.i ]
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div4.sink.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div4.sink.i, i32 %12)
  %cmp9 = icmp eq i32 %div4.sink.i, %12
  br i1 %cmp9, label %tegra210_mvc_conv_vol.exit.end_crit_edge, label %if.end12

tegra210_mvc_conv_vol.exit.end_crit_edge:         ; preds = %tegra210_mvc_conv_vol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %end

if.end12:                                         ; preds = %tegra210_mvc_conv_vol.exit
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  br i1 %per_ch_enable, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 168, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 168, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr [8 x i32], ptr %8, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx23, align 4
  %24 = load i32, ptr %arrayidx, align 4
  %arrayidx23.1 = getelementptr [8 x i32], ptr %8, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx23.1, align 4
  %26 = load i32, ptr %arrayidx, align 4
  %arrayidx23.2 = getelementptr [8 x i32], ptr %8, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx23.2, align 4
  %28 = load i32, ptr %arrayidx, align 4
  %arrayidx23.3 = getelementptr [8 x i32], ptr %8, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx23.3, align 4
  %30 = load i32, ptr %arrayidx, align 4
  %arrayidx23.4 = getelementptr [8 x i32], ptr %8, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx23.4, align 4
  %32 = load i32, ptr %arrayidx, align 4
  %arrayidx23.5 = getelementptr [8 x i32], ptr %8, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx23.5, align 4
  %34 = load i32, ptr %arrayidx, align 4
  %arrayidx23.6 = getelementptr [8 x i32], ptr %8, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx23.6, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13
  %regmap25 = getelementptr inbounds %struct.tegra210_mvc, ptr %8, i32 0, i32 3
  %36 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap25, align 4
  %mul = shl nuw nsw i32 %idxprom, 2
  %add = add nuw nsw i32 %mul, 176
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef %add, i32 noundef %39) #8
  %40 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap25, align 4
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %reg, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %call36 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef %43, i32 noundef %45) #8
  %46 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap25, align 4
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 172, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %end

end:                                              ; preds = %if.end24, %tegra210_mvc_conv_vol.exit.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call3, %entry.end_crit_edge ], [ 1, %if.end24 ], [ 0, %tegra210_mvc_conv_vol.exit.end_crit_edge ]
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %49, i32 noundef 5) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_mvc_volume_switch_timeout(ptr nocapture noundef readonly %cmpnt) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !135
  %call1 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call1, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 185) #8
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call959 = call i32 @regmap_read(ptr noundef %6, i32 noundef 172, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call959)
  %tobool.not60 = icmp eq i32 %call959, 0
  br i1 %tobool.not60, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %and = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call14 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_read(ptr noundef %10, i32 noundef 172, ptr noundef nonnull %value) #8
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.lor.end_crit_edge

if.then22.lor.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %12, i32 noundef 172, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  %and25 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.rhs.if.end35_crit_edge, label %lor.rhs.do.end34_crit_edge

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

lor.rhs.if.end35_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then22.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool24.not50 = phi i32 [ %call19, %for.end.lor.end_crit_edge ], [ %call959, %entry.lor.end_crit_edge ], [ %call9, %if.then22.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool24.not50)
  %cmp30 = icmp slt i32 %tobool24.not50, 0
  br i1 %cmp30, label %lor.end.do.end34_crit_edge, label %lor.end.if.end35_crit_edge

lor.end.if.end35_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

lor.end.do.end34_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end34

do.end34:                                         ; preds = %lor.end.do.end34_crit_edge, %lor.rhs.do.end34_crit_edge
  %tobool24.not5064 = phi i32 [ %tobool24.not50, %lor.end.do.end34_crit_edge ], [ -110, %lor.rhs.do.end34_crit_edge ]
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %tobool24.not5064) #11
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %lor.end.if.end35_crit_edge, %lor.rhs.if.end35_crit_edge
  %tobool24.not5063 = phi i32 [ %tobool24.not5064, %do.end34 ], [ %tobool24.not50, %lor.end.if.end35_crit_edge ], [ 0, %lor.rhs.if.end35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %tobool24.not5063
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_mvc_update_mute(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol, i1 noundef zeroext %per_chan_ctrl) unnamed_addr #2 align 64 {
entry:
  %change = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change) #8
  %8 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %change, align 1
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %call3 = tail call fastcc i32 @tegra210_mvc_volume_switch_timeout(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then20.critedge, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  %spec.store.select = select i1 %tobool5.not, i32 0, i32 255
  %mute_val.0 = select i1 %per_chan_ctrl, i32 %7, i32 %spec.store.select
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %mute_val.0, 8
  %call.i39 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 168, i32 noundef 65280, i32 noundef %shl, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %change, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end.if.end21_crit_edge, label %if.then11

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %per_ch_ctrl_val.0 = select i1 %per_chan_ctrl, i32 1073741824, i32 0
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i40 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 168, i32 noundef 1073741824, i32 noundef %per_ch_ctrl_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i41 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 172, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end21

if.then20.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #8
  br label %cleanup

if.end21:                                         ; preds = %if.then11, %if.end.if.end21_crit_edge
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %call.i42 = call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #8
  %21 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %change, align 1, !range !136
  %23 = zext i8 %22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then20.critedge
  %retval.0 = phi i32 [ %call3, %if.then20.critedge ], [ %23, %if.end21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !135
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 132, i32 noundef 1) #8
  %call3 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call3, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 479) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call12135 = call i32 @regmap_read(ptr noundef %8, i32 noundef 132, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12135)
  %tobool.not136 = icmp eq i32 %call12135, 0
  br i1 %tobool.not136, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %lor.lhs.false.if.end37_crit_edge, label %land.lhs.true

lor.lhs.false.if.end37_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %12, i32 noundef 132, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.lor.end_crit_edge

if.then25.lor.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %14, i32 noundef 132, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %lor.rhs, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.end
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool28.not = icmp eq i32 %.pr, 0
  br i1 %tobool28.not, label %lor.rhs.if.end37_crit_edge, label %lor.rhs.do.end36_crit_edge

lor.rhs.do.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

lor.rhs.if.end37_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then25.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool27.not122 = phi i32 [ %call22, %for.end.lor.end_crit_edge ], [ %call12135, %entry.lor.end_crit_edge ], [ %call12, %if.then25.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool27.not122)
  %cmp32 = icmp slt i32 %tobool27.not122, 0
  br i1 %cmp32, label %lor.end.do.end36_crit_edge, label %lor.end.if.end37_crit_edge

lor.end.if.end37_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

lor.end.do.end36_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end36:                                         ; preds = %lor.end.do.end36_crit_edge, %lor.rhs.do.end36_crit_edge
  %tobool27.not122139 = phi i32 [ %tobool27.not122, %lor.end.do.end36_crit_edge ], [ -110, %lor.rhs.do.end36_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %tobool27.not122139) #11
  br label %cleanup

if.end37:                                         ; preds = %lor.end.if.end37_crit_edge, %lor.rhs.if.end37_crit_edge, %lor.lhs.false.if.end37_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i9.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end37.params_format.exit.i_crit_edge

if.end37.params_format.exit.i_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %if.end37
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.do.end43_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i.do.end43_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.end37.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end37.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %19, %if.end37.params_format.exit.i_crit_edge ], [ %21, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %22 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !137
  %add.i.i.i = or i32 %22, %i.09.lcssa.i.i.i
  %23 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %add.i.i.i, label %params_format.exit.i.do.end43_crit_edge [
    i32 2, label %params_format.exit.i.if.end44_crit_edge
    i32 10, label %sw.bb2.i
  ]

params_format.exit.i.if.end44_crit_edge:          ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

params_format.exit.i.do.end43_crit_edge:          ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

sw.bb2.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end43:                                         ; preds = %params_format.exit.i.do.end43_crit_edge, %for.inc.i.i.i.do.end43_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef -22) #11
  br label %cleanup

if.end44:                                         ; preds = %sw.bb2.i, %params_format.exit.i.if.end44_crit_edge
  %audio_bits.0.i = phi i32 [ 7, %sw.bb2.i ], [ 3, %params_format.exit.i.if.end44_crit_edge ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %sub.i.i = shl i32 %17, 20
  %shl1.i.i = add i32 %sub.i.i, -1048576
  %sub2.i.i = shl i32 %17, 16
  %shl3.i.i = add i32 %sub2.i.i, -65536
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %shl5.i.i = shl nuw nsw i32 %audio_bits.0.i, 12
  %or6.i.i = or i32 %shl5.i.i, %or4.i.i
  %shl7.i.i = shl nuw nsw i32 %audio_bits.0.i, 8
  %or8.i.i = or i32 %or6.i.i, %shl7.i.i
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 32, i32 noundef 1073741819, i32 noundef %or8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  %28 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i94 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i94, label %for.inc.i.i.i97, label %if.end44.params_format.exit.i101_crit_edge

if.end44.params_format.exit.i101_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i101

for.inc.i.i.i97:                                  ; preds = %if.end44
  %arrayidx.1.i.i.i95 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i.i96 = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i.i96, label %for.inc.i.i.i97.do.end50_crit_edge, label %for.inc.i.i.i97.params_format.exit.i101_crit_edge

for.inc.i.i.i97.params_format.exit.i101_crit_edge: ; preds = %for.inc.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i101

for.inc.i.i.i97.do.end50_crit_edge:               ; preds = %for.inc.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

params_format.exit.i101:                          ; preds = %for.inc.i.i.i97.params_format.exit.i101_crit_edge, %if.end44.params_format.exit.i101_crit_edge
  %i.09.lcssa.i.i.i98 = phi i32 [ 0, %if.end44.params_format.exit.i101_crit_edge ], [ 32, %for.inc.i.i.i97.params_format.exit.i101_crit_edge ]
  %.lcssa.i.i.i99 = phi i32 [ %29, %if.end44.params_format.exit.i101_crit_edge ], [ %31, %for.inc.i.i.i97.params_format.exit.i101_crit_edge ]
  %32 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i99, i1 true) #8, !range !137
  %add.i.i.i100 = or i32 %32, %i.09.lcssa.i.i.i98
  %33 = zext i32 %add.i.i.i100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %add.i.i.i100, label %params_format.exit.i101.do.end50_crit_edge [
    i32 2, label %params_format.exit.i101.if.end51_crit_edge
    i32 10, label %sw.bb2.i102
  ]

params_format.exit.i101.if.end51_crit_edge:       ; preds = %params_format.exit.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

params_format.exit.i101.do.end50_crit_edge:       ; preds = %params_format.exit.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

sw.bb2.i102:                                      ; preds = %params_format.exit.i101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

do.end50:                                         ; preds = %params_format.exit.i101.do.end50_crit_edge, %for.inc.i.i.i97.do.end50_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef -22) #11
  br label %cleanup

if.end51:                                         ; preds = %sw.bb2.i102, %params_format.exit.i101.if.end51_crit_edge
  %audio_bits.0.i103 = phi i32 [ 7, %sw.bb2.i102 ], [ 3, %params_format.exit.i101.if.end51_crit_edge ]
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %sub.i.i105 = shl i32 %27, 20
  %shl1.i.i106 = add i32 %sub.i.i105, -1048576
  %sub2.i.i107 = shl i32 %27, 16
  %shl3.i.i108 = add i32 %sub2.i.i107, -65536
  %or4.i.i109 = or i32 %shl1.i.i106, %shl3.i.i108
  %shl5.i.i110 = shl nuw nsw i32 %audio_bits.0.i103, 12
  %or6.i.i111 = or i32 %shl5.i.i110, %or4.i.i109
  %shl7.i.i112 = shl nuw nsw i32 %audio_bits.0.i103, 8
  %or8.i.i113 = or i32 %or6.i.i111, %shl7.i.i112
  %call.i.i.i114 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 96, i32 noundef 1073741819, i32 noundef %or8.i.i113, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 260, i32 noundef 28672) #8
  %call1.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 23738319) #8
  %call1.1.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 659403) #8
  %call1.2.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef -3680) #8
  %call1.3.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 15546680) #8
  %call1.4.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 2530732) #8
  %call1.5.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef -120985) #8
  %call1.6.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 12048422) #8
  %call1.7.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef 5527252) #8
  %call1.8.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 264, i32 noundef -785042) #8
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call54 = call i32 @regmap_write(ptr noundef %39, i32 noundef 248, i32 noundef 16) #8
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_write(ptr noundef %41, i32 noundef 252, i32 noundef 63) #8
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call58 = call i32 @regmap_write(ptr noundef %43, i32 noundef 240, i32 noundef 150) #8
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call60 = call i32 @regmap_write(ptr noundef %45, i32 noundef 244, i32 noundef 14316558) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end50, %do.end43, %do.end36
  %retval.0 = phi i32 [ %tobool27.not122139, %do.end36 ], [ -22, %do.end43 ], [ -22, %do.end50 ], [ 0, %if.end51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %ctrl_value = getelementptr inbounds %struct.tegra210_mvc, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef 168, ptr noundef %ctrl_value) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mvc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_mvc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %ctrl_value = getelementptr inbounds %struct.tegra210_mvc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctrl_value, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 168, i32 noundef %9) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 172, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra210_mvc__239_774_tegra210_mvc_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra210_mvc__239_774_tegra210_mvc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 774, i32 1}
!2 = !{ptr @__exitcall_tegra210_mvc_driver_exit, !1, !"__exitcall_tegra210_mvc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 776, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 777, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 778, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 767, i32 11}
!12 = !{ptr @tegra210_mvc_driver, !13, !"tegra210_mvc_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 765, i32 31}
!14 = !{ptr @tegra210_mvc_platform_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 727, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 730, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra210_mvc_platform_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra210_mvc_platform_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 740, i32 3}
!27 = !{ptr @tegra210_mvc_platform_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra210_mvc_platform_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra210_mvc_regmap_config, !30, !"tegra210_mvc_regmap_config", i1 false, i1 false}
!30 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 688, i32 35}
!31 = !{ptr @tegra210_mvc_reg_defaults, !32, !"tegra210_mvc_reg_defaults", i1 false, i1 false}
!32 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 24, i32 33}
!33 = !{ptr @tegra210_mvc_cmpnt, !34, !"tegra210_mvc_cmpnt", i1 false, i1 false}
!34 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 631, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 534, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 535, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 536, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 537, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 538, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 539, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 540, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 541, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 544, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 549, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 554, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 558, i32 2}
!59 = !{ptr @tegra210_mvc_vol_ctrl, !60, !"tegra210_mvc_vol_ctrl", i1 false, i1 false}
!60 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 532, i32 38}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 187, i32 3}
!63 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tegra210_mvc_volume_switch_timeout._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @tegra210_mvc_volume_switch_timeout._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 415, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @tegra210_mvc_put_curve_type._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @tegra210_mvc_put_curve_type._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @tegra210_mvc_curve_type_ctrl, !72, !"tegra210_mvc_curve_type_ctrl", i1 false, i1 false}
!72 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 522, i32 30}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 518, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 519, i32 2}
!77 = !{ptr @tegra210_mvc_curve_type_text, !78, !"tegra210_mvc_curve_type_text", i1 false, i1 false}
!78 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 517, i32 27}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 612, i32 2}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 613, i32 2}
!83 = !{ptr @tegra210_mvc_widgets, !84, !"tegra210_mvc_widgets", i1 false, i1 false}
!84 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 611, i32 41}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 627, i32 2}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 628, i32 2}
!94 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra210_mvc_routes, !98, !"tegra210_mvc_routes", i1 false, i1 false}
!98 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 625, i32 40}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 565, i32 11}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 588, i32 11}
!103 = !{ptr @tegra210_mvc_dais, !104, !"tegra210_mvc_dais", i1 false, i1 false}
!104 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 562, i32 34}
!105 = !{ptr @tegra210_mvc_dai_ops, !106, !"tegra210_mvc_dai_ops", i1 false, i1 false}
!106 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 513, i32 37}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 481, i32 3}
!109 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @tegra210_mvc_hw_params._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @tegra210_mvc_hw_params._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 488, i32 3}
!114 = !{ptr @tegra210_mvc_hw_params._entry.55, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra210_mvc_hw_params._entry_ptr.57, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 495, i32 3}
!118 = !{ptr @tegra210_mvc_hw_params._entry.58, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @tegra210_mvc_hw_params._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!120 = distinct !{null, !121, !"gain_params", i1 false, i1 false}
!121 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 41, i32 46}
!122 = !{ptr @tegra210_mvc_of_match, !123, !"tegra210_mvc_of_match", i1 false, i1 false}
!123 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 701, i32 34}
!124 = !{ptr @tegra210_mvc_pm_ops, !125, !"tegra210_mvc_pm_ops", i1 false, i1 false}
!125 = !{!"../sound/soc/tegra/tegra210_mvc.c", i32 758, i32 32}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i8 0, i8 2}
!137 = !{i32 0, i32 33}
