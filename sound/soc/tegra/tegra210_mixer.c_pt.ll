; ModuleID = '/llk/IR_all_yes/sound/soc/tegra/tegra210_mixer.c_pt.bc'
source_filename = "../sound/soc/tegra/tegra210_mixer.c"
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
%struct.tegra210_mixer = type { [10 x i32], ptr }
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

@__initcall__kmod_snd_soc_tegra210_mixer__239_682_tegra210_mixer_driver_init6 = internal global ptr @tegra210_mixer_driver_init, section ".initcall6.init", align 4
@tegra210_mixer_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra210_mixer_platform_probe, ptr @tegra210_mixer_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra210_mixer_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra210_mixer_driver_exit = internal global ptr @tegra210_mixer_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [71 x i8] c"snd_soc_tegra210_mixer.author=Arun Shamanna Lakshmi <aruns@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [62 x i8] c"snd_soc_tegra210_mixer.description=Tegra210 MIXER ASoC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [67 x i8] c"snd_soc_tegra210_mixer.file=sound/soc/tegra/snd-soc-tegra210-mixer\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [38 x i8] c"snd_soc_tegra210_mixer.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra210_mixer\00", [17 x i8] zeroinitializer }, align 32
@tegra210_mixer_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-amixer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tegra210_mixer_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_runtime_suspend, ptr @tegra210_mixer_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra210_mixer_platform_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tegra210_mixer_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @tegra210_mixer_wr_reg, ptr @tegra210_mixer_rd_reg, ptr @tegra210_mixer_volatile_reg, ptr @tegra210_mixer_precious_reg, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1084, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_reg_defaults, i32 44, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"tegra210_mixer:638:(&tegra210_mixer_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@tegra210_mixer_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 640, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra210_mixer_platform_probe\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/tegra/tegra210_mixer.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra210_mixer_platform_probe._entry_ptr = internal global ptr @tegra210_mixer_platform_probe._entry, section ".printk_index", align 4
@tegra210_mixer_cmpnt = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tegra210_mixer_gain_ctls, i32 20, ptr @tegra210_mixer_widgets, i32 20, ptr @tegra210_mixer_routes, i32 760, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tegra210_mixer_dais = internal global { [15 x %struct.snd_soc_dai_driver], [616 x i8] } { [15 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.197, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.126, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.124, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.198, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.131, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.129, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.199, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.136, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.134, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.200, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.141, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.139, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.201, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.146, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.144, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.202, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.151, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.149, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.203, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.156, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.154, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.204, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.161, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.159, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.205, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.166, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.164, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.206, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.171, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.169, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.207, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.187, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.172, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.208, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.189, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.175, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.209, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.191, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.178, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.210, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.193, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.181, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.211, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.195, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.184, i64 1029, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [616 x i8] zeroinitializer }, align 32
@tegra210_mixer_platform_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can't register MIXER component, err: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra210_mixer_platform_probe._entry_ptr.9 = internal global ptr @tegra210_mixer_platform_probe._entry.7, section ".printk_index", align 4
@tegra210_mixer_reg_defaults = internal constant { [44 x %struct.reg_default], [64 x i8] } { [44 x %struct.reg_default] [%struct.reg_default { i32 36, i32 30464 }, %struct.reg_default { i32 40, i32 67619 }, %struct.reg_default { i32 44, i32 4800 }, %struct.reg_default { i32 100, i32 30464 }, %struct.reg_default { i32 104, i32 67619 }, %struct.reg_default { i32 108, i32 4800 }, %struct.reg_default { i32 164, i32 30464 }, %struct.reg_default { i32 168, i32 67619 }, %struct.reg_default { i32 172, i32 4800 }, %struct.reg_default { i32 228, i32 30464 }, %struct.reg_default { i32 232, i32 67619 }, %struct.reg_default { i32 236, i32 4800 }, %struct.reg_default { i32 292, i32 30464 }, %struct.reg_default { i32 296, i32 67619 }, %struct.reg_default { i32 300, i32 4800 }, %struct.reg_default { i32 356, i32 30464 }, %struct.reg_default { i32 360, i32 67619 }, %struct.reg_default { i32 364, i32 4800 }, %struct.reg_default { i32 420, i32 30464 }, %struct.reg_default { i32 424, i32 67619 }, %struct.reg_default { i32 428, i32 4800 }, %struct.reg_default { i32 484, i32 30464 }, %struct.reg_default { i32 488, i32 67619 }, %struct.reg_default { i32 492, i32 4800 }, %struct.reg_default { i32 548, i32 30464 }, %struct.reg_default { i32 552, i32 67619 }, %struct.reg_default { i32 556, i32 4800 }, %struct.reg_default { i32 612, i32 30464 }, %struct.reg_default { i32 616, i32 67619 }, %struct.reg_default { i32 620, i32 4800 }, %struct.reg_default { i32 664, i32 1 }, %struct.reg_default { i32 676, i32 30464 }, %struct.reg_default { i32 728, i32 1 }, %struct.reg_default { i32 740, i32 30464 }, %struct.reg_default { i32 792, i32 1 }, %struct.reg_default { i32 804, i32 30464 }, %struct.reg_default { i32 856, i32 1 }, %struct.reg_default { i32 868, i32 30464 }, %struct.reg_default { i32 920, i32 1 }, %struct.reg_default { i32 932, i32 30464 }, %struct.reg_default { i32 1032, i32 1 }, %struct.reg_default { i32 1068, i32 16384 }, %struct.reg_default { i32 1076, i32 16384 }, %struct.reg_default { i32 1024, i32 1 }], [64 x i8] zeroinitializer }, align 32
@tegra210_mixer_gain_ctls = internal constant { [20 x %struct.snd_kcontrol_new], [224 x i8] } { [20 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @tegra210_mixer_get_gain, ptr @tegra210_mixer_put_instant_gain, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }], [224 x i8] zeroinitializer }, align 32
@tegra210_mixer_routes = internal constant { [760 x %struct.snd_soc_dapm_route], [9856 x i8] } { [760 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr null, ptr @.str.194, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.51, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.52, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.53, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.54, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.55, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.56, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.57, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.58, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.59, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.60, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.195, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.196, ptr null, %struct.snd_soc_dobj zeroinitializer }], [9856 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX1 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX1 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX2 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX2 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX3 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX3 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX4 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX4 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX5 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 64, i32 64, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX5 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 64, i32 64, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX6 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 80, i32 80, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX6 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 80, i32 80, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX7 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 96, i32 96, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX7 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 96, i32 96, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX8 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 112, i32 112, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX8 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 112, i32 112, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX9 Gain Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 128, i32 128, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RX9 Instant Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 128, i32 128, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX10 Gain Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 144, i32 144, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RX10 Instant Gain Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 131072, i32 131072, i32 144, i32 144, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@tegra210_mixer_apply_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to apply gain\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra210_mixer_apply_gain\00", [38 x i8] zeroinitializer }, align 32
@tegra210_mixer_apply_gain._entry_ptr = internal global ptr @tegra210_mixer_apply_gain._entry, section ".printk_index", align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX1\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX2\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX3\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX4\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX5\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX6\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX7\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX8\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX9\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RX10\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX1\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX2\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX3\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX4\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TX5\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adder1\00", [25 x i8] zeroinitializer }, align 32
@adder1 = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adder2\00", [25 x i8] zeroinitializer }, align 32
@adder2 = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adder3\00", [25 x i8] zeroinitializer }, align 32
@adder3 = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adder4\00", [25 x i8] zeroinitializer }, align 32
@adder4 = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Adder5\00", [25 x i8] zeroinitializer }, align 32
@adder5 = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }], [96 x i8] zeroinitializer }, align 32
@tegra210_mixer_widgets = internal constant { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [912 x i8] } { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 640, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 704, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 768, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 832, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 896, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @adder1, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @adder2, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @adder3, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @adder4, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 10, ptr @adder5, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [912 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 680, i32 680, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 744, i32 744, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 808, i32 808, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 872, i32 872, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 936, i32 936, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX1 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX1 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX1-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX1 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX1-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX2 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX2 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX2-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX2 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX2-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX3 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX3 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX3-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX3 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX3-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX4 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX4 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX4-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX4 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX4-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX5 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX5 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX5-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX5 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX5-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX6 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX6 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX6-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX6 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX6-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX7 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX7 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX7-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX7 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX7-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX8 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX8 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX8-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX8 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX8-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX9 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX9 XBAR-TX\00", [20 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX9-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX9 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX9-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX10 XBAR-Playback\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX10 XBAR-TX\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX10-CIF-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX10 XBAR-Capture\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX10-CIF-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX1-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX1 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX1 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX2-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX2 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX2 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX3-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX3 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX3 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX4-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX4 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX4 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX5-CIF-Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX5 XBAR-Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TX5 XBAR-RX\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX1-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX1 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX2-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX2 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX3-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX3 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX4-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX4 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX5-CIF-Capture\00", [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX5 XBAR-Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF1\00", [18 x i8] zeroinitializer }, align 32
@tegra210_mixer_in_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_in_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF2\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF3\00", [18 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF4\00", [18 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF5\00", [18 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF6\00", [18 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF7\00", [18 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF8\00", [18 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-RX-CIF9\00", [18 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MIXER-RX-CIF10\00", [17 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-TX-CIF1\00", [18 x i8] zeroinitializer }, align 32
@tegra210_mixer_out_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra210_mixer_out_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-TX-CIF2\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-TX-CIF3\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-TX-CIF4\00", [18 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MIXER-TX-CIF5\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [57 x i64] [i64 55, i64 32, i64 4, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 640, i64 644, i64 664, i64 665, i64 666, i64 667, i64 668, i64 669, i64 670, i64 671, i64 672, i64 673, i64 674, i64 675, i64 676, i64 677, i64 678, i64 679, i64 680, i64 1024, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031, i64 1032, i64 1068, i64 1069, i64 1070, i64 1071, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1077, i64 1078, i64 1079, i64 1080, i64 1081, i64 1082, i64 1083, i64 1084]
@__sancov_gen_cov_switch_values.212 = internal global [149 x i64] [i64 147, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 640, i64 641, i64 642, i64 643, i64 644, i64 645, i64 646, i64 647, i64 648, i64 649, i64 650, i64 651, i64 652, i64 653, i64 654, i64 655, i64 656, i64 657, i64 658, i64 659, i64 660, i64 661, i64 662, i64 663, i64 664, i64 665, i64 666, i64 667, i64 668, i64 669, i64 670, i64 671, i64 672, i64 673, i64 674, i64 675, i64 676, i64 677, i64 678, i64 679, i64 680, i64 1024, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031, i64 1032, i64 1033, i64 1034, i64 1035, i64 1036, i64 1037, i64 1038, i64 1039, i64 1040, i64 1041, i64 1042, i64 1043, i64 1044, i64 1045, i64 1046, i64 1047, i64 1048, i64 1049, i64 1050, i64 1051, i64 1052, i64 1053, i64 1054, i64 1055, i64 1056, i64 1057, i64 1058, i64 1059, i64 1060, i64 1061, i64 1062, i64 1063, i64 1064, i64 1065, i64 1066, i64 1067, i64 1068, i64 1069, i64 1070, i64 1071, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1077, i64 1078, i64 1079, i64 1080, i64 1081, i64 1082, i64 1083, i64 1084]
@__sancov_gen_cov_switch_values.213 = internal global [15 x i64] [i64 13, i64 32, i64 4, i64 16, i64 644, i64 656, i64 660, i64 668, i64 1028, i64 1040, i64 1044, i64 1068, i64 1072, i64 1076, i64 1080]
@__sancov_gen_cov_switch_values.214 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.215 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@___asan_gen_.216 = private unnamed_addr constant [22 x i8] c"tegra210_mixer_driver\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 673, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 675, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant [24 x i8] c"tegra210_mixer_of_match\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 610, i32 34 }
@___asan_gen_.225 = private unnamed_addr constant [22 x i8] c"tegra210_mixer_pm_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 666, i32 32 }
@___asan_gen_.228 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [29 x i8] c"tegra210_mixer_regmap_config\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 596, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 637, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 640, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"tegra210_mixer_cmpnt\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 503, i32 46 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"tegra210_mixer_dais\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 354, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 650, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [28 x i8] c"tegra210_mixer_reg_defaults\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 42, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"tegra210_mixer_gain_ctls\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 406, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant [22 x i8] c"tegra210_mixer_routes\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 483, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 407, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 408, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 409, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 410, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 411, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 412, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 413, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 414, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 415, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 416, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 217, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 420, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 421, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 422, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 423, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 424, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 425, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 426, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 427, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 428, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 429, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 430, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 431, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 432, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 433, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 434, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 435, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [7 x i8] c"adder1\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 389, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 437, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"adder2\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 390, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 439, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"adder3\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 391, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 441, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"adder4\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 392, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 443, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [7 x i8] c"adder5\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 393, i32 1 }
@___asan_gen_.440 = private unnamed_addr constant [23 x i8] c"tegra210_mixer_widgets\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 419, i32 41 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.478 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.485 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.487 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 485, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 486, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 487, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 488, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 489, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 490, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 491, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 492, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 493, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 494, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 496, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 356, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [26 x i8] c"tegra210_mixer_in_dai_ops\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 302, i32 37 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 357, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 358, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 359, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 360, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 361, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 362, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 363, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 364, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 365, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 368, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [27 x i8] c"tegra210_mixer_out_dai_ops\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 298, i32 37 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 369, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 370, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 371, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.767 = private constant [36 x i8] c"../sound/soc/tegra/tegra210_mixer.c\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.767, i32 372, i32 2 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_tegra210_mixer_driver_exit, ptr @__initcall__kmod_snd_soc_tegra210_mixer__239_682_tegra210_mixer_driver_init6, ptr @tegra210_mixer_apply_gain._entry, ptr @tegra210_mixer_apply_gain._entry_ptr, ptr @tegra210_mixer_driver_exit, ptr @tegra210_mixer_platform_probe._entry, ptr @tegra210_mixer_platform_probe._entry.7, ptr @tegra210_mixer_platform_probe._entry_ptr, ptr @tegra210_mixer_platform_probe._entry_ptr.9, ptr @tegra210_mixer_driver, ptr @.str, ptr @tegra210_mixer_of_match, ptr @tegra210_mixer_pm_ops, ptr @tegra210_mixer_platform_probe._key, ptr @tegra210_mixer_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tegra210_mixer_cmpnt, ptr @tegra210_mixer_dais, ptr @.str.8, ptr @tegra210_mixer_reg_defaults, ptr @tegra210_mixer_gain_ctls, ptr @tegra210_mixer_routes, ptr @.str.10, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @adder1, ptr @.str.67, ptr @adder2, ptr @.str.68, ptr @adder3, ptr @.str.69, ptr @adder4, ptr @.str.70, ptr @adder5, ptr @tegra210_mixer_widgets, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.compoundliteral.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.compoundliteral.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.compoundliteral.112, ptr @.compoundliteral.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.compoundliteral.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @tegra210_mixer_in_dai_ops, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @tegra210_mixer_out_dai_ops, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_platform_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_cmpnt to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_dais to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_platform_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_reg_defaults to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_gain_ctls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_routes to i32), i32 39520, i32 49376, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_apply_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adder1 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adder2 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adder3 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adder4 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adder5 to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_widgets to i32), i32 3600, i32 4512, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_in_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_mixer_out_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra210_mixer_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_mixer_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra210_mixer_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_platform_probe(ptr noundef %pdev) #2 align 64 {
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
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65536, ptr %call.i, align 4
  %arrayidx.1 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65536, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65536, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65536, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65536, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65536, ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65536, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65536, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr [10 x i32], ptr %call.i, i32 0, i32 9
  %10 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65536, ptr %arrayidx.9, align 4
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @tegra210_mixer_regmap_config, ptr noundef nonnull @tegra210_mixer_platform_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.tegra210_mixer, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i45 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  tail call void @regcache_cache_only(ptr noundef %call7, i1 noundef zeroext true) #8
  %call15 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @tegra210_mixer_cmpnt, ptr noundef nonnull @tegra210_mixer_dais, i32 noundef 15) #8
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
  %retval.0 = phi i32 [ %11, %if.then4 ], [ %15, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_platform_remove(ptr noundef %pdev) #2 align 64 {
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
define internal zeroext i1 @tegra210_mixer_wr_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %reg)
  %cmp = icmp ult i32 %reg, 640
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %reg, 63
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %reg)
  %cmp1 = icmp ult i32 %reg, 960
  br i1 %cmp1, label %if.then2, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rem3 = and i32 %reg, 63
  %add = or i32 %rem3, 640
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then
  %reg.addr.0 = phi i32 [ %rem, %if.then ], [ %add, %if.then2 ], [ %reg, %if.else.if.end4_crit_edge ]
  %0 = zext i32 %reg.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg.addr.0, label %sw.default [
    i32 4, label %if.end4.return_crit_edge
    i32 640, label %if.end4.return_crit_edge14
    i32 644, label %if.end4.return_crit_edge15
    i32 1068, label %if.end4.return_crit_edge16
    i32 1069, label %if.end4.return_crit_edge17
    i32 1070, label %if.end4.return_crit_edge18
    i32 1071, label %if.end4.return_crit_edge19
    i32 1072, label %if.end4.return_crit_edge20
    i32 1073, label %if.end4.return_crit_edge21
    i32 1074, label %if.end4.return_crit_edge22
    i32 1075, label %if.end4.return_crit_edge23
    i32 1076, label %if.end4.return_crit_edge24
    i32 1077, label %if.end4.return_crit_edge25
    i32 1078, label %if.end4.return_crit_edge26
    i32 1079, label %if.end4.return_crit_edge27
    i32 1080, label %if.end4.return_crit_edge28
    i32 1081, label %if.end4.return_crit_edge29
    i32 1082, label %if.end4.return_crit_edge30
    i32 1083, label %if.end4.return_crit_edge31
    i32 1084, label %if.end4.return_crit_edge32
    i32 1024, label %if.end4.return_crit_edge33
    i32 1025, label %if.end4.return_crit_edge34
    i32 1026, label %if.end4.return_crit_edge35
    i32 1027, label %if.end4.return_crit_edge36
    i32 1028, label %if.end4.return_crit_edge37
    i32 1029, label %if.end4.return_crit_edge38
    i32 1030, label %if.end4.return_crit_edge39
    i32 1031, label %if.end4.return_crit_edge40
    i32 1032, label %if.end4.return_crit_edge41
    i32 664, label %if.end4.return_crit_edge42
    i32 665, label %if.end4.return_crit_edge43
    i32 666, label %if.end4.return_crit_edge44
    i32 667, label %if.end4.return_crit_edge45
    i32 668, label %if.end4.return_crit_edge46
    i32 669, label %if.end4.return_crit_edge47
    i32 670, label %if.end4.return_crit_edge48
    i32 671, label %if.end4.return_crit_edge49
    i32 672, label %if.end4.return_crit_edge50
    i32 673, label %if.end4.return_crit_edge51
    i32 674, label %if.end4.return_crit_edge52
    i32 675, label %if.end4.return_crit_edge53
    i32 676, label %if.end4.return_crit_edge54
    i32 677, label %if.end4.return_crit_edge55
    i32 678, label %if.end4.return_crit_edge56
    i32 679, label %if.end4.return_crit_edge57
    i32 680, label %if.end4.return_crit_edge58
    i32 36, label %if.end4.return_crit_edge59
    i32 37, label %if.end4.return_crit_edge60
    i32 38, label %if.end4.return_crit_edge61
    i32 39, label %if.end4.return_crit_edge62
    i32 40, label %if.end4.return_crit_edge63
    i32 41, label %if.end4.return_crit_edge64
    i32 42, label %if.end4.return_crit_edge65
    i32 43, label %if.end4.return_crit_edge66
    i32 44, label %if.end4.return_crit_edge67
  ]

if.end4.return_crit_edge67:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge66:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge65:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge64:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge63:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge62:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge61:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge60:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge59:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge58:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge57:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge56:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge55:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge54:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge53:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge52:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge51:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge50:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge49:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge48:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge47:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge46:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge45:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge44:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge43:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge42:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge41:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge40:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge39:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge38:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge37:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge36:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge35:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge34:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge33:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge32:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge31:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge30:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge29:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge28:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge27:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge26:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge25:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge24:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge23:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge22:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge21:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge20:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge19:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge18:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge17:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge16:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge15:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge14:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %if.end4.return_crit_edge, %if.end4.return_crit_edge14, %if.end4.return_crit_edge15, %if.end4.return_crit_edge16, %if.end4.return_crit_edge17, %if.end4.return_crit_edge18, %if.end4.return_crit_edge19, %if.end4.return_crit_edge20, %if.end4.return_crit_edge21, %if.end4.return_crit_edge22, %if.end4.return_crit_edge23, %if.end4.return_crit_edge24, %if.end4.return_crit_edge25, %if.end4.return_crit_edge26, %if.end4.return_crit_edge27, %if.end4.return_crit_edge28, %if.end4.return_crit_edge29, %if.end4.return_crit_edge30, %if.end4.return_crit_edge31, %if.end4.return_crit_edge32, %if.end4.return_crit_edge33, %if.end4.return_crit_edge34, %if.end4.return_crit_edge35, %if.end4.return_crit_edge36, %if.end4.return_crit_edge37, %if.end4.return_crit_edge38, %if.end4.return_crit_edge39, %if.end4.return_crit_edge40, %if.end4.return_crit_edge41, %if.end4.return_crit_edge42, %if.end4.return_crit_edge43, %if.end4.return_crit_edge44, %if.end4.return_crit_edge45, %if.end4.return_crit_edge46, %if.end4.return_crit_edge47, %if.end4.return_crit_edge48, %if.end4.return_crit_edge49, %if.end4.return_crit_edge50, %if.end4.return_crit_edge51, %if.end4.return_crit_edge52, %if.end4.return_crit_edge53, %if.end4.return_crit_edge54, %if.end4.return_crit_edge55, %if.end4.return_crit_edge56, %if.end4.return_crit_edge57, %if.end4.return_crit_edge58, %if.end4.return_crit_edge59, %if.end4.return_crit_edge60, %if.end4.return_crit_edge61, %if.end4.return_crit_edge62, %if.end4.return_crit_edge63, %if.end4.return_crit_edge64, %if.end4.return_crit_edge65, %if.end4.return_crit_edge66, %if.end4.return_crit_edge67
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %if.end4.return_crit_edge ], [ true, %if.end4.return_crit_edge14 ], [ true, %if.end4.return_crit_edge15 ], [ true, %if.end4.return_crit_edge16 ], [ true, %if.end4.return_crit_edge17 ], [ true, %if.end4.return_crit_edge18 ], [ true, %if.end4.return_crit_edge19 ], [ true, %if.end4.return_crit_edge20 ], [ true, %if.end4.return_crit_edge21 ], [ true, %if.end4.return_crit_edge22 ], [ true, %if.end4.return_crit_edge23 ], [ true, %if.end4.return_crit_edge24 ], [ true, %if.end4.return_crit_edge25 ], [ true, %if.end4.return_crit_edge26 ], [ true, %if.end4.return_crit_edge27 ], [ true, %if.end4.return_crit_edge28 ], [ true, %if.end4.return_crit_edge29 ], [ true, %if.end4.return_crit_edge30 ], [ true, %if.end4.return_crit_edge31 ], [ true, %if.end4.return_crit_edge32 ], [ true, %if.end4.return_crit_edge33 ], [ true, %if.end4.return_crit_edge34 ], [ true, %if.end4.return_crit_edge35 ], [ true, %if.end4.return_crit_edge36 ], [ true, %if.end4.return_crit_edge37 ], [ true, %if.end4.return_crit_edge38 ], [ true, %if.end4.return_crit_edge39 ], [ true, %if.end4.return_crit_edge40 ], [ true, %if.end4.return_crit_edge41 ], [ true, %if.end4.return_crit_edge42 ], [ true, %if.end4.return_crit_edge43 ], [ true, %if.end4.return_crit_edge44 ], [ true, %if.end4.return_crit_edge45 ], [ true, %if.end4.return_crit_edge46 ], [ true, %if.end4.return_crit_edge47 ], [ true, %if.end4.return_crit_edge48 ], [ true, %if.end4.return_crit_edge49 ], [ true, %if.end4.return_crit_edge50 ], [ true, %if.end4.return_crit_edge51 ], [ true, %if.end4.return_crit_edge52 ], [ true, %if.end4.return_crit_edge53 ], [ true, %if.end4.return_crit_edge54 ], [ true, %if.end4.return_crit_edge55 ], [ true, %if.end4.return_crit_edge56 ], [ true, %if.end4.return_crit_edge57 ], [ true, %if.end4.return_crit_edge58 ], [ true, %if.end4.return_crit_edge59 ], [ true, %if.end4.return_crit_edge60 ], [ true, %if.end4.return_crit_edge61 ], [ true, %if.end4.return_crit_edge62 ], [ true, %if.end4.return_crit_edge63 ], [ true, %if.end4.return_crit_edge64 ], [ true, %if.end4.return_crit_edge65 ], [ true, %if.end4.return_crit_edge66 ], [ true, %if.end4.return_crit_edge67 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mixer_rd_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %reg)
  %cmp = icmp ult i32 %reg, 640
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %reg, 63
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %reg)
  %cmp1 = icmp ult i32 %reg, 960
  br i1 %cmp1, label %if.then2, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rem3 = and i32 %reg, 63
  %add = or i32 %rem3, 640
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then
  %reg.addr.0 = phi i32 [ %rem, %if.then ], [ %add, %if.then2 ], [ %reg, %if.else.if.end4_crit_edge ]
  %0 = zext i32 %reg.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %reg.addr.0, label %sw.default [
    i32 1024, label %if.end4.return_crit_edge
    i32 1025, label %if.end4.return_crit_edge11
    i32 1026, label %if.end4.return_crit_edge12
    i32 1027, label %if.end4.return_crit_edge13
    i32 1028, label %if.end4.return_crit_edge14
    i32 1029, label %if.end4.return_crit_edge15
    i32 1030, label %if.end4.return_crit_edge16
    i32 1031, label %if.end4.return_crit_edge17
    i32 1032, label %if.end4.return_crit_edge18
    i32 1033, label %if.end4.return_crit_edge19
    i32 1034, label %if.end4.return_crit_edge20
    i32 1035, label %if.end4.return_crit_edge21
    i32 1036, label %if.end4.return_crit_edge22
    i32 1037, label %if.end4.return_crit_edge23
    i32 1038, label %if.end4.return_crit_edge24
    i32 1039, label %if.end4.return_crit_edge25
    i32 1040, label %if.end4.return_crit_edge26
    i32 1041, label %if.end4.return_crit_edge27
    i32 1042, label %if.end4.return_crit_edge28
    i32 1043, label %if.end4.return_crit_edge29
    i32 1044, label %if.end4.return_crit_edge30
    i32 1045, label %if.end4.return_crit_edge31
    i32 1046, label %if.end4.return_crit_edge32
    i32 1047, label %if.end4.return_crit_edge33
    i32 1048, label %if.end4.return_crit_edge34
    i32 1049, label %if.end4.return_crit_edge35
    i32 1050, label %if.end4.return_crit_edge36
    i32 1051, label %if.end4.return_crit_edge37
    i32 1052, label %if.end4.return_crit_edge38
    i32 1053, label %if.end4.return_crit_edge39
    i32 1054, label %if.end4.return_crit_edge40
    i32 1055, label %if.end4.return_crit_edge41
    i32 1056, label %if.end4.return_crit_edge42
    i32 1057, label %if.end4.return_crit_edge43
    i32 1058, label %if.end4.return_crit_edge44
    i32 1059, label %if.end4.return_crit_edge45
    i32 1060, label %if.end4.return_crit_edge46
    i32 1061, label %if.end4.return_crit_edge47
    i32 1062, label %if.end4.return_crit_edge48
    i32 1063, label %if.end4.return_crit_edge49
    i32 1064, label %if.end4.return_crit_edge50
    i32 1065, label %if.end4.return_crit_edge51
    i32 1066, label %if.end4.return_crit_edge52
    i32 1067, label %if.end4.return_crit_edge53
    i32 1068, label %if.end4.return_crit_edge54
    i32 1069, label %if.end4.return_crit_edge55
    i32 1070, label %if.end4.return_crit_edge56
    i32 1071, label %if.end4.return_crit_edge57
    i32 1072, label %if.end4.return_crit_edge58
    i32 1073, label %if.end4.return_crit_edge59
    i32 1074, label %if.end4.return_crit_edge60
    i32 1075, label %if.end4.return_crit_edge61
    i32 1076, label %if.end4.return_crit_edge62
    i32 1077, label %if.end4.return_crit_edge63
    i32 1078, label %if.end4.return_crit_edge64
    i32 1079, label %if.end4.return_crit_edge65
    i32 1080, label %if.end4.return_crit_edge66
    i32 1081, label %if.end4.return_crit_edge67
    i32 1082, label %if.end4.return_crit_edge68
    i32 1083, label %if.end4.return_crit_edge69
    i32 1084, label %if.end4.return_crit_edge70
    i32 640, label %if.end4.return_crit_edge71
    i32 641, label %if.end4.return_crit_edge72
    i32 642, label %if.end4.return_crit_edge73
    i32 643, label %if.end4.return_crit_edge74
    i32 644, label %if.end4.return_crit_edge75
    i32 645, label %if.end4.return_crit_edge76
    i32 646, label %if.end4.return_crit_edge77
    i32 647, label %if.end4.return_crit_edge78
    i32 648, label %if.end4.return_crit_edge79
    i32 649, label %if.end4.return_crit_edge80
    i32 650, label %if.end4.return_crit_edge81
    i32 651, label %if.end4.return_crit_edge82
    i32 652, label %if.end4.return_crit_edge83
    i32 653, label %if.end4.return_crit_edge84
    i32 654, label %if.end4.return_crit_edge85
    i32 655, label %if.end4.return_crit_edge86
    i32 656, label %if.end4.return_crit_edge87
    i32 657, label %if.end4.return_crit_edge88
    i32 658, label %if.end4.return_crit_edge89
    i32 659, label %if.end4.return_crit_edge90
    i32 660, label %if.end4.return_crit_edge91
    i32 661, label %if.end4.return_crit_edge92
    i32 662, label %if.end4.return_crit_edge93
    i32 663, label %if.end4.return_crit_edge94
    i32 664, label %if.end4.return_crit_edge95
    i32 665, label %if.end4.return_crit_edge96
    i32 666, label %if.end4.return_crit_edge97
    i32 667, label %if.end4.return_crit_edge98
    i32 668, label %if.end4.return_crit_edge99
    i32 669, label %if.end4.return_crit_edge100
    i32 670, label %if.end4.return_crit_edge101
    i32 671, label %if.end4.return_crit_edge102
    i32 672, label %if.end4.return_crit_edge103
    i32 673, label %if.end4.return_crit_edge104
    i32 674, label %if.end4.return_crit_edge105
    i32 675, label %if.end4.return_crit_edge106
    i32 676, label %if.end4.return_crit_edge107
    i32 677, label %if.end4.return_crit_edge108
    i32 678, label %if.end4.return_crit_edge109
    i32 679, label %if.end4.return_crit_edge110
    i32 680, label %if.end4.return_crit_edge111
    i32 4, label %if.end4.return_crit_edge112
    i32 5, label %if.end4.return_crit_edge113
    i32 6, label %if.end4.return_crit_edge114
    i32 7, label %if.end4.return_crit_edge115
    i32 8, label %if.end4.return_crit_edge116
    i32 9, label %if.end4.return_crit_edge117
    i32 10, label %if.end4.return_crit_edge118
    i32 11, label %if.end4.return_crit_edge119
    i32 12, label %if.end4.return_crit_edge120
    i32 13, label %if.end4.return_crit_edge121
    i32 14, label %if.end4.return_crit_edge122
    i32 15, label %if.end4.return_crit_edge123
    i32 16, label %if.end4.return_crit_edge124
    i32 17, label %if.end4.return_crit_edge125
    i32 18, label %if.end4.return_crit_edge126
    i32 19, label %if.end4.return_crit_edge127
    i32 20, label %if.end4.return_crit_edge128
    i32 21, label %if.end4.return_crit_edge129
    i32 22, label %if.end4.return_crit_edge130
    i32 23, label %if.end4.return_crit_edge131
    i32 24, label %if.end4.return_crit_edge132
    i32 25, label %if.end4.return_crit_edge133
    i32 26, label %if.end4.return_crit_edge134
    i32 27, label %if.end4.return_crit_edge135
    i32 28, label %if.end4.return_crit_edge136
    i32 29, label %if.end4.return_crit_edge137
    i32 30, label %if.end4.return_crit_edge138
    i32 31, label %if.end4.return_crit_edge139
    i32 32, label %if.end4.return_crit_edge140
    i32 33, label %if.end4.return_crit_edge141
    i32 34, label %if.end4.return_crit_edge142
    i32 35, label %if.end4.return_crit_edge143
    i32 36, label %if.end4.return_crit_edge144
    i32 37, label %if.end4.return_crit_edge145
    i32 38, label %if.end4.return_crit_edge146
    i32 39, label %if.end4.return_crit_edge147
    i32 40, label %if.end4.return_crit_edge148
    i32 41, label %if.end4.return_crit_edge149
    i32 42, label %if.end4.return_crit_edge150
    i32 43, label %if.end4.return_crit_edge151
    i32 44, label %if.end4.return_crit_edge152
    i32 45, label %if.end4.return_crit_edge153
    i32 46, label %if.end4.return_crit_edge154
    i32 47, label %if.end4.return_crit_edge155
    i32 48, label %if.end4.return_crit_edge156
  ]

