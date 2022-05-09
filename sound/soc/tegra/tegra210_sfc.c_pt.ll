; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra210_sfc.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra210_sfc.c"
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
%struct.tegra210_sfc = type { [2 x i32], [2 x i32], i32, i32, ptr }
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tegra210_sfc__239_3610_tegra210_sfc_driver_init6 = internal global ptr @tegra210_sfc_driver_init, section ".initcall6.init", align 4
@tegra210_sfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra210_sfc_platform_probe, ptr @tegra210_sfc_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra210_sfc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra210_sfc_driver_exit = internal global ptr @tegra210_sfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [69 x i8] c"snd_soc_tegra210_sfc.author=Arun Shamanna Lakshmi <aruns@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [58 x i8] c"snd_soc_tegra210_sfc.description=Tegra210 SFC ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [63 x i8] c"snd_soc_tegra210_sfc.file=sound/soc/tegra/snd-soc-tegra210-sfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [36 x i8] c"snd_soc_tegra210_sfc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210-sfc\00", [19 x i8] zeroinitializer }, align 32
@tegra210_sfc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-sfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra210_sfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_runtime_suspend, ptr @tegra210_sfc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra210_sfc_platform_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra210_sfc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra210_sfc_wr_reg, ptr @tegra210_sfc_rd_reg, ptr @tegra210_sfc_volatile_reg, ptr @tegra210_sfc_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 196, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_reg_defaults, i32 6, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"tegra210_sfc:3566:(&tegra210_sfc_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@tegra210_sfc_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 3568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra210_sfc_platform_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/tegra/tegra210_sfc.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_sfc_platform_probe._entry_ptr = internal global ptr @tegra210_sfc_platform_probe._entry, section ".printk_index", align 4
@tegra210_sfc_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra210_sfc_controls, i32 4, ptr @tegra210_sfc_widgets, i32 2, ptr @tegra210_sfc_routes, i32 13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_sfc_dais = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.156, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.153, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.148, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.157, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.154, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.149, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@tegra210_sfc_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 3578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"can't register SFC component, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra210_sfc_platform_probe._entry_ptr.9 = internal global ptr @tegra210_sfc_platform_probe._entry.7, section ".printk_index", align 4
@tegra210_sfc_reg_defaults = internal constant { [6 x %struct.reg_default], [48 x i8] } { [6 x %struct.reg_default] [%struct.reg_default { i32 20, i32 1 }, %struct.reg_default { i32 32, i32 30464 }, %struct.reg_default { i32 84, i32 1 }, %struct.reg_default { i32 96, i32 30464 }, %struct.reg_default { i32 136, i32 1 }, %struct.reg_default { i32 192, i32 16384 }], [48 x i8] zeroinitializer }, align 32
@tegra210_sfc_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_sfc_iget_stereo_to_mono, ptr @tegra210_sfc_iput_stereo_to_mono, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tegra210_sfc_stereo_conv_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_sfc_iget_mono_to_stereo, ptr @tegra210_sfc_iput_mono_to_stereo, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tegra210_sfc_mono_conv_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_sfc_oget_stereo_to_mono, ptr @tegra210_sfc_oput_stereo_to_mono, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tegra210_sfc_stereo_conv_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @tegra210_sfc_oget_mono_to_stereo, ptr @tegra210_sfc_oput_mono_to_stereo, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @tegra210_sfc_mono_conv_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@tegra210_sfc_routes = internal constant { [13 x %struct.snd_soc_dapm_route], [188 x i8] } { [13 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }], [188 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Stereo To Mono\00", [43 x i8] zeroinitializer }, align 32
@tegra210_sfc_stereo_conv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 3, i32 3, ptr @tegra210_sfc_stereo_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Input Mono To Stereo\00", [43 x i8] zeroinitializer }, align 32
@tegra210_sfc_mono_conv_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @tegra210_sfc_mono_conv_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Output Stereo To Mono\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Output Mono To Stereo\00", [42 x i8] zeroinitializer }, align 32
@tegra210_sfc_stereo_conv_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH0\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CH1\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AVG\00", [28 x i8] zeroinitializer }, align 32
@tegra210_sfc_mono_conv_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Zero\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Copy\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@tegra210_sfc_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @tegra210_sfc_init, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@coef_addr_table = internal constant { [12 x [12 x ptr]], [128 x i8] } { [12 x [12 x ptr]] [[12 x ptr] [ptr null, ptr @coef_8to11, ptr @coef_8to16, ptr @coef_8to22, ptr @coef_8to24, ptr @coef_8to32, ptr @coef_8to44, ptr @coef_8to48, ptr @coef_8to88, ptr @coef_8to96, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -95 to ptr)], [12 x ptr] [ptr @coef_11to8, ptr null, ptr @coef_11to16, ptr @coef_11to22, ptr @coef_11to24, ptr @coef_11to32, ptr @coef_11to44, ptr @coef_11to48, ptr @coef_11to88, ptr @coef_11to96, ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -95 to ptr)], [12 x ptr] [ptr @coef_16to8, ptr @coef_16to11, ptr null, ptr @coef_16to22, ptr @coef_16to24, ptr @coef_16to32, ptr @coef_16to44, ptr @coef_16to48, ptr @coef_16to88, ptr @coef_16to96, ptr @coef_16to176, ptr @coef_16to192], [12 x ptr] [ptr @coef_22to8, ptr @coef_22to11, ptr @coef_22to16, ptr null, ptr @coef_22to24, ptr @coef_22to32, ptr @coef_22to44, ptr @coef_22to48, ptr @coef_22to88, ptr @coef_22to96, ptr @coef_22to176, ptr @coef_22to192], [12 x ptr] [ptr @coef_24to8, ptr @coef_24to11, ptr @coef_24to16, ptr @coef_24to22, ptr null, ptr @coef_24to32, ptr @coef_24to44, ptr @coef_24to48, ptr @coef_24to88, ptr @coef_24to96, ptr @coef_24to176, ptr @coef_24to192], [12 x ptr] [ptr @coef_32to8, ptr @coef_32to11, ptr @coef_32to16, ptr @coef_32to22, ptr @coef_32to24, ptr null, ptr @coef_32to44, ptr @coef_32to48, ptr @coef_32to88, ptr @coef_32to96, ptr @coef_32to176, ptr @coef_32to192], [12 x ptr] [ptr @coef_44to8, ptr @coef_44to11, ptr @coef_44to16, ptr @coef_44to22, ptr @coef_44to24, ptr @coef_44to32, ptr null, ptr @coef_44to48, ptr @coef_44to88, ptr @coef_44to96, ptr @coef_44to176, ptr @coef_44to192], [12 x ptr] [ptr @coef_48to8, ptr @coef_48to11, ptr @coef_48to16, ptr @coef_48to22, ptr @coef_48to24, ptr @coef_48to32, ptr @coef_48to44, ptr null, ptr @coef_48to88, ptr @coef_48to96, ptr @coef_48to176, ptr @coef_48to192], [12 x ptr] [ptr @coef_88to8, ptr @coef_88to11, ptr @coef_88to16, ptr @coef_88to22, ptr @coef_88to24, ptr @coef_88to32, ptr @coef_88to44, ptr @coef_88to48, ptr null, ptr @coef_88to96, ptr @coef_88to176, ptr @coef_88to192], [12 x ptr] [ptr @coef_96to8, ptr @coef_96to11, ptr @coef_96to16, ptr @coef_96to22, ptr @coef_96to24, ptr @coef_96to32, ptr @coef_96to44, ptr @coef_96to48, ptr @coef_96to88, ptr null, ptr @coef_96to176, ptr @coef_96to192], [12 x ptr] [ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -95 to ptr), ptr @coef_176to16, ptr @coef_176to22, ptr @coef_176to24, ptr @coef_176to32, ptr @coef_176to44, ptr @coef_176to48, ptr @coef_176to88, ptr @coef_176to96, ptr null, ptr @coef_176to192], [12 x ptr] [ptr inttoptr (i32 -95 to ptr), ptr inttoptr (i32 -95 to ptr), ptr @coef_192to16, ptr @coef_192to22, ptr @coef_192to24, ptr @coef_192to32, ptr @coef_192to44, ptr @coef_192to48, ptr @coef_192to88, ptr @coef_192to96, ptr @coef_192to176, ptr null]], [128 x i8] zeroinitializer }, align 32
@tegra210_sfc_write_coeff_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 3078, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Conversion from %d to %d Hz is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra210_sfc_write_coeff_ram\00", [35 x i8] zeroinitializer }, align 32
@tegra210_sfc_write_coeff_ram._entry_ptr = internal global ptr @tegra210_sfc_write_coeff_ram._entry, section ".printk_index", align 4
@coef_24to88 = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 3080708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 312, i32 14012978, i32 -14009352, i32 5929052, i32 3407899, i32 -14143223, i32 6578854, i32 -1674134, i32 -14700388, i32 7703185, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [64 x i8] zeroinitializer }, align 32
@coef_48to176 = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 3080708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 312, i32 14012978, i32 -14009352, i32 5929052, i32 3407899, i32 -14143223, i32 6578854, i32 -1674134, i32 -14700388, i32 7703185, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [64 x i8] zeroinitializer }, align 32
@coef_8to11 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 2314756, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to16 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to22 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 2294276, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to24 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 41221, i32 1505, i32 14461231, i32 -12229510, i32 4634012, i32 4365598, i32 -11539358, i32 5336368, i32 -2185351, i32 -10614598, i32 6297694, i32 -5260622, i32 -9859750, i32 7136174, i32 -6651182, i32 -9419148, i32 7746501, i32 -7195597, i32 -9301720, i32 8191810, i32 3], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to32 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to44 = internal global { <{ [44 x i32], [20 x i32] }>, [64 x i8] } { <{ [44 x i32], [20 x i32] }> <{ [44 x i32] [i32 1401093, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 2, i32 2203906, i32 3584, i32 14868480, i32 -9561600, i32 2796032, i32 6359552, i32 -10626560, i32 3984384, i32 1456640, i32 -12844032, i32 6500864, i32 3, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [20 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to48 = internal global { <{ [33 x i32], [31 x i32] }>, [64 x i8] } { <{ [33 x i32], [31 x i32] }> <{ [33 x i32] [i32 1401093, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 2, i32 41218, i32 3584, i32 14868480, i32 -9561600, i32 2796032, i32 6359552, i32 -10626560, i32 3984384, i32 1456640, i32 -12844032, i32 6500864, i32 3], [31 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to88 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2400514, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 3, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_8to96 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 41218, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 3], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to8 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 2, i32 1597698, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 2, i32 2331140, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to16 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 37380, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to22 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to24 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to32 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 37380, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to44 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to48 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to88 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 24834, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_11to96 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to8 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to11 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1024259, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 3, i32 1724932, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to22 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 2314756, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to24 = internal global { <{ [42 x i32], [22 x i32] }>, [64 x i8] } { <{ [42 x i32], [22 x i32] }> <{ [42 x i32] [i32 1417477, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 3, i32 20741, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 1], [22 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to32 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to44 = internal global { <{ [53 x i32], [11 x i32] }>, [64 x i8] } { <{ [53 x i32], [11 x i32] }> <{ [53 x i32] [i32 1401093, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 2, i32 2203906, i32 3584, i32 14868480, i32 -9561600, i32 2796032, i32 6359552, i32 -10626560, i32 3984384, i32 1456640, i32 -12844032, i32 6500864, i32 3, i32 2884100, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20737, i32 8252, i32 16067893, i32 -13754014, i32 5906912, i32 13037808, i32 -13709975, i32 7317389, i32 1], [11 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to48 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 41221, i32 1924, i32 13390190, i32 -13855175, i32 5952947, i32 1289485, i32 -12761191, i32 6540917, i32 -4787304, i32 -11454255, i32 7249439, i32 -7239963, i32 -10512732, i32 7776366, i32 -8255332, i32 -9999487, i32 8101770, i32 -8632155, i32 -9817625, i32 8305531, i32 3], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to88 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to96 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 41218, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to176 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2400514, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 3, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_16to192 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 41218, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 3], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to8 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 2, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to11 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to16 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 2, i32 1597698, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 2, i32 2331140, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to24 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2314756, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 118825, i32 15903115, i32 -7165327, i32 2084118, i32 11440132, i32 -4697792, i32 4292922, i32 8359633, i32 -2783748, i32 6973926, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to32 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 37380, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to44 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to48 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to88 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to96 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to176 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 24834, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_22to192 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to8 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 37125, i32 1505, i32 14461231, i32 -12229510, i32 4634012, i32 4365598, i32 -11539358, i32 5336368, i32 -2185351, i32 -10614598, i32 6297694, i32 -5260622, i32 -9859750, i32 7136174, i32 -6651182, i32 -9419148, i32 7746501, i32 -7195597, i32 -9301720, i32 8191810, i32 1], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to11 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1007875, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 1724932, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to16 = internal global { <{ [42 x i32], [22 x i32] }>, [64 x i8] } { <{ [42 x i32], [22 x i32] }> <{ [42 x i32] [i32 1401093, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 2, i32 37125, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 1], [22 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to22 = internal global { <{ [50 x i32], [14 x i32] }>, [64 x i8] } { <{ [50 x i32], [14 x i32] }> <{ [50 x i32] [i32 811266, i32 118825, i32 15903115, i32 -7165327, i32 2084118, i32 11440132, i32 -4697792, i32 4292922, i32 8359633, i32 -2783748, i32 6973926, i32 2, i32 1794307, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 2511364, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [14 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to32 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 37122, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to44 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2294276, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to48 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to96 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to176 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_24to192 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 24834, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to8 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to11 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 827650, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 3, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 53506, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to16 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to22 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1024259, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 3, i32 1724932, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to24 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 827650, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 3, i32 53506, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to44 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 2314756, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to48 = internal global { <{ [42 x i32], [22 x i32] }>, [64 x i8] } { <{ [42 x i32], [22 x i32] }> <{ [42 x i32] [i32 1417477, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 3, i32 20741, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 1], [22 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to88 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 2294276, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to96 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 41221, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 3], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to176 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1614082, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3, i32 516, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_32to192 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 41218, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 3], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to8 = internal global { <{ [50 x i32], [14 x i32] }>, [64 x i8] } { <{ [50 x i32], [14 x i32] }> <{ [50 x i32] [i32 1179908, i32 2802, i32 5762750, i32 -14772125, i32 6628868, i32 -9304342, i32 -14504578, i32 7161825, i32 -12409641, i32 -14227678, i32 7732611, i32 -13291674, i32 -14077653, i32 8099947, i32 -13563385, i32 -14061743, i32 8309372, i32 1, i32 1937924, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20741, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 1], [14 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to11 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to16 = internal global { <{ [50 x i32], [14 x i32] }>, [64 x i8] } { <{ [50 x i32], [14 x i32] }> <{ [50 x i32] [i32 1204484, i32 2802, i32 5762750, i32 -14772125, i32 6628868, i32 -9304342, i32 -14504578, i32 7161825, i32 -12409641, i32 -14227678, i32 7732611, i32 -13291674, i32 -14077653, i32 8099947, i32 -13563385, i32 -14061743, i32 8309372, i32 2, i32 1937924, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20741, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 1], [14 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to22 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to24 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to32 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 351, i32 10981532, i32 -14410639, i32 6249984, i32 -3508236, i32 -14623408, i32 6837739, i32 -7944878, i32 -15199366, i32 7812680, i32 2, i32 1597698, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 2, i32 2331140, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to48 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2314756, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 118825, i32 15903115, i32 -7165327, i32 2084118, i32 11440132, i32 -4697792, i32 4292922, i32 8359633, i32 -2783748, i32 6973926, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to88 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to96 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to176 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_44to192 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2384130, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to8 = internal global { <{ [33 x i32], [31 x i32] }>, [64 x i8] } { <{ [33 x i32], [31 x i32] }> <{ [33 x i32] [i32 823554, i32 3584, i32 14868480, i32 -9561600, i32 2796032, i32 6359552, i32 -10626560, i32 3984384, i32 1456640, i32 -12844032, i32 6500864, i32 1, i32 20741, i32 54857, i32 15235835, i32 -10524208, i32 4060111, i32 8184968, i32 -6707768, i32 5678752, i32 3426600, i32 -3431451, i32 7070832, i32 1276583, i32 -1703306, i32 7812112, i32 391722, i32 -938991, i32 8157531, i32 77110, i32 -660318, i32 8327407, i32 1], [31 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to11 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to16 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 37125, i32 1924, i32 13390190, i32 -13855175, i32 5952947, i32 1289485, i32 -12761191, i32 6540917, i32 -4787304, i32 -11454255, i32 7249439, i32 -7239963, i32 -10512732, i32 7776366, i32 -8255332, i32 -9999487, i32 8101770, i32 -8632155, i32 -9817625, i32 8305531, i32 1], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to22 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1007875, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 1724932, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to24 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to32 = internal global { <{ [42 x i32], [22 x i32] }>, [64 x i8] } { <{ [42 x i32], [22 x i32] }> <{ [42 x i32] [i32 1401093, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 2, i32 37125, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 1], [22 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to44 = internal global { <{ [50 x i32], [14 x i32] }>, [64 x i8] } { <{ [50 x i32], [14 x i32] }> <{ [50 x i32] [i32 811266, i32 118825, i32 15903115, i32 -7165327, i32 2084118, i32 11440132, i32 -4697792, i32 4292922, i32 8359633, i32 -2783748, i32 6973926, i32 2, i32 1794307, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 2511364, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [14 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to88 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 1597698, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 2294276, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to96 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_48to192 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 811266, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 2, i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to8 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 786690, i32 87, i32 11069207, i32 -14912371, i32 6666614, i32 -3421013, i32 -15136001, i32 7127503, i32 -7922463, i32 -15673224, i32 7917509, i32 1, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to11 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 807170, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 1, i32 1593602, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to16 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 786690, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 1, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to22 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to24 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 786690, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 1, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to32 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 2, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to44 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to48 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to96 = internal global { <{ [23 x i32], [41 x i32] }>, [64 x i8] } { <{ [23 x i32], [41 x i32] }> <{ [23 x i32] [i32 811266, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [41 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to176 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 24834, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_88to192 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 2, i32 1597698, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to8 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 823554, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 1, i32 1593602, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to11 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 786690, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 1, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to16 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 823554, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to22 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to24 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to32 = internal global { <{ [21 x i32], [43 x i32] }>, [64 x i8] } { <{ [21 x i32], [43 x i32] }> <{ [21 x i32] [i32 37125, i32 658, i32 14955018, i32 -12463399, i32 4788652, i32 6150627, i32 -11764352, i32 5378110, i32 -463889, i32 -10784853, i32 6228493, i32 -3886060, i32 -9938900, i32 7026917, i32 -5523359, i32 -9417748, i32 7659090, i32 -6185140, i32 -9269159, i32 8158864, i32 1], [43 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to44 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1007875, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 1724932, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to48 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to88 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 1007875, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 1704452, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to176 = internal global { <{ [50 x i32], [14 x i32] }>, [64 x i8] } { <{ [50 x i32], [14 x i32] }> <{ [50 x i32] [i32 1007875, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2, i32 1794306, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 2490884, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 1], [14 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_96to192 = internal global { <{ [15 x i32], [49 x i32] }>, [64 x i8] } { <{ [15 x i32], [49 x i32] }> <{ [15 x i32] [i32 24835, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 2], [49 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to16 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 786690, i32 87, i32 11069207, i32 -14912371, i32 6666614, i32 -3421013, i32 -15136001, i32 7127503, i32 -7922463, i32 -15673224, i32 7917509, i32 1, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to22 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 807170, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 1, i32 1593602, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to24 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 786690, i32 312, i32 14012978, i32 -14009352, i32 5929052, i32 3407899, i32 -14143223, i32 6578854, i32 -1674134, i32 -14700388, i32 7703185, i32 1, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to32 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 786690, i32 1523, i32 14161622, i32 -13085821, i32 5236070, i32 3953805, i32 -13057475, i32 6097692, i32 -1036419, i32 -13506173, i32 7525981, i32 1, i32 1544708, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to44 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to48 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 786690, i32 5765, i32 16071401, i32 -11341418, i32 4079112, i32 12187735, i32 -10647163, i32 5244682, i32 9191046, i32 -10464272, i32 7182575, i32 1, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to88 = internal global { <{ [12 x i32], [52 x i32] }>, [64 x i8] } { <{ [12 x i32], [52 x i32] }> <{ [12 x i32] [i32 20738, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [52 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to96 = internal global { <{ [38 x i32], [26 x i32] }>, [64 x i8] } { <{ [38 x i32], [26 x i32] }> <{ [38 x i32] [i32 811266, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20739, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 1], [26 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_176to192 = internal global { <{ [23 x i32], [41 x i32] }>, [64 x i8] } { <{ [23 x i32], [41 x i32] }> <{ [23 x i32] [i32 811266, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 2, i32 20996, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152], [41 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to16 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 823554, i32 125, i32 8199968, i32 -15051762, i32 6786041, i32 -7248347, i32 -15290113, i32 7226170, i32 -10815904, i32 -15812321, i32 7959382, i32 1, i32 1593602, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to22 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 786690, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 1, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to24 = internal global { <{ [36 x i32], [28 x i32] }>, [64 x i8] } { <{ [36 x i32], [28 x i32] }> <{ [36 x i32] [i32 807170, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 1, i32 1593602, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [28 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to32 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 823554, i32 1494, i32 12997694, i32 -13358795, i32 5435670, i32 662904, i32 -13422400, i32 6260899, i32 -4266048, i32 -13935707, i32 7596838, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to44 = internal global { <{ [47 x i32], [17 x i32] }>, [64 x i8] } { <{ [47 x i32], [17 x i32] }> <{ [47 x i32] [i32 811266, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 2314498, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [17 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to48 = internal global { <{ [24 x i32], [40 x i32] }>, [64 x i8] } { <{ [24 x i32], [40 x i32] }> <{ [24 x i32] [i32 807170, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1, i32 20738, i32 120615, i32 16527303, i32 -6573445, i32 1857100, i32 15029591, i32 -3482277, i32 4030650, i32 13710231, i32 -904456, i32 6828855, i32 1], [40 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to88 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 1528324, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 5081, i32 15455351, i32 -11738237, i32 4326557, i32 9028216, i32 -11255475, i32 5447149, i32 4873735, i32 -11284671, i32 7273436, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to96 = internal global { <{ [15 x i32], [49 x i32] }>, [64 x i8] } { <{ [15 x i32], [49 x i32] }> <{ [15 x i32] [i32 20739, i32 480, i32 14566592, i32 -13104257, i32 5241971, i32 4803396, i32 -12760774, i32 5834943, i32 -1465400, i32 -12429753, i32 6768119, i32 -3920543, i32 -12540217, i32 7825161, i32 1], [49 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@coef_192to176 = internal global { <{ [35 x i32], [29 x i32] }>, [64 x i8] } { <{ [35 x i32], [29 x i32] }> <{ [35 x i32] [i32 811266, i32 175, i32 12998243, i32 -14429490, i32 6264790, i32 551638, i32 -14619569, i32 6828545, i32 -4473098, i32 -15186873, i32 7801187, i32 2, i32 1507844, i32 699051, i32 -5592405, i32 -349525, i32 5592405, i32 -10485760, i32 -699051, i32 1398101, i32 349525, i32 -1398101, i32 2097152, i32 20738, i32 266, i32 13188548, i32 -14223882, i32 6099009, i32 1049284, i32 -14394506, i32 6709250, i32 -3995067, i32 -14962995, i32 7756065, i32 1], [29 x i32] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX XBAR-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XBAR-TX\00", [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX-CIF-Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX-CIF-Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX XBAR-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XBAR-RX\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX XBAR-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX-CIF-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TX-CIF-Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX XBAR-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SFC-RX-CIF\00", [21 x i8] zeroinitializer }, align 32
@tegra210_sfc_in_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_startup, ptr null, ptr @tegra210_sfc_in_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SFC-TX-CIF\00", [21 x i8] zeroinitializer }, align 32
@tegra210_sfc_out_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_sfc_out_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tegra210_sfc_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.159, ptr @.str.4, i32 3183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to reset SFC in %s, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tegra210_sfc_startup\00", [43 x i8] zeroinitializer }, align 32
@tegra210_sfc_startup._entry_ptr = internal global ptr @tegra210_sfc_startup._entry, section ".printk_index", align 4
@tegra210_sfc_in_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.4, i32 3206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set SFC RX CIF: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra210_sfc_in_hw_params\00", [38 x i8] zeroinitializer }, align 32
@tegra210_sfc_in_hw_params._entry_ptr = internal global ptr @tegra210_sfc_in_hw_params._entry, section ".printk_index", align 4
@tegra210_sfc_rate_to_idx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.4, i32 3166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Sample rate %d Hz is not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra210_sfc_rate_to_idx\00", [39 x i8] zeroinitializer }, align 32
@tegra210_sfc_rate_to_idx._entry_ptr = internal global ptr @tegra210_sfc_rate_to_idx._entry, section ".printk_index", align 4
@tegra210_sfc_out_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.4, i32 3230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't set SFC TX CIF: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra210_sfc_out_hw_params\00", [37 x i8] zeroinitializer }, align 32
@tegra210_sfc_out_hw_params._entry_ptr = internal global ptr @tegra210_sfc_out_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [54 x i64] [i64 52, i64 32, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196]
@__sancov_gen_cov_switch_values.166 = internal global [78 x i64] [i64 76, i64 32, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 128, i64 129, i64 130, i64 131, i64 132, i64 133, i64 134, i64 135, i64 136, i64 137, i64 138, i64 139, i64 140, i64 141, i64 142, i64 143, i64 144, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196]
@__sancov_gen_cov_switch_values.167 = internal global [13 x i64] [i64 11, i64 32, i64 12, i64 16, i64 24, i64 76, i64 80, i64 88, i64 132, i64 140, i64 144, i64 192, i64 196]
@__sancov_gen_cov_switch_values.168 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.170 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"tegra210_sfc_driver\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3601, i32 31 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3603, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant [22 x i8] c"tegra210_sfc_of_match\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3542, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"tegra210_sfc_pm_ops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3594, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [27 x i8] c"tegra210_sfc_regmap_config\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3528, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3565, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3568, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"tegra210_sfc_cmpnt\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3461, i32 46 }
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"tegra210_sfc_dais\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3360, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3578, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [26 x i8] c"tegra210_sfc_reg_defaults\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 27, i32 33 }
@___asan_gen_.226 = private unnamed_addr constant [22 x i8] c"tegra210_sfc_controls\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3446, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"tegra210_sfc_routes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3422, i32 40 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3447, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [30 x i8] c"tegra210_sfc_stereo_conv_enum\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3436, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3450, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [28 x i8] c"tegra210_sfc_mono_conv_enum\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3441, i32 30 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3453, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3456, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [30 x i8] c"tegra210_sfc_stereo_conv_text\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3428, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3429, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3429, i32 9 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3429, i32 16 }
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"tegra210_sfc_mono_conv_text\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3432, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3433, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3433, i32 10 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3408, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3409, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [21 x i8] c"tegra210_sfc_widgets\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3407, i32 41 }
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"coef_addr_table\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2849, i32 13 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3076, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"coef_24to88\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1130, i32 12 }
@___asan_gen_.295 = private unnamed_addr constant [13 x i8] c"coef_48to176\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1917, i32 12 }
@___asan_gen_.298 = private unnamed_addr constant [11 x i8] c"coef_8to11\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 52, i32 12 }
@___asan_gen_.301 = private unnamed_addr constant [11 x i8] c"coef_8to16\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 84, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant [11 x i8] c"coef_8to22\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 93, i32 12 }
@___asan_gen_.307 = private unnamed_addr constant [11 x i8] c"coef_8to24\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 125, i32 12 }
@___asan_gen_.310 = private unnamed_addr constant [11 x i8] c"coef_8to32\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 137, i32 12 }
@___asan_gen_.313 = private unnamed_addr constant [11 x i8] c"coef_8to44\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 152, i32 12 }
@___asan_gen_.316 = private unnamed_addr constant [11 x i8] c"coef_8to48\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 181, i32 12 }
@___asan_gen_.319 = private unnamed_addr constant [11 x i8] c"coef_8to88\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 199, i32 12 }
@___asan_gen_.322 = private unnamed_addr constant [11 x i8] c"coef_8to96\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 231, i32 12 }
@___asan_gen_.325 = private unnamed_addr constant [11 x i8] c"coef_11to8\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 252, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"coef_11to16\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 284, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant [12 x i8] c"coef_11to22\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 310, i32 12 }
@___asan_gen_.334 = private unnamed_addr constant [12 x i8] c"coef_11to24\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 319, i32 12 }
@___asan_gen_.337 = private unnamed_addr constant [12 x i8] c"coef_11to32\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 345, i32 12 }
@___asan_gen_.340 = private unnamed_addr constant [12 x i8] c"coef_11to44\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 377, i32 12 }
@___asan_gen_.343 = private unnamed_addr constant [12 x i8] c"coef_11to48\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 392, i32 12 }
@___asan_gen_.346 = private unnamed_addr constant [12 x i8] c"coef_11to88\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 424, i32 12 }
@___asan_gen_.349 = private unnamed_addr constant [12 x i8] c"coef_11to96\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 445, i32 12 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"coef_16to8\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 477, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant [12 x i8] c"coef_16to11\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 486, i32 12 }
@___asan_gen_.358 = private unnamed_addr constant [12 x i8] c"coef_16to22\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 513, i32 12 }
@___asan_gen_.361 = private unnamed_addr constant [12 x i8] c"coef_16to24\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 545, i32 12 }
@___asan_gen_.364 = private unnamed_addr constant [12 x i8] c"coef_16to32\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 566, i32 12 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"coef_16to44\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 575, i32 12 }
@___asan_gen_.370 = private unnamed_addr constant [12 x i8] c"coef_16to48\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 609, i32 12 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"coef_16to88\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 621, i32 12 }
@___asan_gen_.376 = private unnamed_addr constant [12 x i8] c"coef_16to96\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 647, i32 12 }
@___asan_gen_.379 = private unnamed_addr constant [13 x i8] c"coef_16to176\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 662, i32 12 }
@___asan_gen_.382 = private unnamed_addr constant [13 x i8] c"coef_16to192\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 694, i32 12 }
@___asan_gen_.385 = private unnamed_addr constant [11 x i8] c"coef_22to8\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 715, i32 12 }
@___asan_gen_.388 = private unnamed_addr constant [12 x i8] c"coef_22to11\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 741, i32 12 }
@___asan_gen_.391 = private unnamed_addr constant [12 x i8] c"coef_22to16\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 750, i32 12 }
@___asan_gen_.394 = private unnamed_addr constant [12 x i8] c"coef_22to24\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 782, i32 12 }
@___asan_gen_.397 = private unnamed_addr constant [12 x i8] c"coef_22to32\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 814, i32 12 }
@___asan_gen_.400 = private unnamed_addr constant [12 x i8] c"coef_22to44\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 840, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant [12 x i8] c"coef_22to48\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 849, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant [12 x i8] c"coef_22to88\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 875, i32 12 }
@___asan_gen_.409 = private unnamed_addr constant [12 x i8] c"coef_22to96\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 890, i32 12 }
@___asan_gen_.412 = private unnamed_addr constant [13 x i8] c"coef_22to176\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 922, i32 12 }
@___asan_gen_.415 = private unnamed_addr constant [13 x i8] c"coef_22to192\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 943, i32 12 }
@___asan_gen_.418 = private unnamed_addr constant [11 x i8] c"coef_24to8\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 975, i32 12 }
@___asan_gen_.421 = private unnamed_addr constant [12 x i8] c"coef_24to11\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 987, i32 12 }
@___asan_gen_.424 = private unnamed_addr constant [12 x i8] c"coef_24to16\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1014, i32 12 }
@___asan_gen_.427 = private unnamed_addr constant [12 x i8] c"coef_24to22\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1035, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant [12 x i8] c"coef_24to32\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1068, i32 12 }
@___asan_gen_.433 = private unnamed_addr constant [12 x i8] c"coef_24to44\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1089, i32 12 }
@___asan_gen_.436 = private unnamed_addr constant [12 x i8] c"coef_24to48\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1121, i32 12 }
@___asan_gen_.439 = private unnamed_addr constant [12 x i8] c"coef_24to96\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1168, i32 12 }
@___asan_gen_.442 = private unnamed_addr constant [13 x i8] c"coef_24to176\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1183, i32 12 }
@___asan_gen_.445 = private unnamed_addr constant [13 x i8] c"coef_24to192\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1215, i32 12 }
@___asan_gen_.448 = private unnamed_addr constant [11 x i8] c"coef_32to8\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1236, i32 12 }
@___asan_gen_.451 = private unnamed_addr constant [12 x i8] c"coef_32to11\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1251, i32 12 }
@___asan_gen_.454 = private unnamed_addr constant [12 x i8] c"coef_32to16\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1277, i32 12 }
@___asan_gen_.457 = private unnamed_addr constant [12 x i8] c"coef_32to22\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1286, i32 12 }
@___asan_gen_.460 = private unnamed_addr constant [12 x i8] c"coef_32to24\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1313, i32 12 }
@___asan_gen_.463 = private unnamed_addr constant [12 x i8] c"coef_32to44\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1328, i32 12 }
@___asan_gen_.466 = private unnamed_addr constant [12 x i8] c"coef_32to48\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1360, i32 12 }
@___asan_gen_.469 = private unnamed_addr constant [12 x i8] c"coef_32to88\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1381, i32 12 }
@___asan_gen_.472 = private unnamed_addr constant [12 x i8] c"coef_32to96\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1413, i32 12 }
@___asan_gen_.475 = private unnamed_addr constant [13 x i8] c"coef_32to176\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1425, i32 12 }
@___asan_gen_.478 = private unnamed_addr constant [13 x i8] c"coef_32to192\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1451, i32 12 }
@___asan_gen_.481 = private unnamed_addr constant [11 x i8] c"coef_44to8\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1466, i32 12 }
@___asan_gen_.484 = private unnamed_addr constant [12 x i8] c"coef_44to11\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1497, i32 12 }
@___asan_gen_.487 = private unnamed_addr constant [12 x i8] c"coef_44to16\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1512, i32 12 }
@___asan_gen_.490 = private unnamed_addr constant [12 x i8] c"coef_44to22\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1543, i32 12 }
@___asan_gen_.493 = private unnamed_addr constant [12 x i8] c"coef_44to24\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1552, i32 12 }
@___asan_gen_.496 = private unnamed_addr constant [12 x i8] c"coef_44to32\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1578, i32 12 }
@___asan_gen_.499 = private unnamed_addr constant [12 x i8] c"coef_44to48\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1610, i32 12 }
@___asan_gen_.502 = private unnamed_addr constant [12 x i8] c"coef_44to88\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1642, i32 12 }
@___asan_gen_.505 = private unnamed_addr constant [12 x i8] c"coef_44to96\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1651, i32 12 }
@___asan_gen_.508 = private unnamed_addr constant [13 x i8] c"coef_44to176\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1677, i32 12 }
@___asan_gen_.511 = private unnamed_addr constant [13 x i8] c"coef_44to192\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1692, i32 12 }
@___asan_gen_.514 = private unnamed_addr constant [11 x i8] c"coef_48to8\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1724, i32 12 }
@___asan_gen_.517 = private unnamed_addr constant [12 x i8] c"coef_48to11\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1742, i32 12 }
@___asan_gen_.520 = private unnamed_addr constant [12 x i8] c"coef_48to16\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1774, i32 12 }
@___asan_gen_.523 = private unnamed_addr constant [12 x i8] c"coef_48to22\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1786, i32 12 }
@___asan_gen_.526 = private unnamed_addr constant [12 x i8] c"coef_48to24\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1813, i32 12 }
@___asan_gen_.529 = private unnamed_addr constant [12 x i8] c"coef_48to32\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1822, i32 12 }
@___asan_gen_.532 = private unnamed_addr constant [12 x i8] c"coef_48to44\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1843, i32 12 }
@___asan_gen_.535 = private unnamed_addr constant [12 x i8] c"coef_48to88\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1876, i32 12 }
@___asan_gen_.538 = private unnamed_addr constant [12 x i8] c"coef_48to96\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1908, i32 12 }
@___asan_gen_.541 = private unnamed_addr constant [13 x i8] c"coef_48to192\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1955, i32 12 }
@___asan_gen_.544 = private unnamed_addr constant [11 x i8] c"coef_88to8\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 1970, i32 12 }
@___asan_gen_.547 = private unnamed_addr constant [12 x i8] c"coef_88to11\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2002, i32 12 }
@___asan_gen_.550 = private unnamed_addr constant [12 x i8] c"coef_88to16\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2023, i32 12 }
@___asan_gen_.553 = private unnamed_addr constant [12 x i8] c"coef_88to22\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2049, i32 12 }
@___asan_gen_.556 = private unnamed_addr constant [12 x i8] c"coef_88to24\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2064, i32 12 }
@___asan_gen_.559 = private unnamed_addr constant [12 x i8] c"coef_88to32\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2090, i32 12 }
@___asan_gen_.562 = private unnamed_addr constant [12 x i8] c"coef_88to44\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2116, i32 12 }
@___asan_gen_.565 = private unnamed_addr constant [12 x i8] c"coef_88to48\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2125, i32 12 }
@___asan_gen_.568 = private unnamed_addr constant [12 x i8] c"coef_88to96\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2151, i32 12 }
@___asan_gen_.571 = private unnamed_addr constant [13 x i8] c"coef_88to176\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2171, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant [13 x i8] c"coef_88to192\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2180, i32 12 }
@___asan_gen_.577 = private unnamed_addr constant [11 x i8] c"coef_96to8\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2206, i32 12 }
@___asan_gen_.580 = private unnamed_addr constant [12 x i8] c"coef_96to11\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2227, i32 12 }
@___asan_gen_.583 = private unnamed_addr constant [12 x i8] c"coef_96to16\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2259, i32 12 }
@___asan_gen_.586 = private unnamed_addr constant [12 x i8] c"coef_96to22\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2274, i32 12 }
@___asan_gen_.589 = private unnamed_addr constant [12 x i8] c"coef_96to24\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2306, i32 12 }
@___asan_gen_.592 = private unnamed_addr constant [12 x i8] c"coef_96to32\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2321, i32 12 }
@___asan_gen_.595 = private unnamed_addr constant [12 x i8] c"coef_96to44\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2333, i32 12 }
@___asan_gen_.598 = private unnamed_addr constant [12 x i8] c"coef_96to48\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2360, i32 12 }
@___asan_gen_.601 = private unnamed_addr constant [12 x i8] c"coef_96to88\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2369, i32 12 }
@___asan_gen_.604 = private unnamed_addr constant [13 x i8] c"coef_96to176\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2396, i32 12 }
@___asan_gen_.607 = private unnamed_addr constant [13 x i8] c"coef_96to192\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2429, i32 12 }
@___asan_gen_.610 = private unnamed_addr constant [13 x i8] c"coef_176to16\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2439, i32 12 }
@___asan_gen_.613 = private unnamed_addr constant [13 x i8] c"coef_176to22\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2471, i32 12 }
@___asan_gen_.616 = private unnamed_addr constant [13 x i8] c"coef_176to24\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2492, i32 12 }
@___asan_gen_.619 = private unnamed_addr constant [13 x i8] c"coef_176to32\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2524, i32 12 }
@___asan_gen_.622 = private unnamed_addr constant [13 x i8] c"coef_176to44\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2550, i32 12 }
@___asan_gen_.625 = private unnamed_addr constant [13 x i8] c"coef_176to48\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2565, i32 12 }
@___asan_gen_.628 = private unnamed_addr constant [13 x i8] c"coef_176to88\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2591, i32 12 }
@___asan_gen_.631 = private unnamed_addr constant [13 x i8] c"coef_176to96\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2600, i32 12 }
@___asan_gen_.634 = private unnamed_addr constant [14 x i8] c"coef_176to192\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2627, i32 12 }
@___asan_gen_.637 = private unnamed_addr constant [13 x i8] c"coef_192to16\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2647, i32 12 }
@___asan_gen_.640 = private unnamed_addr constant [13 x i8] c"coef_192to22\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2668, i32 12 }
@___asan_gen_.643 = private unnamed_addr constant [13 x i8] c"coef_192to24\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2700, i32 12 }
@___asan_gen_.646 = private unnamed_addr constant [13 x i8] c"coef_192to32\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2721, i32 12 }
@___asan_gen_.649 = private unnamed_addr constant [13 x i8] c"coef_192to44\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2736, i32 12 }
@___asan_gen_.652 = private unnamed_addr constant [13 x i8] c"coef_192to48\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2768, i32 12 }
@___asan_gen_.655 = private unnamed_addr constant [13 x i8] c"coef_192to88\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2783, i32 12 }
@___asan_gen_.658 = private unnamed_addr constant [13 x i8] c"coef_192to96\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2809, i32 12 }
@___asan_gen_.661 = private unnamed_addr constant [14 x i8] c"coef_192to176\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 2819, i32 12 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3424, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3425, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3362, i32 11 }
@___asan_gen_.697 = private unnamed_addr constant [24 x i8] c"tegra210_sfc_in_dai_ops\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3351, i32 37 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3384, i32 11 }
@___asan_gen_.703 = private unnamed_addr constant [25 x i8] c"tegra210_sfc_out_dai_ops\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3356, i32 37 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3182, i32 3 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3206, i32 3 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3166, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.740 = private constant [34 x i8] c"../sound/soc/tegra/tegra210_sfc.c\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.740, i32 3230, i32 3 }
@llvm.compiler.used = appending global [204 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_tegra210_sfc_driver_exit, ptr @__initcall__kmod_snd_soc_tegra210_sfc__239_3610_tegra210_sfc_driver_init6, ptr @tegra210_sfc_driver_exit, ptr @tegra210_sfc_in_hw_params._entry, ptr @tegra210_sfc_in_hw_params._entry_ptr, ptr @tegra210_sfc_out_hw_params._entry, ptr @tegra210_sfc_out_hw_params._entry_ptr, ptr @tegra210_sfc_platform_probe._entry, ptr @tegra210_sfc_platform_probe._entry.7, ptr @tegra210_sfc_platform_probe._entry_ptr, ptr @tegra210_sfc_platform_probe._entry_ptr.9, ptr @tegra210_sfc_rate_to_idx._entry, ptr @tegra210_sfc_rate_to_idx._entry_ptr, ptr @tegra210_sfc_startup._entry, ptr @tegra210_sfc_startup._entry_ptr, ptr @tegra210_sfc_write_coeff_ram._entry, ptr @tegra210_sfc_write_coeff_ram._entry_ptr, ptr @tegra210_sfc_driver, ptr @.str, ptr @tegra210_sfc_of_match, ptr @tegra210_sfc_pm_ops, ptr @tegra210_sfc_platform_probe._key, ptr @tegra210_sfc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra210_sfc_cmpnt, ptr @tegra210_sfc_dais, ptr @.str.8, ptr @tegra210_sfc_reg_defaults, ptr @tegra210_sfc_controls, ptr @tegra210_sfc_routes, ptr @.str.10, ptr @tegra210_sfc_stereo_conv_enum, ptr @.str.11, ptr @tegra210_sfc_mono_conv_enum, ptr @.str.12, ptr @.str.13, ptr @tegra210_sfc_stereo_conv_text, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tegra210_sfc_mono_conv_text, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tegra210_sfc_widgets, ptr @coef_addr_table, ptr @.str.22, ptr @.str.23, ptr @coef_24to88, ptr @coef_48to176, ptr @coef_8to11, ptr @coef_8to16, ptr @coef_8to22, ptr @coef_8to24, ptr @coef_8to32, ptr @coef_8to44, ptr @coef_8to48, ptr @coef_8to88, ptr @coef_8to96, ptr @coef_11to8, ptr @coef_11to16, ptr @coef_11to22, ptr @coef_11to24, ptr @coef_11to32, ptr @coef_11to44, ptr @coef_11to48, ptr @coef_11to88, ptr @coef_11to96, ptr @coef_16to8, ptr @coef_16to11, ptr @coef_16to22, ptr @coef_16to24, ptr @coef_16to32, ptr @coef_16to44, ptr @coef_16to48, ptr @coef_16to88, ptr @coef_16to96, ptr @coef_16to176, ptr @coef_16to192, ptr @coef_22to8, ptr @coef_22to11, ptr @coef_22to16, ptr @coef_22to24, ptr @coef_22to32, ptr @coef_22to44, ptr @coef_22to48, ptr @coef_22to88, ptr @coef_22to96, ptr @coef_22to176, ptr @coef_22to192, ptr @coef_24to8, ptr @coef_24to11, ptr @coef_24to16, ptr @coef_24to22, ptr @coef_24to32, ptr @coef_24to44, ptr @coef_24to48, ptr @coef_24to96, ptr @coef_24to176, ptr @coef_24to192, ptr @coef_32to8, ptr @coef_32to11, ptr @coef_32to16, ptr @coef_32to22, ptr @coef_32to24, ptr @coef_32to44, ptr @coef_32to48, ptr @coef_32to88, ptr @coef_32to96, ptr @coef_32to176, ptr @coef_32to192, ptr @coef_44to8, ptr @coef_44to11, ptr @coef_44to16, ptr @coef_44to22, ptr @coef_44to24, ptr @coef_44to32, ptr @coef_44to48, ptr @coef_44to88, ptr @coef_44to96, ptr @coef_44to176, ptr @coef_44to192, ptr @coef_48to8, ptr @coef_48to11, ptr @coef_48to16, ptr @coef_48to22, ptr @coef_48to24, ptr @coef_48to32, ptr @coef_48to44, ptr @coef_48to88, ptr @coef_48to96, ptr @coef_48to192, ptr @coef_88to8, ptr @coef_88to11, ptr @coef_88to16, ptr @coef_88to22, ptr @coef_88to24, ptr @coef_88to32, ptr @coef_88to44, ptr @coef_88to48, ptr @coef_88to96, ptr @coef_88to176, ptr @coef_88to192, ptr @coef_96to8, ptr @coef_96to11, ptr @coef_96to16, ptr @coef_96to22, ptr @coef_96to24, ptr @coef_96to32, ptr @coef_96to44, ptr @coef_96to48, ptr @coef_96to88, ptr @coef_96to176, ptr @coef_96to192, ptr @coef_176to16, ptr @coef_176to22, ptr @coef_176to24, ptr @coef_176to32, ptr @coef_176to44, ptr @coef_176to48, ptr @coef_176to88, ptr @coef_176to96, ptr @coef_176to192, ptr @coef_192to16, ptr @coef_192to22, ptr @coef_192to24, ptr @coef_192to32, ptr @coef_192to44, ptr @coef_192to48, ptr @coef_192to88, ptr @coef_192to96, ptr @coef_192to176, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @tegra210_sfc_in_dai_ops, ptr @.str.157, ptr @tegra210_sfc_out_dai_ops, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165], section "llvm.metadata"
@0 = internal global [190 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_platform_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_reg_defaults to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_routes to i32), i32 676, i32 864, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_stereo_conv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_mono_conv_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_stereo_conv_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_mono_conv_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_addr_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_write_coeff_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_8to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_11to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_16to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_22to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_24to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_32to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_44to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_48to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_88to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to11 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_96to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_176to192 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to16 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to32 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to44 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to48 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to88 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to96 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_192to176 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_in_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_out_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_in_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_rate_to_idx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_sfc_out_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra210_sfc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_sfc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra210_sfc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #8
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
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @tegra210_sfc_regmap_config, ptr noundef nonnull @tegra210_sfc_platform_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.tegra210_sfc, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i42 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @regcache_cache_only(ptr noundef %call7, i1 noundef zeroext true) #8
  %call15 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tegra210_sfc_cmpnt, ptr noundef nonnull @tegra210_sfc_dais, i32 noundef 2) #8
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
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end20, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_platform_remove(ptr noundef %pdev) #2 align 64 {
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_sfc_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 188, label %entry.return_crit_edge
    i32 189, label %entry.return_crit_edge4
    i32 190, label %entry.return_crit_edge5
    i32 191, label %entry.return_crit_edge6
    i32 192, label %entry.return_crit_edge7
    i32 193, label %entry.return_crit_edge8
    i32 194, label %entry.return_crit_edge9
    i32 195, label %entry.return_crit_edge10
    i32 196, label %entry.return_crit_edge11
    i32 128, label %entry.return_crit_edge12
    i32 129, label %entry.return_crit_edge13
    i32 130, label %entry.return_crit_edge14
    i32 131, label %entry.return_crit_edge15
    i32 132, label %entry.return_crit_edge16
    i32 133, label %entry.return_crit_edge17
    i32 134, label %entry.return_crit_edge18
    i32 135, label %entry.return_crit_edge19
    i32 136, label %entry.return_crit_edge20
    i32 84, label %entry.return_crit_edge21
    i32 85, label %entry.return_crit_edge22
    i32 86, label %entry.return_crit_edge23
    i32 87, label %entry.return_crit_edge24
    i32 88, label %entry.return_crit_edge25
    i32 89, label %entry.return_crit_edge26
    i32 90, label %entry.return_crit_edge27
    i32 91, label %entry.return_crit_edge28
    i32 92, label %entry.return_crit_edge29
    i32 93, label %entry.return_crit_edge30
    i32 94, label %entry.return_crit_edge31
    i32 95, label %entry.return_crit_edge32
    i32 96, label %entry.return_crit_edge33
    i32 97, label %entry.return_crit_edge34
    i32 98, label %entry.return_crit_edge35
    i32 99, label %entry.return_crit_edge36
    i32 100, label %entry.return_crit_edge37
    i32 20, label %entry.return_crit_edge38
    i32 21, label %entry.return_crit_edge39
    i32 22, label %entry.return_crit_edge40
    i32 23, label %entry.return_crit_edge41
    i32 24, label %entry.return_crit_edge42
    i32 25, label %entry.return_crit_edge43
    i32 26, label %entry.return_crit_edge44
    i32 27, label %entry.return_crit_edge45
    i32 28, label %entry.return_crit_edge46
    i32 29, label %entry.return_crit_edge47
    i32 30, label %entry.return_crit_edge48
    i32 31, label %entry.return_crit_edge49
    i32 32, label %entry.return_crit_edge50
    i32 33, label %entry.return_crit_edge51
    i32 34, label %entry.return_crit_edge52
    i32 35, label %entry.return_crit_edge53
    i32 36, label %entry.return_crit_edge54
  ]

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_sfc_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %reg, label %sw.default [
    i32 188, label %entry.return_crit_edge
    i32 189, label %entry.return_crit_edge4
    i32 190, label %entry.return_crit_edge5
    i32 191, label %entry.return_crit_edge6
    i32 192, label %entry.return_crit_edge7
    i32 193, label %entry.return_crit_edge8
    i32 194, label %entry.return_crit_edge9
    i32 195, label %entry.return_crit_edge10
    i32 196, label %entry.return_crit_edge11
    i32 128, label %entry.return_crit_edge12
    i32 129, label %entry.return_crit_edge13
    i32 130, label %entry.return_crit_edge14
    i32 131, label %entry.return_crit_edge15
    i32 132, label %entry.return_crit_edge16
    i32 133, label %entry.return_crit_edge17
    i32 134, label %entry.return_crit_edge18
    i32 135, label %entry.return_crit_edge19
    i32 136, label %entry.return_crit_edge20
    i32 137, label %entry.return_crit_edge21
    i32 138, label %entry.return_crit_edge22
    i32 139, label %entry.return_crit_edge23
    i32 140, label %entry.return_crit_edge24
    i32 141, label %entry.return_crit_edge25
    i32 142, label %entry.return_crit_edge26
    i32 143, label %entry.return_crit_edge27
    i32 144, label %entry.return_crit_edge28
    i32 76, label %entry.return_crit_edge29
    i32 77, label %entry.return_crit_edge30
    i32 78, label %entry.return_crit_edge31
    i32 79, label %entry.return_crit_edge32
    i32 80, label %entry.return_crit_edge33
    i32 81, label %entry.return_crit_edge34
    i32 82, label %entry.return_crit_edge35
    i32 83, label %entry.return_crit_edge36
    i32 84, label %entry.return_crit_edge37
    i32 85, label %entry.return_crit_edge38
    i32 86, label %entry.return_crit_edge39
    i32 87, label %entry.return_crit_edge40
    i32 88, label %entry.return_crit_edge41
    i32 89, label %entry.return_crit_edge42
    i32 90, label %entry.return_crit_edge43
    i32 91, label %entry.return_crit_edge44
    i32 92, label %entry.return_crit_edge45
    i32 93, label %entry.return_crit_edge46
    i32 94, label %entry.return_crit_edge47
    i32 95, label %entry.return_crit_edge48
    i32 96, label %entry.return_crit_edge49
    i32 97, label %entry.return_crit_edge50
    i32 98, label %entry.return_crit_edge51
    i32 99, label %entry.return_crit_edge52
    i32 100, label %entry.return_crit_edge53
    i32 12, label %entry.return_crit_edge54
    i32 13, label %entry.return_crit_edge55
    i32 14, label %entry.return_crit_edge56
    i32 15, label %entry.return_crit_edge57
    i32 16, label %entry.return_crit_edge58
    i32 17, label %entry.return_crit_edge59
    i32 18, label %entry.return_crit_edge60
    i32 19, label %entry.return_crit_edge61
    i32 20, label %entry.return_crit_edge62
    i32 21, label %entry.return_crit_edge63
    i32 22, label %entry.return_crit_edge64
    i32 23, label %entry.return_crit_edge65
    i32 24, label %entry.return_crit_edge66
    i32 25, label %entry.return_crit_edge67
    i32 26, label %entry.return_crit_edge68
    i32 27, label %entry.return_crit_edge69
    i32 28, label %entry.return_crit_edge70
    i32 29, label %entry.return_crit_edge71
    i32 30, label %entry.return_crit_edge72
    i32 31, label %entry.return_crit_edge73
    i32 32, label %entry.return_crit_edge74
    i32 33, label %entry.return_crit_edge75
    i32 34, label %entry.return_crit_edge76
    i32 35, label %entry.return_crit_edge77
    i32 36, label %entry.return_crit_edge78
  ]

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_sfc_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %reg, label %sw.default [
    i32 12, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge1
    i32 24, label %entry.return_crit_edge2
    i32 76, label %entry.return_crit_edge3
    i32 80, label %entry.return_crit_edge4
    i32 88, label %entry.return_crit_edge5
    i32 132, label %entry.return_crit_edge6
    i32 140, label %entry.return_crit_edge7
    i32 144, label %entry.return_crit_edge8
    i32 192, label %entry.return_crit_edge9
    i32 196, label %entry.return_crit_edge10
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_sfc_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 196, i32 %reg)
  %cond = icmp eq i32 %reg, 196
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_iget_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %stereo_to_mono = getelementptr inbounds %struct.tegra210_sfc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %stereo_to_mono to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stereo_to_mono, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_iput_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %stereo_to_mono = getelementptr inbounds %struct.tegra210_sfc, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %stereo_to_mono to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stereo_to_mono, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %stereo_to_mono to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %stereo_to_mono, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_iget_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_iput_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_oget_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %arrayidx = getelementptr %struct.tegra210_sfc, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_oput_stereo_to_mono(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %arrayidx3 = getelementptr %struct.tegra210_sfc, ptr %5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_oget_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %arrayidx = getelementptr [2 x i32], ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_sfc_oput_mono_to_stereo(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %arrayidx3 = getelementptr [2 x i32], ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_init(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %srate_in.i = getelementptr inbounds %struct.tegra210_sfc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %srate_in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %srate_in.i, align 4
  %srate_out.i = getelementptr inbounds %struct.tegra210_sfc, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %srate_out.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %srate_out.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %entry.tegra210_sfc_write_coeff_ram.exit_crit_edge, label %if.end.i

entry.tegra210_sfc_write_coeff_ram.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_sfc_write_coeff_ram.exit

if.end.i:                                         ; preds = %entry
  %arrayidx3.i = getelementptr [12 x [12 x ptr]], ptr @coef_addr_table, i32 0, i32 %7, i32 %9
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %7, i32 noundef %9) #11
  %12 = ptrtoint ptr %11 to i32
  %spec.select.i25.i = select i1 %cmp.i.i, i32 %12, i32 0
  br label %tegra210_sfc_write_coeff_ram.exit

if.end10.i:                                       ; preds = %if.end.i
  %regmap.i = getelementptr inbounds %struct.tegra210_sfc, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 192, i32 noundef 28672) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i
  %i.05.i.i = phi i32 [ 0, %if.end10.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %i.05.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 196, i32 noundef %16) #8
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %tegra210_sfc_write_ram.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

tegra210_sfc_write_ram.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 188, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra210_sfc_write_coeff_ram.exit

tegra210_sfc_write_coeff_ram.exit:                ; preds = %tegra210_sfc_write_ram.exit.i, %do.end.i, %entry.tegra210_sfc_write_coeff_ram.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.select.i25.i, %do.end.i ], [ 0, %tegra210_sfc_write_ram.exit.i ], [ 0, %entry.tegra210_sfc_write_coeff_ram.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_sfc, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 188, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !383
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 132, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call1.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call1.i, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 3150) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1050.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 132, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1050.i)
  %tobool.not51.i = icmp eq i32 %call1050.i, 0
  br i1 %tobool.not51.i, label %entry.lor.lhs.false.i_crit_edge, label %entry.tegra210_sfc_soft_reset.exit_crit_edge

entry.tegra210_sfc_soft_reset.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_sfc_soft_reset.exit

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then23.i.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call15.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 132, ptr noundef nonnull %val.i) #8
  %tobool.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool.not.i, label %if.then23.i.lor.lhs.false.i_crit_edge, label %if.then23.i.tegra210_sfc_soft_reset.exit_crit_edge

if.then23.i.tegra210_sfc_soft_reset.exit_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_sfc_soft_reset.exit

if.then23.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call20.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 132, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool25.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool25.not.i, label %for.end.i.lor.rhs.i_crit_edge, label %for.end.i.tegra210_sfc_soft_reset.exit_crit_edge

for.end.i.tegra210_sfc_soft_reset.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_sfc_soft_reset.exit

for.end.i.lor.rhs.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.end.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  %and26.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br i1 %tobool27.not.i, label %lor.rhs.i.cleanup_crit_edge, label %lor.rhs.i.do.end_crit_edge

lor.rhs.i.do.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tegra210_sfc_soft_reset.exit:                     ; preds = %for.end.i.tegra210_sfc_soft_reset.exit_crit_edge, %if.then23.i.tegra210_sfc_soft_reset.exit_crit_edge, %entry.tegra210_sfc_soft_reset.exit_crit_edge
  %tobool25.not43.i = phi i32 [ %call20.i, %for.end.i.tegra210_sfc_soft_reset.exit_crit_edge ], [ %call1050.i, %entry.tegra210_sfc_soft_reset.exit_crit_edge ], [ %call10.i, %if.then23.i.tegra210_sfc_soft_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool25.not43.i)
  %cmp = icmp slt i32 %tobool25.not43.i, 0
  br i1 %cmp, label %tegra210_sfc_soft_reset.exit.do.end_crit_edge, label %tegra210_sfc_soft_reset.exit.cleanup_crit_edge

tegra210_sfc_soft_reset.exit.cleanup_crit_edge:   ; preds = %tegra210_sfc_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

tegra210_sfc_soft_reset.exit.do.end_crit_edge:    ; preds = %tegra210_sfc_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra210_sfc_soft_reset.exit.do.end_crit_edge, %lor.rhs.i.do.end_crit_edge
  %tobool25.not43.i10 = phi i32 [ %tobool25.not43.i, %tegra210_sfc_soft_reset.exit.do.end_crit_edge ], [ -110, %lor.rhs.i.do.end_crit_edge ]
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.159, i32 noundef %tobool25.not43.i10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %tegra210_sfc_soft_reset.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %tobool25.not43.i10, %do.end ], [ 0, %tegra210_sfc_soft_reset.exit.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_in_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %srate_in = getelementptr inbounds %struct.tegra210_sfc, ptr %3, i32 0, i32 3
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %5, label %tegra210_sfc_rate_to_idx.exit.thread [
    i32 8000, label %entry.if.end_crit_edge
    i32 11025, label %if.then.fold.split.i
    i32 16000, label %if.then.fold.split9.i
    i32 22050, label %if.then.fold.split10.i
    i32 24000, label %if.then.fold.split11.i
    i32 32000, label %if.then.fold.split12.i
    i32 44100, label %if.then.fold.split13.i
    i32 48000, label %if.then.fold.split14.i
    i32 88200, label %if.then.fold.split15.i
    i32 96000, label %if.then.fold.split16.i
    i32 176400, label %if.then.fold.split17.i
    i32 192000, label %if.then.fold.split18.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

tegra210_sfc_rate_to_idx.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.162, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.if.end_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ]
  %7 = ptrtoint ptr %srate_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.07.lcssa.i, ptr %srate_in, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i14.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.params_format.exit.i_crit_edge

if.end.params_format.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.do.end_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i.do.end_crit_edge:                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.end.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %if.end.params_format.exit.i_crit_edge ], [ %13, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !384
  %add.i.i.i = or i32 %14, %i.09.lcssa.i.i.i
  %15 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %add.i.i.i, label %params_format.exit.i.do.end_crit_edge [
    i32 2, label %params_format.exit.i.if.end7_crit_edge
    i32 10, label %sw.bb2.i
  ]

params_format.exit.i.if.end7_crit_edge:           ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

params_format.exit.i.do.end_crit_edge:            ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb2.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %params_format.exit.i.do.end_crit_edge, %for.inc.i.i.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.160, i32 noundef -95) #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2.i, %params_format.exit.i.if.end7_crit_edge
  %audio_bits.0.i = phi i32 [ 28672, %sw.bb2.i ], [ 12288, %params_format.exit.i.if.end7_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra210_sfc, ptr %3, i32 0, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %regmap.i = getelementptr inbounds %struct.tegra210_sfc, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %sub.i.i = shl i32 %9, 20
  %shl1.i.i = add i32 %sub.i.i, -1048576
  %sub2.i.i = shl i32 %9, 16
  %shl3.i.i = add i32 %sub2.i.i, -65536
  %shl11.i.i = shl i32 %17, 4
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %or6.i.i = or i32 %or4.i.i, %audio_bits.0.i
  %or8.i.i = or i32 %or6.i.i, %shl11.i.i
  %or12.i.i = or i32 %or8.i.i, %19
  %or18.i.i = or i32 %or12.i.i, 1792
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 32, i32 noundef 1073741819, i32 noundef %or18.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %24 = ptrtoint ptr %srate_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %srate_in, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 36, i32 noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %tegra210_sfc_rate_to_idx.exit.thread
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end7 ], [ -95, %tegra210_sfc_rate_to_idx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_out_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %srate_out = getelementptr inbounds %struct.tegra210_sfc, ptr %3, i32 0, i32 2
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %5, label %tegra210_sfc_rate_to_idx.exit.thread [
    i32 8000, label %entry.if.end_crit_edge
    i32 11025, label %if.then.fold.split.i
    i32 16000, label %if.then.fold.split9.i
    i32 22050, label %if.then.fold.split10.i
    i32 24000, label %if.then.fold.split11.i
    i32 32000, label %if.then.fold.split12.i
    i32 44100, label %if.then.fold.split13.i
    i32 48000, label %if.then.fold.split14.i
    i32 88200, label %if.then.fold.split15.i
    i32 96000, label %if.then.fold.split16.i
    i32 176400, label %if.then.fold.split17.i
    i32 192000, label %if.then.fold.split18.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

tegra210_sfc_rate_to_idx.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.162, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.if.end_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ]
  %7 = ptrtoint ptr %srate_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.07.lcssa.i, ptr %srate_out, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i14.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.params_format.exit.i_crit_edge

if.end.params_format.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.do.end_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i.do.end_crit_edge:                   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %if.end.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %if.end.params_format.exit.i_crit_edge ], [ %13, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !384
  %add.i.i.i = or i32 %14, %i.09.lcssa.i.i.i
  %15 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %add.i.i.i, label %params_format.exit.i.do.end_crit_edge [
    i32 2, label %params_format.exit.i.if.end7_crit_edge
    i32 10, label %sw.bb2.i
  ]

params_format.exit.i.if.end7_crit_edge:           ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

params_format.exit.i.do.end_crit_edge:            ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

sw.bb2.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %params_format.exit.i.do.end_crit_edge, %for.inc.i.i.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.164, i32 noundef -95) #11
  br label %cleanup

if.end7:                                          ; preds = %sw.bb2.i, %params_format.exit.i.if.end7_crit_edge
  %audio_bits.0.i = phi i32 [ 28672, %sw.bb2.i ], [ 12288, %params_format.exit.i.if.end7_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra210_sfc, ptr %3, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %arrayidx4.i = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %regmap.i = getelementptr inbounds %struct.tegra210_sfc, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %sub.i.i = shl i32 %9, 20
  %shl1.i.i = add i32 %sub.i.i, -1048576
  %sub2.i.i = shl i32 %9, 16
  %shl3.i.i = add i32 %sub2.i.i, -65536
  %shl11.i.i = shl i32 %17, 4
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %or6.i.i = or i32 %or4.i.i, %audio_bits.0.i
  %or8.i.i = or i32 %or6.i.i, %shl11.i.i
  %or12.i.i = or i32 %or8.i.i, %19
  %or18.i.i = or i32 %or12.i.i, 1792
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 96, i32 noundef 1073741819, i32 noundef %or18.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %24 = ptrtoint ptr %srate_out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %srate_out, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 100, i32 noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %tegra210_sfc_rate_to_idx.exit.thread
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.end7 ], [ -95, %tegra210_sfc_rate_to_idx.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_sfc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_sfc_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_sfc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 190)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !327, !328, !329, !330, !331, !333, !334, !335, !336, !338, !340, !342, !344, !346, !348, !349, !350, !351, !353, !354, !355, !356, !358, !359, !360, !361, !363, !365, !367, !368, !369, !370, !372}
!llvm.module.flags = !{!374, !375, !376, !377, !378, !379, !380, !381}
!llvm.ident = !{!382}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra210_sfc__239_3610_tegra210_sfc_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra210_sfc__239_3610_tegra210_sfc_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3610, i32 1}
!2 = !{ptr @__exitcall_tegra210_sfc_driver_exit, !1, !"__exitcall_tegra210_sfc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3612, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3613, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3614, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3603, i32 11}
!12 = !{ptr @tegra210_sfc_driver, !13, !"tegra210_sfc_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3601, i32 31}
!14 = !{ptr @tegra210_sfc_platform_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3565, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3568, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra210_sfc_platform_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra210_sfc_platform_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3578, i32 3}
!27 = !{ptr @tegra210_sfc_platform_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra210_sfc_platform_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra210_sfc_regmap_config, !30, !"tegra210_sfc_regmap_config", i1 false, i1 false}
!30 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3528, i32 35}
!31 = !{ptr @tegra210_sfc_reg_defaults, !32, !"tegra210_sfc_reg_defaults", i1 false, i1 false}
!32 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 27, i32 33}
!33 = !{ptr @tegra210_sfc_cmpnt, !34, !"tegra210_sfc_cmpnt", i1 false, i1 false}
!34 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3461, i32 46}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3447, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3450, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3453, i32 2}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3456, i32 2}
!43 = !{ptr @tegra210_sfc_controls, !44, !"tegra210_sfc_controls", i1 false, i1 false}
!44 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3446, i32 38}
!45 = !{ptr @tegra210_sfc_stereo_conv_enum, !46, !"tegra210_sfc_stereo_conv_enum", i1 false, i1 false}
!46 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3436, i32 30}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3429, i32 2}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3429, i32 9}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3429, i32 16}
!53 = !{ptr @tegra210_sfc_stereo_conv_text, !54, !"tegra210_sfc_stereo_conv_text", i1 false, i1 false}
!54 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3428, i32 27}
!55 = !{ptr @tegra210_sfc_mono_conv_enum, !56, !"tegra210_sfc_mono_conv_enum", i1 false, i1 false}
!56 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3441, i32 30}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3433, i32 2}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3433, i32 10}
!61 = !{ptr @tegra210_sfc_mono_conv_text, !62, !"tegra210_sfc_mono_conv_text", i1 false, i1 false}
!62 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3432, i32 27}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3408, i32 2}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3409, i32 2}
!67 = !{ptr @tegra210_sfc_widgets, !68, !"tegra210_sfc_widgets", i1 false, i1 false}
!68 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3407, i32 41}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3076, i32 3}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tegra210_sfc_write_coeff_ram._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra210_sfc_write_coeff_ram._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @coef_addr_table, !75, !"coef_addr_table", i1 false, i1 false}
!75 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2849, i32 13}
!76 = !{ptr @coef_8to11, !77, !"coef_8to11", i1 false, i1 false}
!77 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 52, i32 12}
!78 = !{ptr @coef_8to16, !79, !"coef_8to16", i1 false, i1 false}
!79 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 84, i32 12}
!80 = !{ptr @coef_8to22, !81, !"coef_8to22", i1 false, i1 false}
!81 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 93, i32 12}
!82 = !{ptr @coef_8to24, !83, !"coef_8to24", i1 false, i1 false}
!83 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 125, i32 12}
!84 = !{ptr @coef_8to32, !85, !"coef_8to32", i1 false, i1 false}
!85 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 137, i32 12}
!86 = !{ptr @coef_8to44, !87, !"coef_8to44", i1 false, i1 false}
!87 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 152, i32 12}
!88 = !{ptr @coef_8to48, !89, !"coef_8to48", i1 false, i1 false}
!89 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 181, i32 12}
!90 = !{ptr @coef_8to88, !91, !"coef_8to88", i1 false, i1 false}
!91 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 199, i32 12}
!92 = !{ptr @coef_8to96, !93, !"coef_8to96", i1 false, i1 false}
!93 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 231, i32 12}
!94 = !{ptr @coef_11to8, !95, !"coef_11to8", i1 false, i1 false}
!95 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 252, i32 12}
!96 = !{ptr @coef_11to16, !97, !"coef_11to16", i1 false, i1 false}
!97 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 284, i32 12}
!98 = !{ptr @coef_11to22, !99, !"coef_11to22", i1 false, i1 false}
!99 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 310, i32 12}
!100 = !{ptr @coef_11to24, !101, !"coef_11to24", i1 false, i1 false}
!101 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 319, i32 12}
!102 = !{ptr @coef_11to32, !103, !"coef_11to32", i1 false, i1 false}
!103 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 345, i32 12}
!104 = !{ptr @coef_11to44, !105, !"coef_11to44", i1 false, i1 false}
!105 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 377, i32 12}
!106 = !{ptr @coef_11to48, !107, !"coef_11to48", i1 false, i1 false}
!107 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 392, i32 12}
!108 = !{ptr @coef_11to88, !109, !"coef_11to88", i1 false, i1 false}
!109 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 424, i32 12}
!110 = !{ptr @coef_11to96, !111, !"coef_11to96", i1 false, i1 false}
!111 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 445, i32 12}
!112 = !{ptr @coef_16to8, !113, !"coef_16to8", i1 false, i1 false}
!113 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 477, i32 12}
!114 = !{ptr @coef_16to11, !115, !"coef_16to11", i1 false, i1 false}
!115 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 486, i32 12}
!116 = !{ptr @coef_16to22, !117, !"coef_16to22", i1 false, i1 false}
!117 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 513, i32 12}
!118 = !{ptr @coef_16to24, !119, !"coef_16to24", i1 false, i1 false}
!119 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 545, i32 12}
!120 = !{ptr @coef_16to32, !121, !"coef_16to32", i1 false, i1 false}
!121 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 566, i32 12}
!122 = !{ptr @coef_16to44, !123, !"coef_16to44", i1 false, i1 false}
!123 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 575, i32 12}
!124 = !{ptr @coef_16to48, !125, !"coef_16to48", i1 false, i1 false}
!125 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 609, i32 12}
!126 = !{ptr @coef_16to88, !127, !"coef_16to88", i1 false, i1 false}
!127 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 621, i32 12}
!128 = !{ptr @coef_16to96, !129, !"coef_16to96", i1 false, i1 false}
!129 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 647, i32 12}
!130 = !{ptr @coef_16to176, !131, !"coef_16to176", i1 false, i1 false}
!131 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 662, i32 12}
!132 = !{ptr @coef_16to192, !133, !"coef_16to192", i1 false, i1 false}
!133 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 694, i32 12}
!134 = !{ptr @coef_22to8, !135, !"coef_22to8", i1 false, i1 false}
!135 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 715, i32 12}
!136 = !{ptr @coef_22to11, !137, !"coef_22to11", i1 false, i1 false}
!137 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 741, i32 12}
!138 = !{ptr @coef_22to16, !139, !"coef_22to16", i1 false, i1 false}
!139 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 750, i32 12}
!140 = !{ptr @coef_22to24, !141, !"coef_22to24", i1 false, i1 false}
!141 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 782, i32 12}
!142 = !{ptr @coef_22to32, !143, !"coef_22to32", i1 false, i1 false}
!143 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 814, i32 12}
!144 = !{ptr @coef_22to44, !145, !"coef_22to44", i1 false, i1 false}
!145 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 840, i32 12}
!146 = !{ptr @coef_22to48, !147, !"coef_22to48", i1 false, i1 false}
!147 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 849, i32 12}
!148 = !{ptr @coef_22to88, !149, !"coef_22to88", i1 false, i1 false}
!149 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 875, i32 12}
!150 = !{ptr @coef_22to96, !151, !"coef_22to96", i1 false, i1 false}
!151 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 890, i32 12}
!152 = !{ptr @coef_22to176, !153, !"coef_22to176", i1 false, i1 false}
!153 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 922, i32 12}
!154 = !{ptr @coef_22to192, !155, !"coef_22to192", i1 false, i1 false}
!155 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 943, i32 12}
!156 = !{ptr @coef_24to8, !157, !"coef_24to8", i1 false, i1 false}
!157 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 975, i32 12}
!158 = !{ptr @coef_24to11, !159, !"coef_24to11", i1 false, i1 false}
!159 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 987, i32 12}
!160 = !{ptr @coef_24to16, !161, !"coef_24to16", i1 false, i1 false}
!161 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1014, i32 12}
!162 = !{ptr @coef_24to22, !163, !"coef_24to22", i1 false, i1 false}
!163 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1035, i32 12}
!164 = !{ptr @coef_24to32, !165, !"coef_24to32", i1 false, i1 false}
!165 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1068, i32 12}
!166 = !{ptr @coef_24to44, !167, !"coef_24to44", i1 false, i1 false}
!167 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1089, i32 12}
!168 = !{ptr @coef_24to48, !169, !"coef_24to48", i1 false, i1 false}
!169 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1121, i32 12}
!170 = !{ptr @coef_24to88, !171, !"coef_24to88", i1 false, i1 false}
!171 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1130, i32 12}
!172 = !{ptr @coef_24to96, !173, !"coef_24to96", i1 false, i1 false}
!173 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1168, i32 12}
!174 = !{ptr @coef_24to176, !175, !"coef_24to176", i1 false, i1 false}
!175 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1183, i32 12}
!176 = !{ptr @coef_24to192, !177, !"coef_24to192", i1 false, i1 false}
!177 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1215, i32 12}
!178 = !{ptr @coef_32to8, !179, !"coef_32to8", i1 false, i1 false}
!179 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1236, i32 12}
!180 = !{ptr @coef_32to11, !181, !"coef_32to11", i1 false, i1 false}
!181 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1251, i32 12}
!182 = !{ptr @coef_32to16, !183, !"coef_32to16", i1 false, i1 false}
!183 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1277, i32 12}
!184 = !{ptr @coef_32to22, !185, !"coef_32to22", i1 false, i1 false}
!185 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1286, i32 12}
!186 = !{ptr @coef_32to24, !187, !"coef_32to24", i1 false, i1 false}
!187 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1313, i32 12}
!188 = !{ptr @coef_32to44, !189, !"coef_32to44", i1 false, i1 false}
!189 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1328, i32 12}
!190 = !{ptr @coef_32to48, !191, !"coef_32to48", i1 false, i1 false}
!191 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1360, i32 12}
!192 = !{ptr @coef_32to88, !193, !"coef_32to88", i1 false, i1 false}
!193 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1381, i32 12}
!194 = !{ptr @coef_32to96, !195, !"coef_32to96", i1 false, i1 false}
!195 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1413, i32 12}
!196 = !{ptr @coef_32to176, !197, !"coef_32to176", i1 false, i1 false}
!197 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1425, i32 12}
!198 = !{ptr @coef_32to192, !199, !"coef_32to192", i1 false, i1 false}
!199 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1451, i32 12}
!200 = !{ptr @coef_44to8, !201, !"coef_44to8", i1 false, i1 false}
!201 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1466, i32 12}
!202 = !{ptr @coef_44to11, !203, !"coef_44to11", i1 false, i1 false}
!203 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1497, i32 12}
!204 = !{ptr @coef_44to16, !205, !"coef_44to16", i1 false, i1 false}
!205 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1512, i32 12}
!206 = !{ptr @coef_44to22, !207, !"coef_44to22", i1 false, i1 false}
!207 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1543, i32 12}
!208 = !{ptr @coef_44to24, !209, !"coef_44to24", i1 false, i1 false}
!209 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1552, i32 12}
!210 = !{ptr @coef_44to32, !211, !"coef_44to32", i1 false, i1 false}
!211 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1578, i32 12}
!212 = !{ptr @coef_44to48, !213, !"coef_44to48", i1 false, i1 false}
!213 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1610, i32 12}
!214 = !{ptr @coef_44to88, !215, !"coef_44to88", i1 false, i1 false}
!215 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1642, i32 12}
!216 = !{ptr @coef_44to96, !217, !"coef_44to96", i1 false, i1 false}
!217 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1651, i32 12}
!218 = !{ptr @coef_44to176, !219, !"coef_44to176", i1 false, i1 false}
!219 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1677, i32 12}
!220 = !{ptr @coef_44to192, !221, !"coef_44to192", i1 false, i1 false}
!221 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1692, i32 12}
!222 = !{ptr @coef_48to8, !223, !"coef_48to8", i1 false, i1 false}
!223 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1724, i32 12}
!224 = !{ptr @coef_48to11, !225, !"coef_48to11", i1 false, i1 false}
!225 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1742, i32 12}
!226 = !{ptr @coef_48to16, !227, !"coef_48to16", i1 false, i1 false}
!227 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1774, i32 12}
!228 = !{ptr @coef_48to22, !229, !"coef_48to22", i1 false, i1 false}
!229 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1786, i32 12}
!230 = !{ptr @coef_48to24, !231, !"coef_48to24", i1 false, i1 false}
!231 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1813, i32 12}
!232 = !{ptr @coef_48to32, !233, !"coef_48to32", i1 false, i1 false}
!233 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1822, i32 12}
!234 = !{ptr @coef_48to44, !235, !"coef_48to44", i1 false, i1 false}
!235 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1843, i32 12}
!236 = !{ptr @coef_48to88, !237, !"coef_48to88", i1 false, i1 false}
!237 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1876, i32 12}
!238 = !{ptr @coef_48to96, !239, !"coef_48to96", i1 false, i1 false}
!239 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1908, i32 12}
!240 = !{ptr @coef_48to176, !241, !"coef_48to176", i1 false, i1 false}
!241 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1917, i32 12}
!242 = !{ptr @coef_48to192, !243, !"coef_48to192", i1 false, i1 false}
!243 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1955, i32 12}
!244 = !{ptr @coef_88to8, !245, !"coef_88to8", i1 false, i1 false}
!245 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 1970, i32 12}
!246 = !{ptr @coef_88to11, !247, !"coef_88to11", i1 false, i1 false}
!247 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2002, i32 12}
!248 = !{ptr @coef_88to16, !249, !"coef_88to16", i1 false, i1 false}
!249 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2023, i32 12}
!250 = !{ptr @coef_88to22, !251, !"coef_88to22", i1 false, i1 false}
!251 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2049, i32 12}
!252 = !{ptr @coef_88to24, !253, !"coef_88to24", i1 false, i1 false}
!253 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2064, i32 12}
!254 = !{ptr @coef_88to32, !255, !"coef_88to32", i1 false, i1 false}
!255 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2090, i32 12}
!256 = !{ptr @coef_88to44, !257, !"coef_88to44", i1 false, i1 false}
!257 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2116, i32 12}
!258 = !{ptr @coef_88to48, !259, !"coef_88to48", i1 false, i1 false}
!259 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2125, i32 12}
!260 = !{ptr @coef_88to96, !261, !"coef_88to96", i1 false, i1 false}
!261 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2151, i32 12}
!262 = !{ptr @coef_88to176, !263, !"coef_88to176", i1 false, i1 false}
!263 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2171, i32 12}
!264 = !{ptr @coef_88to192, !265, !"coef_88to192", i1 false, i1 false}
!265 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2180, i32 12}
!266 = !{ptr @coef_96to8, !267, !"coef_96to8", i1 false, i1 false}
!267 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2206, i32 12}
!268 = !{ptr @coef_96to11, !269, !"coef_96to11", i1 false, i1 false}
!269 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2227, i32 12}
!270 = !{ptr @coef_96to16, !271, !"coef_96to16", i1 false, i1 false}
!271 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2259, i32 12}
!272 = !{ptr @coef_96to22, !273, !"coef_96to22", i1 false, i1 false}
!273 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2274, i32 12}
!274 = !{ptr @coef_96to24, !275, !"coef_96to24", i1 false, i1 false}
!275 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2306, i32 12}
!276 = !{ptr @coef_96to32, !277, !"coef_96to32", i1 false, i1 false}
!277 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2321, i32 12}
!278 = !{ptr @coef_96to44, !279, !"coef_96to44", i1 false, i1 false}
!279 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2333, i32 12}
!280 = !{ptr @coef_96to48, !281, !"coef_96to48", i1 false, i1 false}
!281 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2360, i32 12}
!282 = !{ptr @coef_96to88, !283, !"coef_96to88", i1 false, i1 false}
!283 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2369, i32 12}
!284 = !{ptr @coef_96to176, !285, !"coef_96to176", i1 false, i1 false}
!285 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2396, i32 12}
!286 = !{ptr @coef_96to192, !287, !"coef_96to192", i1 false, i1 false}
!287 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2429, i32 12}
!288 = !{ptr @coef_176to16, !289, !"coef_176to16", i1 false, i1 false}
!289 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2439, i32 12}
!290 = !{ptr @coef_176to22, !291, !"coef_176to22", i1 false, i1 false}
!291 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2471, i32 12}
!292 = !{ptr @coef_176to24, !293, !"coef_176to24", i1 false, i1 false}
!293 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2492, i32 12}
!294 = !{ptr @coef_176to32, !295, !"coef_176to32", i1 false, i1 false}
!295 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2524, i32 12}
!296 = !{ptr @coef_176to44, !297, !"coef_176to44", i1 false, i1 false}
!297 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2550, i32 12}
!298 = !{ptr @coef_176to48, !299, !"coef_176to48", i1 false, i1 false}
!299 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2565, i32 12}
!300 = !{ptr @coef_176to88, !301, !"coef_176to88", i1 false, i1 false}
!301 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2591, i32 12}
!302 = !{ptr @coef_176to96, !303, !"coef_176to96", i1 false, i1 false}
!303 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2600, i32 12}
!304 = !{ptr @coef_176to192, !305, !"coef_176to192", i1 false, i1 false}
!305 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2627, i32 12}
!306 = !{ptr @coef_192to16, !307, !"coef_192to16", i1 false, i1 false}
!307 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2647, i32 12}
!308 = !{ptr @coef_192to22, !309, !"coef_192to22", i1 false, i1 false}
!309 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2668, i32 12}
!310 = !{ptr @coef_192to24, !311, !"coef_192to24", i1 false, i1 false}
!311 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2700, i32 12}
!312 = !{ptr @coef_192to32, !313, !"coef_192to32", i1 false, i1 false}
!313 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2721, i32 12}
!314 = !{ptr @coef_192to44, !315, !"coef_192to44", i1 false, i1 false}
!315 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2736, i32 12}
!316 = !{ptr @coef_192to48, !317, !"coef_192to48", i1 false, i1 false}
!317 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2768, i32 12}
!318 = !{ptr @coef_192to88, !319, !"coef_192to88", i1 false, i1 false}
!319 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2783, i32 12}
!320 = !{ptr @coef_192to96, !321, !"coef_192to96", i1 false, i1 false}
!321 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2809, i32 12}
!322 = !{ptr @coef_192to176, !323, !"coef_192to176", i1 false, i1 false}
!323 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 2819, i32 12}
!324 = !{ptr @.str.146, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3424, i32 2}
!326 = !{ptr @.str.147, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.148, !325, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.149, !325, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.151, !325, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.152, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3425, i32 2}
!333 = !{ptr @.str.153, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @.str.154, !332, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @.str.155, !332, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @tegra210_sfc_routes, !337, !"tegra210_sfc_routes", i1 false, i1 false}
!337 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3422, i32 40}
!338 = !{ptr @.str.156, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3362, i32 11}
!340 = !{ptr @.str.157, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3384, i32 11}
!342 = !{ptr @tegra210_sfc_dais, !343, !"tegra210_sfc_dais", i1 false, i1 false}
!343 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3360, i32 34}
!344 = !{ptr @tegra210_sfc_in_dai_ops, !345, !"tegra210_sfc_in_dai_ops", i1 false, i1 false}
!345 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3351, i32 37}
!346 = !{ptr @.str.158, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3182, i32 3}
!348 = !{ptr @.str.159, !347, !"<string literal>", i1 false, i1 false}
!349 = !{ptr @tegra210_sfc_startup._entry, !347, !"_entry", i1 false, i1 false}
!350 = !{ptr @tegra210_sfc_startup._entry_ptr, !347, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.160, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3206, i32 3}
!353 = !{ptr @.str.161, !352, !"<string literal>", i1 false, i1 false}
!354 = !{ptr @tegra210_sfc_in_hw_params._entry, !352, !"_entry", i1 false, i1 false}
!355 = !{ptr @tegra210_sfc_in_hw_params._entry_ptr, !352, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.162, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3166, i32 2}
!358 = !{ptr @.str.163, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @tegra210_sfc_rate_to_idx._entry, !357, !"_entry", i1 false, i1 false}
!360 = !{ptr @tegra210_sfc_rate_to_idx._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!361 = distinct !{null, !362, !"tegra210_sfc_rates", i1 false, i1 false}
!362 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 36, i32 18}
!363 = !{ptr @tegra210_sfc_out_dai_ops, !364, !"tegra210_sfc_out_dai_ops", i1 false, i1 false}
!364 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3356, i32 37}
!365 = !{ptr @.str.164, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3230, i32 3}
!367 = !{ptr @.str.165, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @tegra210_sfc_out_hw_params._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @tegra210_sfc_out_hw_params._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @tegra210_sfc_of_match, !371, !"tegra210_sfc_of_match", i1 false, i1 false}
!371 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3542, i32 34}
!372 = !{ptr @tegra210_sfc_pm_ops, !373, !"tegra210_sfc_pm_ops", i1 false, i1 false}
!373 = !{!"../sound/soc/tegra/tegra210_sfc.c", i32 3594, i32 32}
!374 = !{i32 1, !"wchar_size", i32 2}
!375 = !{i32 1, !"min_enum_size", i32 4}
!376 = !{i32 8, !"branch-target-enforcement", i32 0}
!377 = !{i32 8, !"sign-return-address", i32 0}
!378 = !{i32 8, !"sign-return-address-all", i32 0}
!379 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!380 = !{i32 7, !"uwtable", i32 1}
!381 = !{i32 7, !"frame-pointer", i32 2}
!382 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!383 = !{!"auto-init"}
!384 = !{i32 0, i32 33}