if.end4.return_crit_edge156:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge155:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge154:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge153:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge152:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge151:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge150:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge149:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge148:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge147:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge146:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge145:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge144:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge143:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge142:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge141:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge140:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge139:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge138:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge137:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge136:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge135:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge134:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge133:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge132:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge131:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge130:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge129:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge128:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge127:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge126:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge125:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge124:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge123:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge122:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge121:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge120:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge119:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge118:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge117:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge116:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge115:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge114:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge113:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge112:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge111:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge110:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge109:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge108:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge107:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge106:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge105:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge104:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge103:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge102:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge101:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge100:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge99:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge98:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge97:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge96:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge95:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge94:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge93:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge92:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge91:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge90:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge89:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge88:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge87:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge86:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge85:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge84:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge83:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge82:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge81:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge80:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge79:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge78:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge77:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge76:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge75:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge74:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge73:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge72:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge71:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge70:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge69:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge68:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge67:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge66:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge65:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge64:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge63:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge62:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge61:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge60:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge59:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge58:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge57:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge56:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge55:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge54:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge53:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge52:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge51:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge50:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge49:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge48:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge47:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge46:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge45:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge44:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge43:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge42:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge41:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge40:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge39:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge38:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge37:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge36:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge35:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge34:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge33:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge32:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge31:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge30:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge29:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge28:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge27:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge26:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge25:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge24:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge23:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge22:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge21:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge20:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge19:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge18:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge17:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge16:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge15:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge14:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge13:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge12:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge11:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %if.end4.return_crit_edge, %if.end4.return_crit_edge11, %if.end4.return_crit_edge12, %if.end4.return_crit_edge13, %if.end4.return_crit_edge14, %if.end4.return_crit_edge15, %if.end4.return_crit_edge16, %if.end4.return_crit_edge17, %if.end4.return_crit_edge18, %if.end4.return_crit_edge19, %if.end4.return_crit_edge20, %if.end4.return_crit_edge21, %if.end4.return_crit_edge22, %if.end4.return_crit_edge23, %if.end4.return_crit_edge24, %if.end4.return_crit_edge25, %if.end4.return_crit_edge26, %if.end4.return_crit_edge27, %if.end4.return_crit_edge28, %if.end4.return_crit_edge29, %if.end4.return_crit_edge30, %if.end4.return_crit_edge31, %if.end4.return_crit_edge32, %if.end4.return_crit_edge33, %if.end4.return_crit_edge34, %if.end4.return_crit_edge35, %if.end4.return_crit_edge36, %if.end4.return_crit_edge37, %if.end4.return_crit_edge38, %if.end4.return_crit_edge39, %if.end4.return_crit_edge40, %if.end4.return_crit_edge41, %if.end4.return_crit_edge42, %if.end4.return_crit_edge43, %if.end4.return_crit_edge44, %if.end4.return_crit_edge45, %if.end4.return_crit_edge46, %if.end4.return_crit_edge47, %if.end4.return_crit_edge48, %if.end4.return_crit_edge49, %if.end4.return_crit_edge50, %if.end4.return_crit_edge51, %if.end4.return_crit_edge52, %if.end4.return_crit_edge53, %if.end4.return_crit_edge54, %if.end4.return_crit_edge55, %if.end4.return_crit_edge56, %if.end4.return_crit_edge57, %if.end4.return_crit_edge58, %if.end4.return_crit_edge59, %if.end4.return_crit_edge60, %if.end4.return_crit_edge61, %if.end4.return_crit_edge62, %if.end4.return_crit_edge63, %if.end4.return_crit_edge64, %if.end4.return_crit_edge65, %if.end4.return_crit_edge66, %if.end4.return_crit_edge67, %if.end4.return_crit_edge68, %if.end4.return_crit_edge69, %if.end4.return_crit_edge70, %if.end4.return_crit_edge71, %if.end4.return_crit_edge72, %if.end4.return_crit_edge73, %if.end4.return_crit_edge74, %if.end4.return_crit_edge75, %if.end4.return_crit_edge76, %if.end4.return_crit_edge77, %if.end4.return_crit_edge78, %if.end4.return_crit_edge79, %if.end4.return_crit_edge80, %if.end4.return_crit_edge81, %if.end4.return_crit_edge82, %if.end4.return_crit_edge83, %if.end4.return_crit_edge84, %if.end4.return_crit_edge85, %if.end4.return_crit_edge86, %if.end4.return_crit_edge87, %if.end4.return_crit_edge88, %if.end4.return_crit_edge89, %if.end4.return_crit_edge90, %if.end4.return_crit_edge91, %if.end4.return_crit_edge92, %if.end4.return_crit_edge93, %if.end4.return_crit_edge94, %if.end4.return_crit_edge95, %if.end4.return_crit_edge96, %if.end4.return_crit_edge97, %if.end4.return_crit_edge98, %if.end4.return_crit_edge99, %if.end4.return_crit_edge100, %if.end4.return_crit_edge101, %if.end4.return_crit_edge102, %if.end4.return_crit_edge103, %if.end4.return_crit_edge104, %if.end4.return_crit_edge105, %if.end4.return_crit_edge106, %if.end4.return_crit_edge107, %if.end4.return_crit_edge108, %if.end4.return_crit_edge109, %if.end4.return_crit_edge110, %if.end4.return_crit_edge111, %if.end4.return_crit_edge112, %if.end4.return_crit_edge113, %if.end4.return_crit_edge114, %if.end4.return_crit_edge115, %if.end4.return_crit_edge116, %if.end4.return_crit_edge117, %if.end4.return_crit_edge118, %if.end4.return_crit_edge119, %if.end4.return_crit_edge120, %if.end4.return_crit_edge121, %if.end4.return_crit_edge122, %if.end4.return_crit_edge123, %if.end4.return_crit_edge124, %if.end4.return_crit_edge125, %if.end4.return_crit_edge126, %if.end4.return_crit_edge127, %if.end4.return_crit_edge128, %if.end4.return_crit_edge129, %if.end4.return_crit_edge130, %if.end4.return_crit_edge131, %if.end4.return_crit_edge132, %if.end4.return_crit_edge133, %if.end4.return_crit_edge134, %if.end4.return_crit_edge135, %if.end4.return_crit_edge136, %if.end4.return_crit_edge137, %if.end4.return_crit_edge138, %if.end4.return_crit_edge139, %if.end4.return_crit_edge140, %if.end4.return_crit_edge141, %if.end4.return_crit_edge142, %if.end4.return_crit_edge143, %if.end4.return_crit_edge144, %if.end4.return_crit_edge145, %if.end4.return_crit_edge146, %if.end4.return_crit_edge147, %if.end4.return_crit_edge148, %if.end4.return_crit_edge149, %if.end4.return_crit_edge150, %if.end4.return_crit_edge151, %if.end4.return_crit_edge152, %if.end4.return_crit_edge153, %if.end4.return_crit_edge154, %if.end4.return_crit_edge155, %if.end4.return_crit_edge156
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %if.end4.return_crit_edge ], [ true, %if.end4.return_crit_edge11 ], [ true, %if.end4.return_crit_edge12 ], [ true, %if.end4.return_crit_edge13 ], [ true, %if.end4.return_crit_edge14 ], [ true, %if.end4.return_crit_edge15 ], [ true, %if.end4.return_crit_edge16 ], [ true, %if.end4.return_crit_edge17 ], [ true, %if.end4.return_crit_edge18 ], [ true, %if.end4.return_crit_edge19 ], [ true, %if.end4.return_crit_edge20 ], [ true, %if.end4.return_crit_edge21 ], [ true, %if.end4.return_crit_edge22 ], [ true, %if.end4.return_crit_edge23 ], [ true, %if.end4.return_crit_edge24 ], [ true, %if.end4.return_crit_edge25 ], [ true, %if.end4.return_crit_edge26 ], [ true, %if.end4.return_crit_edge27 ], [ true, %if.end4.return_crit_edge28 ], [ true, %if.end4.return_crit_edge29 ], [ true, %if.end4.return_crit_edge30 ], [ true, %if.end4.return_crit_edge31 ], [ true, %if.end4.return_crit_edge32 ], [ true, %if.end4.return_crit_edge33 ], [ true, %if.end4.return_crit_edge34 ], [ true, %if.end4.return_crit_edge35 ], [ true, %if.end4.return_crit_edge36 ], [ true, %if.end4.return_crit_edge37 ], [ true, %if.end4.return_crit_edge38 ], [ true, %if.end4.return_crit_edge39 ], [ true, %if.end4.return_crit_edge40 ], [ true, %if.end4.return_crit_edge41 ], [ true, %if.end4.return_crit_edge42 ], [ true, %if.end4.return_crit_edge43 ], [ true, %if.end4.return_crit_edge44 ], [ true, %if.end4.return_crit_edge45 ], [ true, %if.end4.return_crit_edge46 ], [ true, %if.end4.return_crit_edge47 ], [ true, %if.end4.return_crit_edge48 ], [ true, %if.end4.return_crit_edge49 ], [ true, %if.end4.return_crit_edge50 ], [ true, %if.end4.return_crit_edge51 ], [ true, %if.end4.return_crit_edge52 ], [ true, %if.end4.return_crit_edge53 ], [ true, %if.end4.return_crit_edge54 ], [ true, %if.end4.return_crit_edge55 ], [ true, %if.end4.return_crit_edge56 ], [ true, %if.end4.return_crit_edge57 ], [ true, %if.end4.return_crit_edge58 ], [ true, %if.end4.return_crit_edge59 ], [ true, %if.end4.return_crit_edge60 ], [ true, %if.end4.return_crit_edge61 ], [ true, %if.end4.return_crit_edge62 ], [ true, %if.end4.return_crit_edge63 ], [ true, %if.end4.return_crit_edge64 ], [ true, %if.end4.return_crit_edge65 ], [ true, %if.end4.return_crit_edge66 ], [ true, %if.end4.return_crit_edge67 ], [ true, %if.end4.return_crit_edge68 ], [ true, %if.end4.return_crit_edge69 ], [ true, %if.end4.return_crit_edge70 ], [ true, %if.end4.return_crit_edge71 ], [ true, %if.end4.return_crit_edge72 ], [ true, %if.end4.return_crit_edge73 ], [ true, %if.end4.return_crit_edge74 ], [ true, %if.end4.return_crit_edge75 ], [ true, %if.end4.return_crit_edge76 ], [ true, %if.end4.return_crit_edge77 ], [ true, %if.end4.return_crit_edge78 ], [ true, %if.end4.return_crit_edge79 ], [ true, %if.end4.return_crit_edge80 ], [ true, %if.end4.return_crit_edge81 ], [ true, %if.end4.return_crit_edge82 ], [ true, %if.end4.return_crit_edge83 ], [ true, %if.end4.return_crit_edge84 ], [ true, %if.end4.return_crit_edge85 ], [ true, %if.end4.return_crit_edge86 ], [ true, %if.end4.return_crit_edge87 ], [ true, %if.end4.return_crit_edge88 ], [ true, %if.end4.return_crit_edge89 ], [ true, %if.end4.return_crit_edge90 ], [ true, %if.end4.return_crit_edge91 ], [ true, %if.end4.return_crit_edge92 ], [ true, %if.end4.return_crit_edge93 ], [ true, %if.end4.return_crit_edge94 ], [ true, %if.end4.return_crit_edge95 ], [ true, %if.end4.return_crit_edge96 ], [ true, %if.end4.return_crit_edge97 ], [ true, %if.end4.return_crit_edge98 ], [ true, %if.end4.return_crit_edge99 ], [ true, %if.end4.return_crit_edge100 ], [ true, %if.end4.return_crit_edge101 ], [ true, %if.end4.return_crit_edge102 ], [ true, %if.end4.return_crit_edge103 ], [ true, %if.end4.return_crit_edge104 ], [ true, %if.end4.return_crit_edge105 ], [ true, %if.end4.return_crit_edge106 ], [ true, %if.end4.return_crit_edge107 ], [ true, %if.end4.return_crit_edge108 ], [ true, %if.end4.return_crit_edge109 ], [ true, %if.end4.return_crit_edge110 ], [ true, %if.end4.return_crit_edge111 ], [ true, %if.end4.return_crit_edge112 ], [ true, %if.end4.return_crit_edge113 ], [ true, %if.end4.return_crit_edge114 ], [ true, %if.end4.return_crit_edge115 ], [ true, %if.end4.return_crit_edge116 ], [ true, %if.end4.return_crit_edge117 ], [ true, %if.end4.return_crit_edge118 ], [ true, %if.end4.return_crit_edge119 ], [ true, %if.end4.return_crit_edge120 ], [ true, %if.end4.return_crit_edge121 ], [ true, %if.end4.return_crit_edge122 ], [ true, %if.end4.return_crit_edge123 ], [ true, %if.end4.return_crit_edge124 ], [ true, %if.end4.return_crit_edge125 ], [ true, %if.end4.return_crit_edge126 ], [ true, %if.end4.return_crit_edge127 ], [ true, %if.end4.return_crit_edge128 ], [ true, %if.end4.return_crit_edge129 ], [ true, %if.end4.return_crit_edge130 ], [ true, %if.end4.return_crit_edge131 ], [ true, %if.end4.return_crit_edge132 ], [ true, %if.end4.return_crit_edge133 ], [ true, %if.end4.return_crit_edge134 ], [ true, %if.end4.return_crit_edge135 ], [ true, %if.end4.return_crit_edge136 ], [ true, %if.end4.return_crit_edge137 ], [ true, %if.end4.return_crit_edge138 ], [ true, %if.end4.return_crit_edge139 ], [ true, %if.end4.return_crit_edge140 ], [ true, %if.end4.return_crit_edge141 ], [ true, %if.end4.return_crit_edge142 ], [ true, %if.end4.return_crit_edge143 ], [ true, %if.end4.return_crit_edge144 ], [ true, %if.end4.return_crit_edge145 ], [ true, %if.end4.return_crit_edge146 ], [ true, %if.end4.return_crit_edge147 ], [ true, %if.end4.return_crit_edge148 ], [ true, %if.end4.return_crit_edge149 ], [ true, %if.end4.return_crit_edge150 ], [ true, %if.end4.return_crit_edge151 ], [ true, %if.end4.return_crit_edge152 ], [ true, %if.end4.return_crit_edge153 ], [ true, %if.end4.return_crit_edge154 ], [ true, %if.end4.return_crit_edge155 ], [ true, %if.end4.return_crit_edge156 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mixer_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %reg)
  %cmp = icmp ult i32 %reg, 640
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = and i32 %reg, 63
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 960, i32 %reg)
  %cmp1 = icmp ult i32 %reg, 960
  br i1 %cmp1, label %if.then2, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %rem3 = and i32 %reg, 63
  %add = or i32 %rem3, 640
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.else.if.end4_crit_edge, %if.then
  %reg.addr.0 = phi i32 [ %rem, %if.then ], [ %add, %if.then2 ], [ %reg, %if.else.if.end4_crit_edge ]
  %0 = zext i32 %reg.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %reg.addr.0, label %sw.default [
    i32 4, label %if.end4.return_crit_edge
    i32 16, label %if.end4.return_crit_edge9
    i32 644, label %if.end4.return_crit_edge10
    i32 656, label %if.end4.return_crit_edge11
    i32 660, label %if.end4.return_crit_edge12
    i32 668, label %if.end4.return_crit_edge13
    i32 1028, label %if.end4.return_crit_edge14
    i32 1040, label %if.end4.return_crit_edge15
    i32 1044, label %if.end4.return_crit_edge16
    i32 1068, label %if.end4.return_crit_edge17
    i32 1072, label %if.end4.return_crit_edge18
    i32 1076, label %if.end4.return_crit_edge19
    i32 1080, label %if.end4.return_crit_edge20
  ]

if.end4.return_crit_edge20:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge19:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge18:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge17:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge16:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge15:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge14:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge13:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge12:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge11:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge10:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge9:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %if.end4.return_crit_edge, %if.end4.return_crit_edge9, %if.end4.return_crit_edge10, %if.end4.return_crit_edge11, %if.end4.return_crit_edge12, %if.end4.return_crit_edge13, %if.end4.return_crit_edge14, %if.end4.return_crit_edge15, %if.end4.return_crit_edge16, %if.end4.return_crit_edge17, %if.end4.return_crit_edge18, %if.end4.return_crit_edge19, %if.end4.return_crit_edge20
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %if.end4.return_crit_edge ], [ true, %if.end4.return_crit_edge9 ], [ true, %if.end4.return_crit_edge10 ], [ true, %if.end4.return_crit_edge11 ], [ true, %if.end4.return_crit_edge12 ], [ true, %if.end4.return_crit_edge13 ], [ true, %if.end4.return_crit_edge14 ], [ true, %if.end4.return_crit_edge15 ], [ true, %if.end4.return_crit_edge16 ], [ true, %if.end4.return_crit_edge17 ], [ true, %if.end4.return_crit_edge18 ], [ true, %if.end4.return_crit_edge19 ], [ true, %if.end4.return_crit_edge20 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tegra210_mixer_precious_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -1072
  %switch.and = and i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_mixer_get_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %reg2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2, align 4
  %div5 = lshr i32 %10, 4
  %arrayidx = getelementptr [10 x i32], ptr %8, i32 0, i32 %div5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_put_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %reg2.i = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2.i, align 4
  %div25.i = lshr i32 %10, 4
  %arrayidx.i = getelementptr [10 x i32], ptr %8, i32 0, i32 %div25.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %entry.tegra210_mixer_apply_gain.exit_crit_edge, label %if.end.i

entry.tegra210_mixer_apply_gain.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_apply_gain.exit

if.end.i:                                         ; preds = %entry
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.i, align 4
  %call8.i = tail call fastcc i32 @tegra210_mixer_configure_gain(ptr noundef %4, i32 noundef %div25.i, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge, label %do.end.i

if.end.i.tegra210_mixer_apply_gain.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_apply_gain.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #11
  br label %tegra210_mixer_apply_gain.exit

tegra210_mixer_apply_gain.exit:                   ; preds = %do.end.i, %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge, %entry.tegra210_mixer_apply_gain.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %do.end.i ], [ 0, %entry.tegra210_mixer_apply_gain.exit_crit_edge ], [ 1, %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_put_instant_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %reg2.i = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %reg2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2.i, align 4
  %div25.i = lshr i32 %10, 4
  %arrayidx.i = getelementptr [10 x i32], ptr %8, i32 0, i32 %div25.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %value.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp.i = icmp eq i32 %12, %14
  br i1 %cmp.i, label %entry.tegra210_mixer_apply_gain.exit_crit_edge, label %if.end.i

entry.tegra210_mixer_apply_gain.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_apply_gain.exit

if.end.i:                                         ; preds = %entry
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.i, align 4
  %call8.i = tail call fastcc i32 @tegra210_mixer_configure_gain(ptr noundef %4, i32 noundef %div25.i, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge, label %do.end.i

if.end.i.tegra210_mixer_apply_gain.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_apply_gain.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.49) #11
  br label %tegra210_mixer_apply_gain.exit

tegra210_mixer_apply_gain.exit:                   ; preds = %do.end.i, %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge, %entry.tegra210_mixer_apply_gain.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %do.end.i ], [ 0, %entry.tegra210_mixer_apply_gain.exit_crit_edge ], [ 1, %if.end.i.tegra210_mixer_apply_gain.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_mixer_configure_gain(ptr nocapture noundef readonly %cmpnt, i32 noundef %id, i1 noundef zeroext %instant_gain) unnamed_addr #2 align 64 {
entry:
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
  %mul = shl i32 %id, 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #8
  %call3 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %mul, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %entry.rpm_put_crit_edge, label %for.cond

entry.rpm_put_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond:                                         ; preds = %entry
  %add2.1 = or i32 %mul, 1
  %call3.1 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.cond.rpm_put_crit_edge, label %for.cond.1

for.cond.rpm_put_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.1:                                       ; preds = %for.cond
  %add2.2 = or i32 %mul, 2
  %call3.2 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.cond.1.rpm_put_crit_edge, label %for.cond.2

for.cond.1.rpm_put_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.2:                                       ; preds = %for.cond.1
  %add2.3 = or i32 %mul, 3
  %call3.3 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.3, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %for.cond.2.rpm_put_crit_edge, label %for.cond.3

for.cond.2.rpm_put_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.3:                                       ; preds = %for.cond.2
  %add2.4 = or i32 %mul, 4
  %call3.4 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %for.cond.3.rpm_put_crit_edge, label %for.cond.4

for.cond.3.rpm_put_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.4:                                       ; preds = %for.cond.3
  %add2.5 = or i32 %mul, 5
  %call3.5 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp slt i32 %call3.5, 0
  br i1 %cmp4.5, label %for.cond.4.rpm_put_crit_edge, label %for.cond.5

for.cond.4.rpm_put_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.5:                                       ; preds = %for.cond.4
  %add2.6 = or i32 %mul, 6
  %call3.6 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.6, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp slt i32 %call3.6, 0
  br i1 %cmp4.6, label %for.cond.5.rpm_put_crit_edge, label %for.cond.6

for.cond.5.rpm_put_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.6:                                       ; preds = %for.cond.5
  %add2.7 = or i32 %mul, 7
  %call3.7 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.7, i32 noundef 16777216)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %cmp4.7 = icmp slt i32 %call3.7, 0
  br i1 %cmp4.7, label %for.cond.6.rpm_put_crit_edge, label %for.cond.7

for.cond.6.rpm_put_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.7:                                       ; preds = %for.cond.6
  %add2.8 = or i32 %mul, 8
  %call3.8 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add2.8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.8)
  %cmp4.8 = icmp slt i32 %call3.8, 0
  br i1 %cmp4.8, label %for.cond.7.rpm_put_crit_edge, label %for.cond.8

for.cond.7.rpm_put_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond.8:                                       ; preds = %for.cond.7
  %add5 = or i32 %mul, 9
  %arrayidx6 = getelementptr [10 x i32], ptr %3, i32 0, i32 %id
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add5, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %for.cond.8.rpm_put_crit_edge, label %for.cond11.preheader

for.cond.8.rpm_put_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond11.preheader:                             ; preds = %for.cond.8
  %add18 = or i32 %mul, 10
  br i1 %instant_gain, label %if.end16, label %if.end16.thread

if.end16.1.critedge:                              ; preds = %if.end16
  %add19.1 = or i32 %mul, 11
  %call20.1 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add19.1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %cmp21.1 = icmp slt i32 %call20.1, 0
  br i1 %cmp21.1, label %if.end16.1.critedge.rpm_put_crit_edge, label %if.end16.2.critedge

if.end16.1.critedge.rpm_put_crit_edge:            ; preds = %if.end16.1.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end16.1.thread:                                ; preds = %if.end16.thread
  %add19.167 = or i32 %mul, 11
  %call20.168 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add19.167, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.168)
  %cmp21.169 = icmp slt i32 %call20.168, 0
  br i1 %cmp21.169, label %if.end16.1.thread.rpm_put_crit_edge, label %if.end16.2.thread

if.end16.1.thread.rpm_put_crit_edge:              ; preds = %if.end16.1.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end16.2.critedge:                              ; preds = %if.end16.1.critedge
  %add19.2 = or i32 %mul, 12
  %call20.2 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add19.2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.2)
  %cmp21.2 = icmp slt i32 %call20.2, 0
  br i1 %cmp21.2, label %if.end16.2.critedge.rpm_put_crit_edge, label %if.end16.2.critedge.if.end16.3_crit_edge

if.end16.2.critedge.if.end16.3_crit_edge:         ; preds = %if.end16.2.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.3

if.end16.2.critedge.rpm_put_crit_edge:            ; preds = %if.end16.2.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end16.2.thread:                                ; preds = %if.end16.1.thread
  %add19.271 = or i32 %mul, 12
  %call20.272 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add19.271, i32 noundef 1024)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.272)
  %cmp21.273 = icmp slt i32 %call20.272, 0
  br i1 %cmp21.273, label %if.end16.2.thread.rpm_put_crit_edge, label %if.end16.2.thread.if.end16.3_crit_edge

if.end16.2.thread.if.end16.3_crit_edge:           ; preds = %if.end16.2.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.3

if.end16.2.thread.rpm_put_crit_edge:              ; preds = %if.end16.2.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end16.3:                                       ; preds = %if.end16.2.thread.if.end16.3_crit_edge, %if.end16.2.critedge.if.end16.3_crit_edge
  %val.0.3 = phi i32 [ 134217728, %if.end16.2.thread.if.end16.3_crit_edge ], [ 1, %if.end16.2.critedge.if.end16.3_crit_edge ]
  %add19.3 = or i32 %mul, 13
  %call20.3 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add19.3, i32 noundef %val.0.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.3)
  %cmp21.3 = icmp slt i32 %call20.3, 0
  br i1 %cmp21.3, label %if.end16.3.rpm_put_crit_edge, label %for.cond11.3

if.end16.3.rpm_put_crit_edge:                     ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

for.cond11.3:                                     ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #10
  %add27 = or i32 %mul, 15
  %call28 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add27, i32 noundef 1)
  br label %rpm_put

if.end16:                                         ; preds = %for.cond11.preheader
  %call20 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add18, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end16.rpm_put_crit_edge, label %if.end16.1.critedge

if.end16.rpm_put_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

if.end16.thread:                                  ; preds = %for.cond11.preheader
  %call2064 = tail call fastcc i32 @tegra210_mixer_write_ram(ptr noundef %3, i32 noundef %add18, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2064)
  %cmp2165 = icmp slt i32 %call2064, 0
  br i1 %cmp2165, label %if.end16.thread.rpm_put_crit_edge, label %if.end16.1.thread

if.end16.thread.rpm_put_crit_edge:                ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_put

rpm_put:                                          ; preds = %if.end16.thread.rpm_put_crit_edge, %if.end16.rpm_put_crit_edge, %for.cond11.3, %if.end16.3.rpm_put_crit_edge, %if.end16.2.thread.rpm_put_crit_edge, %if.end16.2.critedge.rpm_put_crit_edge, %if.end16.1.thread.rpm_put_crit_edge, %if.end16.1.critedge.rpm_put_crit_edge, %for.cond.8.rpm_put_crit_edge, %for.cond.7.rpm_put_crit_edge, %for.cond.6.rpm_put_crit_edge, %for.cond.5.rpm_put_crit_edge, %for.cond.4.rpm_put_crit_edge, %for.cond.3.rpm_put_crit_edge, %for.cond.2.rpm_put_crit_edge, %for.cond.1.rpm_put_crit_edge, %for.cond.rpm_put_crit_edge, %entry.rpm_put_crit_edge
  %err.0 = phi i32 [ %call7, %for.cond.8.rpm_put_crit_edge ], [ %call28, %for.cond11.3 ], [ %call20, %if.end16.rpm_put_crit_edge ], [ %call20.1, %if.end16.1.critedge.rpm_put_crit_edge ], [ %call20.2, %if.end16.2.critedge.rpm_put_crit_edge ], [ %call20.3, %if.end16.3.rpm_put_crit_edge ], [ %call2064, %if.end16.thread.rpm_put_crit_edge ], [ %call20.168, %if.end16.1.thread.rpm_put_crit_edge ], [ %call20.272, %if.end16.2.thread.rpm_put_crit_edge ], [ %call3, %entry.rpm_put_crit_edge ], [ %call3.1, %for.cond.rpm_put_crit_edge ], [ %call3.2, %for.cond.1.rpm_put_crit_edge ], [ %call3.3, %for.cond.2.rpm_put_crit_edge ], [ %call3.4, %for.cond.3.rpm_put_crit_edge ], [ %call3.5, %for.cond.4.rpm_put_crit_edge ], [ %call3.6, %for.cond.5.rpm_put_crit_edge ], [ %call3.7, %for.cond.6.rpm_put_crit_edge ], [ %call3.8, %for.cond.7.rpm_put_crit_edge ]
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i55 = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 5) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra210_mixer_write_ram(ptr nocapture noundef readonly %mixer, i32 noundef %addr, i32 noundef %coef) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !263
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 107) #8
  %regmap = getelementptr inbounds %struct.tegra210_mixer, ptr %mixer, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call871 = call i32 @regmap_read(ptr noundef %2, i32 noundef 1068, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call871)
  %tobool.not72 = icmp eq i32 %call871, 0
  br i1 %tobool.not72, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then21.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool9.not = icmp sgt i32 %4, -1
  br i1 %tobool9.not, label %lor.lhs.false.if.end31_crit_edge, label %land.lhs.true

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then21

if.then21:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1068, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then21.lor.lhs.false_crit_edge, label %if.then21.lor.end_crit_edge

if.then21.lor.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then21.lor.lhs.false_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %8, i32 noundef 1068, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool23.not = icmp eq i32 %call18, 0
  br i1 %tobool23.not, label %lor.rhs, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %for.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool25.not.inv = icmp slt i32 %.pr, 0
  br i1 %tobool25.not.inv, label %lor.rhs.cleanup_crit_edge, label %lor.rhs.if.end31_crit_edge

lor.rhs.if.end31_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then21.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool23.not58 = phi i32 [ %call18, %for.end.lor.end_crit_edge ], [ %call871, %entry.lor.end_crit_edge ], [ %call8, %if.then21.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool23.not58)
  %cmp29 = icmp slt i32 %tobool23.not58, 0
  br i1 %cmp29, label %lor.end.cleanup_crit_edge, label %lor.end.if.end31_crit_edge

lor.end.if.end31_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %lor.end.if.end31_crit_edge, %lor.rhs.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge
  %and32 = and i32 %addr, 511
  %or34 = or i32 %and32, 28672
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_write(ptr noundef %11, i32 noundef 1068, i32 noundef %or34) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call38 = call i32 @regmap_write(ptr noundef %13, i32 noundef 1072, i32 noundef %coef) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %tobool23.not58, %lor.end.cleanup_crit_edge ], [ -110, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_in_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i9.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.params_format.exit.i_crit_edge

entry.params_format.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.cleanup_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i.cleanup_crit_edge:                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %entry.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.params_format.exit.i_crit_edge ], [ %11, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !264
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  %13 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %add.i.i.i, label %params_format.exit.i.cleanup_crit_edge [
    i32 2, label %params_format.exit.i.if.end_crit_edge
    i32 10, label %sw.bb2.i
  ]

params_format.exit.i.if.end_crit_edge:            ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

params_format.exit.i.cleanup_crit_edge:           ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %sw.bb2.i, %params_format.exit.i.if.end_crit_edge
  %audio_bits.0.i = phi i32 [ 7, %sw.bb2.i ], [ 3, %params_format.exit.i.if.end_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.tegra210_mixer, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %mul.i = shl i32 %5, 6
  %add.i = or i32 %mul.i, 36
  %sub.i.i = shl i32 %7, 20
  %shl1.i.i = add i32 %sub.i.i, -1048576
  %sub2.i.i = shl i32 %7, 16
  %shl3.i.i = add i32 %sub2.i.i, -65536
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %shl5.i.i = shl nuw nsw i32 %audio_bits.0.i, 12
  %or6.i.i = or i32 %shl5.i.i, %or4.i.i
  %shl7.i.i = shl nuw nsw i32 %audio_bits.0.i, 8
  %or8.i.i = or i32 %or6.i.i, %shl7.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i, i32 noundef 1073741819, i32 noundef %or8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %16 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %component, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %call3 = tail call fastcc i32 @tegra210_mixer_configure_gain(ptr noundef %17, i32 noundef %19, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %params_format.exit.i.cleanup_crit_edge, %for.inc.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %params_format.exit.i.cleanup_crit_edge ], [ -22, %for.inc.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_out_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i9.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.params_format.exit.i_crit_edge

entry.params_format.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.tegra210_mixer_set_audio_cif.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit.i

for.inc.i.i.i.tegra210_mixer_set_audio_cif.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_set_audio_cif.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %entry.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.params_format.exit.i_crit_edge ], [ %11, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !264
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  %13 = zext i32 %add.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %add.i.i.i, label %params_format.exit.i.tegra210_mixer_set_audio_cif.exit_crit_edge [
    i32 2, label %params_format.exit.i.sw.epilog.i_crit_edge
    i32 10, label %sw.bb2.i
  ]

params_format.exit.i.sw.epilog.i_crit_edge:       ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

params_format.exit.i.tegra210_mixer_set_audio_cif.exit_crit_edge: ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra210_mixer_set_audio_cif.exit

sw.bb2.i:                                         ; preds = %params_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %params_format.exit.i.sw.epilog.i_crit_edge
  %audio_bits.0.i = phi i32 [ 7, %sw.bb2.i ], [ 3, %params_format.exit.i.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.tegra210_mixer, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %sub = shl i32 %5, 6
  %add.i = or i32 %sub, 36
  %sub.i.i = shl i32 %7, 20
  %shl1.i.i = add i32 %sub.i.i, -1048576
  %sub2.i.i = shl i32 %7, 16
  %shl3.i.i = add i32 %sub2.i.i, -65536
  %or4.i.i = or i32 %shl1.i.i, %shl3.i.i
  %shl5.i.i = shl nuw nsw i32 %audio_bits.0.i, 12
  %or6.i.i = or i32 %shl5.i.i, %or4.i.i
  %shl7.i.i = shl nuw nsw i32 %audio_bits.0.i, 8
  %or8.i.i = or i32 %or6.i.i, %shl7.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add.i, i32 noundef 1073741819, i32 noundef %or8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %tegra210_mixer_set_audio_cif.exit

tegra210_mixer_set_audio_cif.exit:                ; preds = %sw.epilog.i, %params_format.exit.i.tegra210_mixer_set_audio_cif.exit_crit_edge, %for.inc.i.i.i.tegra210_mixer_set_audio_cif.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %params_format.exit.i.tegra210_mixer_set_audio_cif.exit_crit_edge ], [ -22, %for.inc.i.i.i.tegra210_mixer_set_audio_cif.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_mixer_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_mixer, ptr %1, i32 0, i32 1
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
define internal i32 @tegra210_mixer_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.tegra210_mixer, ptr %1, i32 0, i32 1
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !132, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !185, !186, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252}
!llvm.module.flags = !{!254, !255, !256, !257, !258, !259, !260, !261}
!llvm.ident = !{!262}

!0 = !{ptr @__initcall__kmod_snd_soc_tegra210_mixer__239_682_tegra210_mixer_driver_init6, !1, !"__initcall__kmod_snd_soc_tegra210_mixer__239_682_tegra210_mixer_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 682, i32 1}
!2 = !{ptr @__exitcall_tegra210_mixer_driver_exit, !1, !"__exitcall_tegra210_mixer_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author240, !4, !"__UNIQUE_ID_author240", i1 false, i1 false}
!4 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 684, i32 1}
!5 = !{ptr @__UNIQUE_ID_description241, !6, !"__UNIQUE_ID_description241", i1 false, i1 false}
!6 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 685, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 686, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 675, i32 11}
!12 = !{ptr @tegra210_mixer_driver, !13, !"tegra210_mixer_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 673, i32 31}
!14 = !{ptr @tegra210_mixer_platform_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 637, i32 18}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 640, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra210_mixer_platform_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra210_mixer_platform_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 650, i32 3}
!27 = !{ptr @tegra210_mixer_platform_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra210_mixer_platform_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = distinct !{null, !30, !"gain_params", i1 false, i1 false}
!30 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 68, i32 48}
!31 = !{ptr @tegra210_mixer_regmap_config, !32, !"tegra210_mixer_regmap_config", i1 false, i1 false}
!32 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 596, i32 35}
!33 = !{ptr @tegra210_mixer_reg_defaults, !34, !"tegra210_mixer_reg_defaults", i1 false, i1 false}
!34 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 42, i32 33}
!35 = !{ptr @tegra210_mixer_cmpnt, !36, !"tegra210_mixer_cmpnt", i1 false, i1 false}
!36 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 503, i32 46}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 407, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 408, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 409, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 410, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 411, i32 2}
!51 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 412, i32 2}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 413, i32 2}
!57 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.37, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 414, i32 2}
!60 = !{ptr @.str.39, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 415, i32 2}
!63 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.45, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 416, i32 2}
!66 = !{ptr @.str.47, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tegra210_mixer_gain_ctls, !68, !"tegra210_mixer_gain_ctls", i1 false, i1 false}
!68 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 406, i32 38}
!69 = !{ptr @.str.49, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 217, i32 3}
!71 = !{ptr @.str.50, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tegra210_mixer_apply_gain._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra210_mixer_apply_gain._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 420, i32 2}
!76 = !{ptr @.str.52, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 421, i32 2}
!78 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 422, i32 2}
!80 = !{ptr @.str.54, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 423, i32 2}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 424, i32 2}
!84 = !{ptr @.str.56, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 425, i32 2}
!86 = !{ptr @.str.57, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 426, i32 2}
!88 = !{ptr @.str.58, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 427, i32 2}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 428, i32 2}
!92 = !{ptr @.str.60, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 429, i32 2}
!94 = !{ptr @.str.61, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 430, i32 2}
!96 = !{ptr @.str.62, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 431, i32 2}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 432, i32 2}
!100 = !{ptr @.str.64, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 433, i32 2}
!102 = !{ptr @.str.65, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 434, i32 2}
!104 = !{ptr @.str.66, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 435, i32 2}
!106 = !{ptr @.str.67, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 437, i32 2}
!108 = !{ptr @.str.68, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 439, i32 2}
!110 = !{ptr @.str.69, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 441, i32 2}
!112 = !{ptr @.str.70, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 443, i32 2}
!114 = !{ptr @tegra210_mixer_widgets, !115, !"tegra210_mixer_widgets", i1 false, i1 false}
!115 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 419, i32 41}
!116 = !{ptr @adder1, !117, !"adder1", i1 false, i1 false}
!117 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 389, i32 1}
!118 = !{ptr @adder2, !119, !"adder2", i1 false, i1 false}
!119 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 390, i32 1}
!120 = !{ptr @adder3, !121, !"adder3", i1 false, i1 false}
!121 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 391, i32 1}
!122 = !{ptr @adder4, !123, !"adder4", i1 false, i1 false}
!123 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 392, i32 1}
!124 = !{ptr @adder5, !125, !"adder5", i1 false, i1 false}
!125 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 393, i32 1}
!126 = !{ptr @.str.122, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 485, i32 2}
!128 = !{ptr @.str.123, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.124, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.125, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.126, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.127, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 486, i32 2}
!134 = !{ptr @.str.128, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.129, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.130, !133, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.131, !133, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.132, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 487, i32 2}
!140 = !{ptr @.str.133, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.134, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.135, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.136, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.137, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 488, i32 2}
!146 = !{ptr @.str.138, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.139, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.140, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.141, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.142, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 489, i32 2}
!152 = !{ptr @.str.143, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.144, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.145, !151, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.146, !151, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.147, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 490, i32 2}
!158 = !{ptr @.str.148, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.149, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.150, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.151, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.152, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 491, i32 2}
!164 = !{ptr @.str.153, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.154, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.155, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.156, !163, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.157, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 492, i32 2}
!170 = !{ptr @.str.158, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.159, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.160, !169, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.161, !169, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.162, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 493, i32 2}
!176 = !{ptr @.str.163, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.164, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.165, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.166, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.167, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 494, i32 2}
!182 = !{ptr @.str.168, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.169, !181, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.170, !181, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.171, !181, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.172, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 496, i32 2}
!188 = !{ptr @.str.173, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.174, !187, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @.str.175, !187, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.176, !187, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.177, !187, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.178, !187, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.179, !187, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.180, !187, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.181, !187, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.182, !187, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.183, !187, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.184, !187, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.185, !187, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.186, !187, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.187, !187, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.188, !187, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.189, !187, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.190, !187, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.191, !187, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.192, !187, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.193, !187, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.194, !187, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.195, !187, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.196, !187, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @tegra210_mixer_routes, !213, !"tegra210_mixer_routes", i1 false, i1 false}
!213 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 483, i32 40}
!214 = !{ptr @.str.197, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 356, i32 2}
!216 = !{ptr @.str.198, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 357, i32 2}
!218 = !{ptr @.str.199, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 358, i32 2}
!220 = !{ptr @.str.200, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 359, i32 2}
!222 = !{ptr @.str.201, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 360, i32 2}
!224 = !{ptr @.str.202, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 361, i32 2}
!226 = !{ptr @.str.203, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 362, i32 2}
!228 = !{ptr @.str.204, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 363, i32 2}
!230 = !{ptr @.str.205, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 364, i32 2}
!232 = !{ptr @.str.206, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 365, i32 2}
!234 = !{ptr @.str.207, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 368, i32 2}
!236 = !{ptr @.str.208, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 369, i32 2}
!238 = !{ptr @.str.209, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 370, i32 2}
!240 = !{ptr @.str.210, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 371, i32 2}
!242 = !{ptr @.str.211, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 372, i32 2}
!244 = !{ptr @tegra210_mixer_dais, !245, !"tegra210_mixer_dais", i1 false, i1 false}
!245 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 354, i32 34}
!246 = !{ptr @tegra210_mixer_in_dai_ops, !247, !"tegra210_mixer_in_dai_ops", i1 false, i1 false}
!247 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 302, i32 37}
!248 = !{ptr @tegra210_mixer_out_dai_ops, !249, !"tegra210_mixer_out_dai_ops", i1 false, i1 false}
!249 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 298, i32 37}
!250 = !{ptr @tegra210_mixer_of_match, !251, !"tegra210_mixer_of_match", i1 false, i1 false}
!251 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 610, i32 34}
!252 = !{ptr @tegra210_mixer_pm_ops, !253, !"tegra210_mixer_pm_ops", i1 false, i1 false}
!253 = !{!"../sound/soc/tegra/tegra210_mixer.c", i32 666, i32 32}
!254 = !{i32 1, !"wchar_size", i32 2}
!255 = !{i32 1, !"min_enum_size", i32 4}
!256 = !{i32 8, !"branch-target-enforcement", i32 0}
!257 = !{i32 8, !"sign-return-address", i32 0}
!258 = !{i32 8, !"sign-return-address-all", i32 0}
!259 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!260 = !{i32 7, !"uwtable", i32 1}
!261 = !{i32 7, !"frame-pointer", i32 2}
!262 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!263 = !{!"auto-init"}
!264 = !{i32 0, i32 33}
